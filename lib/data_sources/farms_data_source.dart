import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/farm_dashboard_response.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/item_group.dart';
import 'package:netafim_mobile/models/requests/add_item_group_payload.dart';
import 'package:netafim_mobile/network/end_points.dart';
import 'package:retrofit/retrofit.dart';

import '../models/farm_tree_response.dart';
import '../models/farms_response.dart';
import '../models/requests/add_item_payload.dart';
import '../models/requests/irrigation_block_payload.dart';
import '../models/requests/update_farm_playload.dart';

part 'farms_data_source.g.dart';

@RestApi()
abstract class FarmsDataSource {
  factory FarmsDataSource(Dio dio, {String baseUrl}) = _FarmsDataSource;

  //3eed33a3-a854-4038-8076-ca6152e4b8e1
  @GET(
      'https://${EndPoints.env}')
  Future<FarmsResponse> getFarms(@Path() String userId);

  @PUT('${EndPoints.updateFarm}/{farmId}')
  Future<HttpResponse> updateFarm(
      {@Path() required String farmId,
      @Body() required UpdateFarmPayload payload});

  //stag-nb10000
  @GET(
      'https://${EndPoints.env}')
  Future<FarmTreeResponse> getFarmTree(@Path() String farmId);

  @GET(
      '')
  Future<FarmDashboardResponse> getFarmDashboard(@Path() String farmId,
      @Header('x-nbvx-usr-pref-unit-system') String unitSystem);

  @GET(EndPoints.irrigationBlocks)
  Future<List<IrrigationBlock>> getIrrigationBlocks(
      {@Query('farmId') required String farmId,
      @Header('x-nbvx-usr-pref-unit-system') required String unitSystem});

  @PUT('${EndPoints.irrigationBlocks}/{irrigationBlockId}')
  Future<HttpResponse> updateIrrigationBlock(
      {@Path() required String irrigationBlockId,
      @Header('x-nbvx-usr-pref-unit-system') required String systemUnit,
      @Header('x-gs-farm-timezone') required String timezone,
      @Body() required IrrigationBlockPayload payload});

  @POST(
      "")
  Future<ItemGroup> createItemGroup(
      {@Path() required String irrigationBlockId,
      @Body() required AddItemGroupPayload payload});

  @POST(
      "${EndPoints.dataBaseUrl}")
  Future<HttpResponse> createItem(
      {@Path() required String irrigationBlockId,
      @Path() required String itemGroupId,
      @Body() required AddItemPayload payload});

  @DELETE(
      "${EndPoints.dataBaseUrl}")
  Future<HttpResponse> deleteItemGroup(
      {@Path() required String irrigationBlockId,
      @Path() required String itemGroupId});

  @DELETE(
      "${EndPoints.dataBaseUrl}")
  Future<HttpResponse> deleteItem(
      {@Path() required String irrigationBlockId,
      @Path() required String itemGroupId,
      @Path() required String itemId});

  @GET(
      "${EndPoints.dataBaseUrl}")
  Future<List<Item>> getItemGroupItems(
      {@Path() required String irrigationBlockId,
      @Path() required String itemGroupId});

}
