// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five_days_forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDaysForecastRepoonse _$FiveDaysForecastRepoonseFromJson(
        Map<String, dynamic> json) =>
    FiveDaysForecastRepoonse(
      dateTime:
          json['dt'] == null ? null : DateTime.parse(json['dt'] as String),
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      date: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$FiveDaysForecastRepoonseToJson(
        FiveDaysForecastRepoonse instance) =>
    <String, dynamic>{
      'dt': instance.dateTime?.toIso8601String(),
      'main': instance.main,
      'dt_txt': instance.date,
    };
