// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeater.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repeater _$$_RepeaterFromJson(Map<String, dynamic> json) => _$_Repeater(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      parentId: json['parentId'] as String,
      deviceName: json['deviceName'] as String,
      farmId: json['farmId'] as String,
      unitType: json['unitType'] == null
          ? null
          : UnitType.fromJson(json['unitType'] as Map<String, dynamic>),
      systemType: json['systemType'] == null
          ? null
          : SystemType.fromJson(json['systemType'] as Map<String, dynamic>),
      geolocation: json['geolocation'] == null
          ? null
          : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_RepeaterToJson(_$_Repeater instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'parentId': instance.parentId,
      'deviceName': instance.deviceName,
      'farmId': instance.farmId,
      'unitType': instance.unitType,
      'systemType': instance.systemType,
      'geolocation': instance.geolocation,
      'isActive': instance.isActive,
    };
