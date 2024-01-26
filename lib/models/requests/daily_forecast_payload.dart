import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_forecast_payload.freezed.dart';
part 'daily_forecast_payload.g.dart';

@freezed
class DailyForecastPayload with _$DailyForecastPayload {
  const factory DailyForecastPayload({
    required String endDate,
    required double latitude,
    required double longitude,
    required String startDate,
    required String timezone,
    required String timezoneFormat,
    required String unitSystem,
  }) = _DailyForecastPayload;

  factory DailyForecastPayload.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastPayloadFromJson(json);
}