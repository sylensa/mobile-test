import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/country.dart';
import '../models/irrigation_method.dart';
import '../models/state_district.dart';
import '../models/timezone.dart';
import '../network/end_points.dart';

part 'lookup_data_source.g.dart';

@RestApi()
abstract class LookUpDataSource {
  factory LookUpDataSource(Dio dio, {String baseUrl}) = _LookUpDataSource;

  @GET(EndPoints.countries)
  Future<List<Country>> getCountries();

  @GET('${EndPoints.states}/{countryCode}')
  Future<List<StateDistrict>> getStates(@Path() String countryCode);

  @GET(EndPoints.timezones)
  Future<List<Timezone>> getTimezones();

  @GET(EndPoints.irrigationMethods)
  Future<List<IrrigationMethod>> getIrrigationMethods();


}
