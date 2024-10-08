import 'package:json_annotation/json_annotation.dart';
part 'current_weather_data_request.g.dart';

@JsonSerializable()
class CurrentWeatherDataRequest {
  final double lat;
  final double lon;
  @JsonKey(name: 'appid')
  final String appId;

  CurrentWeatherDataRequest({
    required this.lat,
    required this.lon,
    required this.appId,
  });

  Map<String, dynamic> toJson() => _$CurrentWeatherDataRequestToJson(this);
}
