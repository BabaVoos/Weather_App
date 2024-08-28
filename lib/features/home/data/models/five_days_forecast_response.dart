import 'package:json_annotation/json_annotation.dart';
import 'current_weather_data_response.dart';
part 'five_days_forecast_response.g.dart';

@JsonSerializable()
class FiveDaysForecastResponse {
  @JsonKey(name: 'list')
  final List<FivdeDaysForecastListItem>? fivdeDaysForecastList;

  FiveDaysForecastResponse({
    this.fivdeDaysForecastList,
  });

  factory FiveDaysForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$FiveDaysForecastResponseFromJson(json);
}

@JsonSerializable()
class FivdeDaysForecastListItem {
  @JsonKey(name: 'dt')
  final DateTime? dateTime;
  final Main? main;
  @JsonKey(name: 'dt_txt')
  final String? date;

  FivdeDaysForecastListItem({
    this.dateTime,
    this.main,
    this.date,
  });

  factory FivdeDaysForecastListItem.fromJson(Map<String, dynamic> json) =>
      _$FivdeDaysForecastListItemFromJson(json);
}
