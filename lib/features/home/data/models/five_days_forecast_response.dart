import 'package:json_annotation/json_annotation.dart';
import 'current_weather_data_response.dart';
part 'five_days_forecast_response.g.dart';

@JsonSerializable()
class FiveDaysForecastRepoonse {
  @JsonKey(name: 'dt')
  final DateTime? dateTime;
  final Main? main;
  @JsonKey(name: 'dt_txt')
  final String? date;

  FiveDaysForecastRepoonse({
    this.dateTime,
    this.main,
    this.date,
  });

  factory FiveDaysForecastRepoonse.fromJson(Map<String, dynamic> json) =>
      _$FiveDaysForecastRepoonseFromJson(json);
}
