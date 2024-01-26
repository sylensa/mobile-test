import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth_response.dart';
import '../network/end_points.dart';

part 'auth_data_source.g.dart';

@RestApi()
abstract class AuthDataSource {
  factory AuthDataSource(Dio dio, {String baseUrl}) = _AuthDataSource;

  @POST(EndPoints.auth)
  @FormUrlEncoded()
  Future<AuthResponse> authenticate(
      @Header('Authorization') String authorization,
      @Field('grant_type') String grantType,
      @Field('username') String userName,
      @Field('password') String password);
}

const authSecret = '';