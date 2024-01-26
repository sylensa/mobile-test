import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/devices/device_status.dart';
import 'package:netafim_mobile/models/devices/threshold.dart';
import 'package:netafim_mobile/models/requests/add_device_payload.dart';
import 'package:netafim_mobile/models/requests/update_field.dart';
import 'package:netafim_mobile/network/dio_provider.dart';
import 'package:retrofit/retrofit.dart';

import '../models/devices/devices_tree_response.dart';
import '../models/graph_point.dart';
import '../models/graph_response.dart';
import '../network/end_points.dart';

part 'devices_data_source.g.dart';

@RestApi()
abstract class DevicesDataSource {
  factory DevicesDataSource(Dio dio, {String baseUrl}) = _DevicesDataSource;

  @GET('${EndPoints.devicesBaseUrl}')
  Future<List<DevicesTree>> getDevices(@Query('farmId') String farmId,
      {@Header('x-gs-farm-timezone') required String timezone,
      @Header('x-nbvx-usr-pref-unit-system') required String unitSystem});

  @POST('${EndPoints.devicesBaseUrl}')
  Future<HttpResponse> addRLinkDevice(@Body() AddDevicePayload body);

  @POST('${EndPoints.devicesBaseUrl}')
  Future<HttpResponse> addECODevice(@Body() AddDevicePayload body);

  @POST('${EndPoints.devicesBaseUrl}')
  Future<HttpResponse> addControllerPlcDevice(@Body() AddDevicePayload body);

  @POST('${EndPoints.devicesBaseUrl}')
  Future<HttpResponse> addDavisDevice(@Body() AddDevicePayload body);

  @GET('${EndPoints.devicesBaseUrl}')
  Future<List<Threshold>> getThresholds({
    @Query('ioId') required String ioId,
    @Query('from') required String from,
    @Query('to') required String to,
    @Query('includeInactive') bool includeInactive = true,
  });

  ///------------------------ Device statuses --------------------------------
  @GET('${EndPoints.deviceStatusBaseUrl}')
  Future<List<DeviceStatus>> getBaseStatuses(
      {@Query('farmId') required String farmId,
      @Header('x-gs-farm-timezone') required String timezone});

  @GET('${EndPoints.deviceStatusBaseUrl}')
  Future<List<DeviceStatus>> getDeviceStatuses(
      {@Query('farmId') required String farmId,
      @Header('x-gs-farm-timezone') required String timezone});

  @GET('${EndPoints.deviceStatusBaseUrl}')
  Future<List<DeviceStatus>> getRemoteStatuses(
      {@Query('farmId') required String farmId,
      @Header('x-gs-farm-timezone') required String timezone});

  @GET('${EndPoints.deviceStatusBaseUrl}')
  Future<List<DeviceStatus>> getRepeaterStatuses(
      {@Query('farmId') required String farmId,
      @Header('x-gs-farm-timezone') required String timezone});

  ///------------------------ update device --------------------------------
  @PATCH('${EndPoints.updateDevice}/{id}')
  Future<HttpResponse> updateDevice(
      {@Path('id') required String id,
      @Body() required List<UpdateField> body,
      @Header('x-gs-farm-timezone') String? timezone,
      @Header('x-nbvx-usr-pref-unit-system') required String unitSystem});
}

Future<bool> updateDeviceRequest(
    {required String id,
    required List<UpdateField> body,
    String? timezone,
    required String type,
    required String unitSystem}) async {
  final response = await dio.patch('${getEditDeviceEndpoint(type)}/$id',
      data: body,
      options: Options(headers: {
        'x-gs-farm-timezone': timezone,
        'x-nbvx-usr-pref-unit-system': unitSystem
      }, contentType: 'application/json'));
  return response.statusCode == 204;
}

String getEditDeviceEndpoint(String category) {
  switch (category) {
    case 'root':
    case 'base':
      return EndPoints.updateBase;
    case 'repeater':
      return EndPoints.updateRepeater;
    case 'remote':
      return EndPoints.updateRemote;
    case 'ioGroup':
      return EndPoints.updateIoGroup;
    case 'channel':
      return EndPoints.updateDevice;
    default:
      return EndPoints.updateDevice;
  }
}
