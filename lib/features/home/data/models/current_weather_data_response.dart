import 'package:json_annotation/json_annotation.dart';
part 'current_weather_data_response.g.dart';


@JsonSerializable()
class CurrentWeatherDataResponse {
  final List<Weather>? weather;
  final Main? main;
  final Wind? wind;
  final Clouds? clouds;

  CurrentWeatherDataResponse({this.weather, this.main, this.wind, this.clouds});

  factory CurrentWeatherDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDataResponseFromJson(json);
}

@JsonSerializable()
class Weather {
  final String? name;
  final String? description;

  Weather({this.name, this.description});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@JsonSerializable()
class Main {
  final double? temp;
  final double? humidity;

  Main({this.temp, this.humidity});

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@JsonSerializable()
class Wind {
  final double? speed;
  final double? deg;

  Wind({this.speed, this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@JsonSerializable()
class Clouds {
  final int? all;

  Clouds({this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}
