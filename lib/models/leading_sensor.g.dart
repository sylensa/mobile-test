// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leading_sensor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeadingSensor _$$_LeadingSensorFromJson(Map<String, dynamic> json) =>
    _$_LeadingSensor(
      sensorId: json['sensorId'] as String,
      sensorName: json['sensorName'] as String?,
      lastMeasurement: (json['lastMeasurement'] as num?)?.toDouble(),
      uom: json['uom'] as String?,
      blockId: json['blockId'] as String?,
      blockName: json['blockName'] as String?,
      baseUuid: json['baseUuid'] as String?,
      remoteUuid: json['remoteUuid'] as String?,
      baseId: json['baseId'] as String?,
      remoteId: json['remoteId'] as String?,
    );

Map<String, dynamic> _$$_LeadingSensorToJson(_$_LeadingSensor instance) =>
    <String, dynamic>{
      'sensorId': instance.sensorId,
      'sensorName': instance.sensorName,
      'lastMeasurement': instance.lastMeasurement,
      'uom': instance.uom,
      'blockId': instance.blockId,
      'blockName': instance.blockName,
      'baseUuid': instance.baseUuid,
      'remoteUuid': instance.remoteUuid,
      'baseId': instance.baseId,
      'remoteId': instance.remoteId,
    };
