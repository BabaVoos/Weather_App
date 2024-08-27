import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/helpers/location_helper.dart';
import '../../data/repos/current_weather_data_repo.dart';
import '../../../../core/networking/api_constants.dart';
import '../../data/models/current_weather_data_request.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final CurrentWeatherDataRepo _currentWeatherDataRepo;

  HomeCubit(this._currentWeatherDataRepo) : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  String? cityName;
  Position? currentLocation;

  Future<void> getCurrentWeatherData() async {
    emit(const HomeState.currentWeatherDataloading());
    await getCurrentLocationAndCity();
    final result = await _currentWeatherDataRepo.getCurrentWeatherData(
      CurrentWeatherDataRequest(
        lat: currentLocation!.latitude,
        lon: currentLocation!.longitude,
        appId: ApiConstants.apiKey,
      ),
    );
    result.when(
      success: (currentWeatherDataResponse) {
        emit(
          HomeState.currentWeatherDataSuccess(
            currentWeatherDataResponse: currentWeatherDataResponse,
          ),
        );
      },
      failure: (failure) {
        emit(HomeState.currentWeatherDataError(failure));
      },
    );
  }

  Future<void> getCurrentLocationAndCity() async {
    currentLocation = await LocationHelper.getCurrentLocation();
    cityName = await LocationHelper.getCurrentCity(currentLocation);
  }
}
