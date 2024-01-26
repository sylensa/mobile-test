import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/requests/set_program_payload.dart';
import 'package:retrofit/retrofit.dart';
import '../models/requests/change_program_state_payload.dart';
import '../network/end_points.dart';

part 'irrigation_manager_data_source.g.dart';

@RestApi()
abstract class IrrigationMangerDataSource {
  factory IrrigationMangerDataSource(Dio dio, {String baseUrl}) =
      _IrrigationMangerDataSource;

  @POST(EndPoints.setProgram)
  Future setProgram(@Body() SetProgramPayload body);

  @POST(EndPoints.changeProgramState)
  Future changeProgramState(@Body() ChangeProgramStatePayload body);
}
