import 'package:dio/dio.dart';
import 'package:netafim_mobile/models/requests/change_password_payload.dart';
import 'package:netafim_mobile/models/requests/update_account_payload.dart';
import 'package:netafim_mobile/models/requests/update_system_payload.dart';
import 'package:netafim_mobile/models/user_info.dart';
import 'package:netafim_mobile/models/user_prefs.dart';
import 'package:retrofit/retrofit.dart';

import '../models/culture.dart';
import '../models/requests/reset_password_payload.dart';
import '../network/end_points.dart';

part 'user_data_source.g.dart';

@RestApi()
abstract class UserDataSource {
  factory UserDataSource(Dio dio, {String baseUrl}) = _UserDataSource;

  @GET(EndPoints.user)
  Future<UserInfo> getUser();

  @GET('${EndPoints.userPrefs}/{userId}')
  Future<UserPrefs> getUserPrefs(@Path() String userId);

  @PUT('${EndPoints.updateAccount}/{userId}')
  Future<HttpResponse> updateAccount(
      {@Path() required String userId,
      @Body() required UpdateAccountPayload payload});

  @PUT('${EndPoints.updateSystem}/{userId}')
  Future<HttpResponse> updateSystem(
      {@Path() required String userId,
      @Body() required UpdateSystemPayload payload});

  @PUT('${EndPoints.changePassword}/{userId}/password')
  Future<HttpResponse> changePassword(
      {@Path() required String userId,
      @Body() required ChangePasswordPayload payload});

  @POST(EndPoints.sendResetPassword)
  Future<HttpResponse> sendResetPassword(@Body() ResetPasswordPayload payload);

}
