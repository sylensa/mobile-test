// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmsResponse _$$_FarmsResponseFromJson(Map<String, dynamic> json) =>
    _$_FarmsResponse(
      farms: (json['farms'] as List<dynamic>)
          .map((e) => Farm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FarmsResponseToJson(_$_FarmsResponse instance) =>
    <String, dynamic>{
      'farms': instance.farms,
    };

_$_Farm _$$_FarmFromJson(Map<String, dynamic> json) => _$_Farm(
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      farmId: json['farmId'] as String,
      farmName: json['farmName'] as String,
      systemTypeId: json['systemTypeId'] as String,
      productId: json['productId'] as int,
      productVersion: json['productVersion'] as String?,
      enterpriseId: json['enterpriseId'] as int?,
      enterpriseName: json['enterpriseName'] as String?,
      platformType: json['platformType'] as String?,
      siteId: json['siteId'] as String?,
      areaId: json['areaId'] as String?,
      pcsId: json['pcsId'] as String?,
      pid: json['pid'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: json['elevation'] as int?,
      firstDayOfWeek: json['firstDayOfWeek'] as String?,
      dataServer: json['dataServer'] as String?,
      address: json['address'] as String?,
      zipCode: json['zipCode'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      countrySubdivisionCode: json['countrySubdivisionCode'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      createdTimestampUTC: json['createdTimestampUTC'] as String?,
      isDisabled: json['isDisabled'] as bool?,
      disabledTimestampUtc: json['disabledTimestampUtc'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      deletedTimestampUtc: json['deletedTimestampUtc'] as String?,
      timeZoneInfo: json['timeZoneInfo'] == null
          ? null
          : TimeZoneInfo.fromJson(json['timeZoneInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FarmToJson(_$_Farm instance) => <String, dynamic>{
      'roles': instance.roles,
      'farmId': instance.farmId,
      'farmName': instance.farmName,
      'systemTypeId': instance.systemTypeId,
      'productId': instance.productId,
      'productVersion': instance.productVersion,
      'enterpriseId': instance.enterpriseId,
      'enterpriseName': instance.enterpriseName,
      'platformType': instance.platformType,
      'siteId': instance.siteId,
      'areaId': instance.areaId,
      'pcsId': instance.pcsId,
      'pid': instance.pid,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'firstDayOfWeek': instance.firstDayOfWeek,
      'dataServer': instance.dataServer,
      'address': instance.address,
      'zipCode': instance.zipCode,
      'city': instance.city,
      'state': instance.state,
      'countrySubdivisionCode': instance.countrySubdivisionCode,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'createdTimestampUTC': instance.createdTimestampUTC,
      'isDisabled': instance.isDisabled,
      'disabledTimestampUtc': instance.disabledTimestampUtc,
      'isDeleted': instance.isDeleted,
      'deletedTimestampUtc': instance.deletedTimestampUtc,
      'timeZoneInfo': instance.timeZoneInfo,
    };

_$_TimeZoneInfo _$$_TimeZoneInfoFromJson(Map<String, dynamic> json) =>
    _$_TimeZoneInfo(
      timezoneId: json['timezoneId'] as String?,
      windowsTimeZone: json['windowsTimeZone'] as String?,
    );

Map<String, dynamic> _$$_TimeZoneInfoToJson(_$_TimeZoneInfo instance) =>
    <String, dynamic>{
      'timezoneId': instance.timezoneId,
      'windowsTimeZone': instance.windowsTimeZone,
    };
