import 'package:dio/dio.dart';
import 'package:netafim_mobile/network/end_points.dart';
import 'package:retrofit/retrofit.dart';

import '../models/weekly_recs_response.dart';

part 'recs_data_source.g.dart';

@RestApi()
abstract class RecsDataSource {
  factory RecsDataSource(Dio dio, {String baseUrl}) = _RecsDataSource;

  @GET(
      '${EndPoints.dataBaseUrl}')
  Future<WeeklyRecsResponse> getRecs({
    @Path('farmId') required String farmId,
    @Path('cropUnitId') required String cropUnitId,
    @Query('date') required String date,
    @Header('x-nbvx-usr-pref-unit-system') required String unitSystem,
    @Header('x-gs-farm-timezone') required String timeZone,
  });
}
