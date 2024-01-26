// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyForecast _$$_DailyForecastFromJson(Map<String, dynamic> json) =>
    _$_DailyForecast(
      date: json['date'] as String?,
      minTemp: json['minTemp'] as num?,
      maxTemp: json['maxTemp'] as num?,
      temperatureUnitSymbol: json['temperatureUnitSymbol'] as String?,
      accumulatedRain: json['accumulatedRain'] as num?,
      accumulatedRainUnitSymbol: json['accumulatedRainUnitSymbol'] as String?,
      evapotranspiration: json['evapotranspiration'] as num?,
      evapotranspirationUnitSymbol:
          json['evapotranspirationUnitSymbol'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_DailyForecastToJson(_$_DailyForecast instance) =>
    <String, dynamic>{
      'date': instance.date,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
      'temperatureUnitSymbol': instance.temperatureUnitSymbol,
      'accumulatedRain': instance.accumulatedRain,
      'accumulatedRainUnitSymbol': instance.accumulatedRainUnitSymbol,
      'evapotranspiration': instance.evapotranspiration,
      'evapotranspirationUnitSymbol': instance.evapotranspirationUnitSymbol,
      'icon': instance.icon,
    };
