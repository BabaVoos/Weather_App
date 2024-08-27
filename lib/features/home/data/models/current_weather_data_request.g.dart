// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeatherDataRequest _$CurrentWeatherDataRequestFromJson(
        Map<String, dynamic> json) =>
    CurrentWeatherDataRequest(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      appId: json['appid'] as String,
    );

Map<String, dynamic> _$CurrentWeatherDataRequestToJson(
        CurrentWeatherDataRequest instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appId,
    };
