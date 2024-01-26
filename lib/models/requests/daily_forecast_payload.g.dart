// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyForecastPayload _$$_DailyForecastPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_DailyForecastPayload(
      endDate: json['endDate'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      startDate: json['startDate'] as String,
      timezone: json['timezone'] as String,
      timezoneFormat: json['timezoneFormat'] as String,
      unitSystem: json['unitSystem'] as String,
    );

Map<String, dynamic> _$$_DailyForecastPayloadToJson(
        _$_DailyForecastPayload instance) =>
    <String, dynamic>{
      'endDate': instance.endDate,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startDate': instance.startDate,
      'timezone': instance.timezone,
      'timezoneFormat': instance.timezoneFormat,
      'unitSystem': instance.unitSystem,
    };
