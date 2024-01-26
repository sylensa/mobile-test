import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/controllers/user_settings_controller.dart';
import 'package:netafim_mobile/data_sources/weather_data_source.dart';
import 'package:netafim_mobile/models/weather/current_weather_response.dart';
import 'package:netafim_mobile/models/weather/daily_forecast.dart';

import '../models/requests/daily_forecast_payload.dart';
import '../network/dio_provider.dart';

final currentWeatherProvider =
    FutureProvider.autoDispose<CurrentWeatherResponse>((ref) async {
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final farm = ref.watch(selectedFarmProvider);
  if (farm == null) {
    throw 'No farm selected';
  }
  return WeatherDataSource(dio).currentWeather(
      unitSystem: unitSystem, lat: farm.latitude!, lng: farm.longitude!);
});

final dailyForecastProvider =
    FutureProvider.autoDispose<List<DailyForecast>>((ref) async {
  final userPrefs = await ref.watch(userPrefsProvider.future);
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final farm = ref.watch(selectedFarmProvider);
  if (farm == null) {
    throw 'No farm selected';
  }
  return WeatherDataSource(dio).dailyForecast(
      unitSystem: unitSystem,
      payload: DailyForecastPayload(
          startDate: DateTime.now()
              .add(const Duration(days: -1))
              .toUtc()
              .toIso8601String(),
          endDate: DateTime.now()
              .add(const Duration(days: 5))
              .toUtc()
              .toIso8601String(),
          latitude: farm.latitude!,
          longitude: farm.longitude!,
          timezone: farm.timeZoneInfo!.windowsTimeZone!,
          timezoneFormat: 'windows',
          unitSystem: unitSystem));
});
