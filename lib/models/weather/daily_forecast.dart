import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_forecast.freezed.dart';
part 'daily_forecast.g.dart';

@freezed
class DailyForecast with _$DailyForecast {
  const factory DailyForecast({
    String? date,
    num? minTemp,
    num? maxTemp,
    String? temperatureUnitSymbol,
    num? accumulatedRain,
    String? accumulatedRainUnitSymbol,
    num? evapotranspiration,
    String? evapotranspirationUnitSymbol,
    String? icon,
  }) = _DailyForecast;

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);
}