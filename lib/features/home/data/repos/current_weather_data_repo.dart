import 'dart:developer';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/current_weather_data_request.dart';
import '../models/current_weather_data_response.dart';
import '../../../../core/networking/api_service.dart';

class CurrentWeatherDataRepo {
  final ApiService _apiService;

  CurrentWeatherDataRepo(this._apiService);

  Future<ApiResult<CurrentWeatherDataResponse>> getCurrentWeatherData(
      CurrentWeatherDataRequest currentWeatherDataRequest) async {
    try {
      final response = await _apiService.getWeatherData(
        currentWeatherDataRequest,
      );
      return ApiResult.success(response);
    } catch (error) {
      log(error.toString());
      return ApiResult.failure(
        ApiErrorHandler.handle(error),
      );
    }
  }
}
