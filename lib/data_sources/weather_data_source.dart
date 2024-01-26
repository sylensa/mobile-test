import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/requests/daily_forecast_payload.dart';
import 'package:netafim_mobile/models/weather/current_weather_response.dart';
import 'package:netafim_mobile/models/weather/daily_forecast.dart';
import 'package:retrofit/retrofit.dart';

import '../network/end_points.dart';

part 'weather_data_source.g.dart';

@RestApi()
abstract class WeatherDataSource {
  factory WeatherDataSource(Dio dio, {String baseUrl}) = _WeatherDataSource;

  @GET(EndPoints.currentWeather)
  Future<CurrentWeatherResponse> currentWeather(
      {@Header('x-nbvx-usr-pref-unit-system') required String unitSystem,
      @Query('Latitude') required double lat,
      @Query('Longitude') required double lng});

  @POST(EndPoints.dailyForecast)
  Future<List<DailyForecast>> dailyForecast({
    @Header('x-nbvx-usr-pref-unit-system') required String unitSystem,
    @Body() required DailyForecastPayload payload,
  });

}
