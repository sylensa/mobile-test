// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_farm_playload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateFarmPayload _$$_UpdateFarmPayloadFromJson(Map<String, dynamic> json) =>
    _$_UpdateFarmPayload(
      farmName: json['farmName'] as String,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      countrySubdivisionCode: json['countrySubdivisionCode'] as String?,
      firstDayOfWeek: json['firstDayOfWeek'] as String? ?? 'Sunday',
      ianaTimezoneId: json['ianaTimezoneId'] as String?,
    );

Map<String, dynamic> _$$_UpdateFarmPayloadToJson(
        _$_UpdateFarmPayload instance) =>
    <String, dynamic>{
      'farmName': instance.farmName,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'countrySubdivisionCode': instance.countrySubdivisionCode,
      'firstDayOfWeek': instance.firstDayOfWeek,
      'ianaTimezoneId': instance.ianaTimezoneId,
    };
