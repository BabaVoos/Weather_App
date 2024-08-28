// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five_days_forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FiveDaysForecastResponse _$FiveDaysForecastResponseFromJson(
        Map<String, dynamic> json) =>
    FiveDaysForecastResponse(
      fivdeDaysForecastList: (json['list'] as List<dynamic>?)
          ?.map((e) =>
              FivdeDaysForecastListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FiveDaysForecastResponseToJson(
        FiveDaysForecastResponse instance) =>
    <String, dynamic>{
      'list': instance.fivdeDaysForecastList,
    };

FivdeDaysForecastListItem _$FivdeDaysForecastListItemFromJson(
        Map<String, dynamic> json) =>
    FivdeDaysForecastListItem(
      dateTime:
          json['dt'] == null ? null : DateTime.parse(json['dt'] as String),
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      date: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$FivdeDaysForecastListItemToJson(
        FivdeDaysForecastListItem instance) =>
    <String, dynamic>{
      'dt': instance.dateTime?.toIso8601String(),
      'main': instance.main,
      'dt_txt': instance.date,
    };
