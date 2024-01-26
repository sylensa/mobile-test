// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateAccountPayload _$$_UpdateAccountPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateAccountPayload(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$_UpdateAccountPayloadToJson(
        _$_UpdateAccountPayload instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
    };
