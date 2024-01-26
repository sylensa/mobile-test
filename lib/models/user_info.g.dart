// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfo _$$_UserInfoFromJson(Map<String, dynamic> json) => _$_UserInfo(
      sub: json['sub'] as String,
      email: json['email'] as String,
      role: json['role'],
      preferredUsername: json['preferred_username'] as String,
      name: json['name'] as String,
      emailVerified: json['email_verified'] as bool,
      eid: json['eid'] as String,
      deid: json['deid'] as String,
      eki: json['eki'] as String,
      userAbbr: json['user_abbr'] as String,
    );

Map<String, dynamic> _$$_UserInfoToJson(_$_UserInfo instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'email': instance.email,
      'role': instance.role,
      'preferred_username': instance.preferredUsername,
      'name': instance.name,
      'email_verified': instance.emailVerified,
      'eid': instance.eid,
      'deid': instance.deid,
      'eki': instance.eki,
      'user_abbr': instance.userAbbr,
    };
