
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/culture.dart';
import '../models/text_resources_response.dart';
import '../network/end_points.dart';

part 'cultures_data_source.g.dart';

@RestApi()
abstract class CulturesDataSource {
  factory CulturesDataSource(Dio dio, {String baseUrl}) = _CulturesDataSource;

  @GET('${EndPoints.cultures}/{appId}')
  Future<CulturesResponse> getCultures(@Path() String appId);

  @GET('${EndPoints.textResources}/{appId}/grouped')
  Future<TextResourcesResponse> getTextResources(@Path() String appId);

}