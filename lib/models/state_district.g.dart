// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateDistrict _$$_StateDistrictFromJson(Map<String, dynamic> json) =>
    _$_StateDistrict(
      stateIsoCode: json['stateIsoCode'] as String,
      name: json['name'] as String,
      countryIsoCode: json['countryIsoCode'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_StateDistrictToJson(_$_StateDistrict instance) =>
    <String, dynamic>{
      'stateIsoCode': instance.stateIsoCode,
      'name': instance.name,
      'countryIsoCode': instance.countryIsoCode,
      'type': instance.type,
    };
