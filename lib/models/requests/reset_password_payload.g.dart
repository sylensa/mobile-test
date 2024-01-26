// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResetPasswordPayload _$$_ResetPasswordPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ResetPasswordPayload(
      UserId: json['UserId'] as String,
      Subject: json['Subject'] as String? ?? 'NetBeat VX - reset password',
      Body: json['Body'] as String? ??
          'Please use the link below to reset your password. <a href=\"{callbackUrl}\">LINK</a> </br> </br> *Notice - in case you have entered email address only, the password for all users under this e-mail will be reset',
      CallbackUrlFormatString: json['CallbackUrlFormatString'] as String? ??
          '',
    );

Map<String, dynamic> _$$_ResetPasswordPayloadToJson(
        _$_ResetPasswordPayload instance) =>
    <String, dynamic>{
      'UserId': instance.UserId,
      'Subject': instance.Subject,
      'Body': instance.Body,
      'CallbackUrlFormatString': instance.CallbackUrlFormatString,
    };
