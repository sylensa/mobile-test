// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordPayload _$$_ChangePasswordPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordPayload(
      CurrentPassword: json['CurrentPassword'] as String,
      NewPassword: json['NewPassword'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordPayloadToJson(
        _$_ChangePasswordPayload instance) =>
    <String, dynamic>{
      'CurrentPassword': instance.CurrentPassword,
      'NewPassword': instance.NewPassword,
    };
