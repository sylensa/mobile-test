// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_prefs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPrefs _$$_UserPrefsFromJson(Map<String, dynamic> json) => _$_UserPrefs(
      email: json['email'] as String?,
      emailConfirmed: json['emailConfirmed'] as bool?,
      lockoutEnabled: json['lockoutEnabled'] as bool?,
      lockoutEndDateUtc: json['lockoutEndDateUtc'] as String?,
      mostRecentLoginUtc: json['mostRecentLoginUtc'] as String?,
      hasPassword: json['hasPassword'] as bool?,
      phoneNumber: json['phoneNumber'] as String?,
      phoneNumberConfirmed: json['phoneNumberConfirmed'] as bool?,
      createdTimestampUTC: json['createdTimestampUTC'] as String?,
      acceptedTerms: json['acceptedTerms'] as bool?,
      acceptedTermsVersion: json['acceptedTermsVersion'] as int?,
      acceptedTermsTimestampUTC: json['acceptedTermsTimestampUTC'] as String?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userId: json['userId'] as String?,
      userName: json['userName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      culture: json['culture'] as String?,
      unitsSystem: json['unitsSystem'] as String? ?? 'SI',
      enterpriseId: json['enterpriseId'] as int?,
      enterpriseName: json['enterpriseName'] as String?,
      isDisabled: json['isDisabled'] as bool?,
      disabledTimestampUtc: json['disabledTimestampUtc'] as String?,
      farmCount: json['farmCount'] as int?,
      acceptedProductUpdates: json['acceptedProductUpdates'] as bool?,
    );

Map<String, dynamic> _$$_UserPrefsToJson(_$_UserPrefs instance) =>
    <String, dynamic>{
      'email': instance.email,
      'emailConfirmed': instance.emailConfirmed,
      'lockoutEnabled': instance.lockoutEnabled,
      'lockoutEndDateUtc': instance.lockoutEndDateUtc,
      'mostRecentLoginUtc': instance.mostRecentLoginUtc,
      'hasPassword': instance.hasPassword,
      'phoneNumber': instance.phoneNumber,
      'phoneNumberConfirmed': instance.phoneNumberConfirmed,
      'createdTimestampUTC': instance.createdTimestampUTC,
      'acceptedTerms': instance.acceptedTerms,
      'acceptedTermsVersion': instance.acceptedTermsVersion,
      'acceptedTermsTimestampUTC': instance.acceptedTermsTimestampUTC,
      'roles': instance.roles,
      'userId': instance.userId,
      'userName': instance.userName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'culture': instance.culture,
      'unitsSystem': instance.unitsSystem,
      'enterpriseId': instance.enterpriseId,
      'enterpriseName': instance.enterpriseName,
      'isDisabled': instance.isDisabled,
      'disabledTimestampUtc': instance.disabledTimestampUtc,
      'farmCount': instance.farmCount,
      'acceptedProductUpdates': instance.acceptedProductUpdates,
    };
