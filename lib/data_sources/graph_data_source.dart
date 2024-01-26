import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/requests/graph_payload.dart';
import 'package:retrofit/retrofit.dart';

import '../models/crop_unit_graphs_response.dart';
import '../models/graph_response.dart';
import '../models/graph_selection_response.dart';
import '../models/requests/calculated_data_payload.dart';
import '../network/end_points.dart';

part 'graph_data_source.g.dart';

@RestApi()
abstract class GraphDataSource {
  factory GraphDataSource(Dio dio, {String baseUrl}) = _GraphDataSource;

  @POST('${EndPoints.graphBaseUrl}')
  Future<List<CropUnitGraph>> getGraph({
    @Body() required GraphPayload body,
    @Header('farmId') required String farmId,
    @Header('x-nbvx-usr-pref-unit-system') required String unitSystem,
  });

  @GET('${EndPoints.graphBaseUrl}')
  Future<GraphResponse> getDeviceGraphData(
      {@Path('ioId') required String ioId,
      @Path('fromDate') required String fromDate,
      @Path('toDate') required String toDate,
      @Header('x-gs-farm-timezone') String? timezone});


  @POST('${EndPoints.graphBaseUrl}')
  Future<HttpResponse> getLastReadData(
      {@Body() required Map<String,dynamic> sensorTypeIds,
      @Header('x-gs-farm-timezone') String? timezone});

  @POST('${EndPoints.graphBaseUrl}')
  Future<GraphResponse> getCalculatedData(
      {@Body() required CalculatedDataPayload body,
      @Header('x-gs-farm-timezone') required String timezone});


  @GET(
      '${EndPoints.graphBaseUrl}')
  Future<GraphSelectionResponse> getGraphSelectionData(
      {@Path('farmId') required String farmId,
      @Path('cropUnitId') required String cropUnitId,
      @Header('x-gs-farm-timezone') String? timezone,
      @Header('x-nbvx-usr-pref-unit-system') required String unitSystem});
}
