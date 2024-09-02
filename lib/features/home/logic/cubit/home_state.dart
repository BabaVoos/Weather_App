import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/current_weather_data_response.dart';
import '../../data/models/five_days_forecast_response.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.currentWeatherDataloading() = CurrentWeatherDataloading;
  const factory HomeState.currentWeatherDataSuccess({CurrentWeatherDataResponse? currentWeatherDataResponse}) = CurrentWeatherDataSuccess<T>;
  const factory HomeState.currentWeatherDataError(ApiErrorModel apiErrorModel) = CurrentWeatherDataError;

  const factory HomeState.fiveDaysForecastDataLoading() = FiveDaysForecastDataLoading;
  const factory HomeState.fiveDaysForecastDataSuccess({List<FivdeDaysForecastListItem>? fiveDaysForecastList}) = FiveDaysForecastDataSuccess<T>;
  const factory HomeState.fiveDaysForecastDataError(ApiErrorModel apiErrorModel) = FiveDaysForecastDataError;
}
