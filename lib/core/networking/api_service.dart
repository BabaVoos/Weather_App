import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../features/home/data/models/current_weather_data_response.dart';
import '../../features/home/data/models/current_weather_data_request.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.weatherEp)
  Future<CurrentWeatherDataResponse> getWeatherData(
    @Queries() CurrentWeatherDataRequest request,
  );

  @GET(ApiConstants.forecastEp)
  Future<CurrentWeatherDataResponse> getFiveDayForecastData(
    @Queries() CurrentWeatherDataRequest request,
  );
}
