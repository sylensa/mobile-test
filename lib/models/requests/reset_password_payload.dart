import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_payload.freezed.dart';

part 'reset_password_payload.g.dart';

@freezed
class ResetPasswordPayload with _$ResetPasswordPayload {
  const factory ResetPasswordPayload({
    required String UserId,
    @Default('NetBeat VX - reset password') String Subject,
    @Default('Please use the link below to reset your password. <a href=\"{callbackUrl}\">LINK</a> </br> </br> *Notice - in case you have entered email address only, the password for all users under this e-mail will be reset')
        String Body,
    @Default('')
        String CallbackUrlFormatString,
  }) = _ResetPasswordPayload;

  factory ResetPasswordPayload.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordPayloadFromJson(json);
}
