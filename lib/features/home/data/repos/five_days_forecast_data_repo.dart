import 'package:weather_app/features/home/data/models/five_days_forecast_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/current_weather_data_request.dart';

class FiveDaysForecastDataRepo {
  final ApiService _apiService;

  FiveDaysForecastDataRepo(this._apiService);

  Future<ApiResult<List<FivdeDaysForecastListItem>>> getFiveDaysForecastData(
    CurrentWeatherDataRequest currentWeatherDataRequest,
  ) async {
    try {
      final response = await _apiService.getFiveDayForecastData(
        currentWeatherDataRequest,
      );
      return ApiResult.success(response.fivdeDaysForecastList!);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
