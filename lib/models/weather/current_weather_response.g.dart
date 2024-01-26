// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWeatherResponse _$$_CurrentWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CurrentWeatherResponse(
      humidity: json['humidity'] as num?,
      temperatureUnitSymbol: json['temperatureUnitSymbol'] as String?,
      temperature: json['temperature'] as num?,
      icon: json['icon'] as String?,
      evapotranspiration: json['evapotranspiration'] as num?,
      evapotranspirationUnitSymbol:
          json['evapotranspirationUnitSymbol'] as String?,
    );

Map<String, dynamic> _$$_CurrentWeatherResponseToJson(
        _$_CurrentWeatherResponse instance) =>
    <String, dynamic>{
      'humidity': instance.humidity,
      'temperatureUnitSymbol': instance.temperatureUnitSymbol,
      'temperature': instance.temperature,
      'icon': instance.icon,
      'evapotranspiration': instance.evapotranspiration,
      'evapotranspirationUnitSymbol': instance.evapotranspirationUnitSymbol,
    };
