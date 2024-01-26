
import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/crop.dart';
import 'package:netafim_mobile/models/variety.dart';
import 'package:retrofit/retrofit.dart';

import '../models/siol_type.dart';
import '../network/end_points.dart';

part 'crop_service_data_source.g.dart';

@RestApi()
abstract class CropServiceDataSource {
  factory CropServiceDataSource(Dio dio, {String baseUrl}) = _CropServiceDataSource;

  @GET(EndPoints.soilTypes)
  Future<List<SoilType>> getSoilTypes();

  @GET(EndPoints.crops)
  Future<List<Crop>> getCrops({@Query('includeInactive') bool includeInactive=true});

  @GET(EndPoints.varieties)
  Future<List<Variety>> getVarieties({@Query('cropId') required int cropId});

}