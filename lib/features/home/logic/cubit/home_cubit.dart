import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../data/models/five_days_forecast_response.dart';
import '../../data/repos/five_days_forecast_data_repo.dart';
import '../../../../core/helpers/location_helper.dart';
import '../../data/repos/current_weather_data_repo.dart';
import '../../../../core/networking/api_constants.dart';
import '../../data/models/current_weather_data_request.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CurrentWeatherDataRepo _currentWeatherDataRepo;
  final FiveDaysForecastDataRepo _fiveDaysForecastDataRepo;

  HomeCubit(this._currentWeatherDataRepo, this._fiveDaysForecastDataRepo)
      : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  String? cityName;
  Position? currentLocation;
  List<FivdeDaysForecastListItem> forecastData = [];

  Future<void> getWeatherData() async {
    await _fetchCurrentWeather();
    await _fetchFiveDaysForecast();
  }

  Future<void> _fetchCurrentWeather() async {
    emit(const HomeState.currentWeatherDataloading());

    await _fetchLocationAndCity();

    final result = await _currentWeatherDataRepo.getCurrentWeatherData(
      CurrentWeatherDataRequest(
        lat: currentLocation!.latitude,
        lon: currentLocation!.longitude,
        appId: ApiConstants.apiKey,
      ),
    );

    result.when(
      success: (response) {
        emit(HomeState.currentWeatherDataSuccess(
          currentWeatherDataResponse: response,
        ));
      },
      failure: (failure) {
        emit(HomeState.currentWeatherDataError(failure));
      },
    );
  }

  Future<void> _fetchLocationAndCity() async {
    currentLocation = await LocationHelper.getCurrentLocation();
    cityName = await LocationHelper.getCurrentCity(currentLocation);
  }

  Future<void> _fetchFiveDaysForecast() async {
    emit(const HomeState.fiveDaysForecastDataLoading());

    final result = await _fiveDaysForecastDataRepo.getFiveDaysForecastData(
      CurrentWeatherDataRequest(
        lat: currentLocation!.latitude,
        lon: currentLocation!.longitude,
        appId: ApiConstants.apiKey,
      ),
    );

    result.when(
      success: (response) async {
        forecastData = response;
        final filteredList = await _filterForecastDataForDay(0);
        emit(HomeState.fiveDaysForecastDataSuccess(
          fiveDaysForecastList: filteredList,
        ));
      },
      failure: (failure) {
        emit(HomeState.fiveDaysForecastDataError(failure));
      },
    );
  }

  Future<List<FivdeDaysForecastListItem>> _filterForecastDataForDay(
    int index,
  ) async {
    final filteredForecastData = await _groupForecastDataByDate();
    return filteredForecastData.isNotEmpty ? filteredForecastData[index] : [];
  }

  Future<List<List<FivdeDaysForecastListItem>>>
      _groupForecastDataByDate() async {
    if (forecastData.isEmpty) return [];

    final groupedData = <DateTime, List<FivdeDaysForecastListItem>>{};

    for (var data in forecastData) {
      final dateTime = DateTime.parse(data.date!);
      final date = DateTime(dateTime.year, dateTime.month, dateTime.day);
      final formattedTime = _formatTime(dateTime);

      groupedData.putIfAbsent(date, () => []).add(
            FivdeDaysForecastListItem(
              date: formattedTime,
              main: data.main,
            ),
          );
    }

    return groupedData.values.toList();
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour;
    final hourFormatted = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    final amPm = hour < 12 ? 'am' : 'pm';
    return '$hourFormatted $amPm';
  }

  void updateIndex(int index) async {
    final filteredList = await _filterForecastDataForDay(index);
    emit(HomeState.fiveDaysForecastDataSuccess(
      fiveDaysForecastList: filteredList,
    ));
  }
}
