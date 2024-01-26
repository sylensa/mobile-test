import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/alarm.dart';
import 'package:retrofit/retrofit.dart';

import '../models/alarms_response.dart';
import '../network/end_points.dart';

part 'alarms_data_source.g.dart';

@RestApi()
abstract class AlarmsDataSource {
  factory AlarmsDataSource(Dio dio, {String baseUrl}) = _AlarmsDataSource;

  @GET('${EndPoints.irrigationBaseUrl}')
  Future<AlarmsResponse> getAlarms({@Path('farmId') required String farmId});


  @POST('${EndPoints.irrigationBaseUrl}')
  Future<HttpResponse> dismissAlarms(
      {@Path('farmId') required String farmId, @Body() required List<String> ids});
}
