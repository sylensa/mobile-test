// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Base _$$_BaseFromJson(Map<String, dynamic> json) => _$_Base(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      deviceName: json['deviceName'] as String,
      parentId: json['parentId'] as String,
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
      channels: (json['channels'] as List<dynamic>?)
              ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      ioGroups: (json['ioGroups'] as List<dynamic>?)
              ?.map((e) => IoGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_BaseToJson(_$_Base instance) => <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'deviceName': instance.deviceName,
      'parentId': instance.parentId,
      'farmId': instance.farmId,
      'unitType': instance.unitType,
      'systemType': instance.systemType,
      'geolocation': instance.geolocation,
      'isActive': instance.isActive,
      'channels': instance.channels,
      'ioGroups': instance.ioGroups,
    };
