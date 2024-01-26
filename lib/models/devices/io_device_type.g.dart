// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'io_device_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoDeviceType _$$_IoDeviceTypeFromJson(Map<String, dynamic> json) =>
    _$_IoDeviceType(
      id: json['id'] as int,
      name: json['name'] as String,
      metricUom: json['metricUom'] as String?,
      imperialUom: json['imperialUom'] as String?,
      icon: json['icon'] as String?,
      ioTypeId: json['ioTypeId'] as int,
      shortCode: json['shortCode'] as String?,
      graphType: json['graphType'] as String?,
      minValue: json['minValue'] as num?,
      maxValue: json['maxValue'] as num?,
    );

Map<String, dynamic> _$$_IoDeviceTypeToJson(_$_IoDeviceType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'metricUom': instance.metricUom,
      'imperialUom': instance.imperialUom,
      'icon': instance.icon,
      'ioTypeId': instance.ioTypeId,
      'shortCode': instance.shortCode,
      'graphType': instance.graphType,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };
