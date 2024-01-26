// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Root _$$_RootFromJson(Map<String, dynamic> json) => _$_Root(
      id: json['id'] as String,
      deviceId: json['deviceId'] as String,
      parentId: json['parentId'] as String?,
      farmId: json['farmId'] as String,
      deviceName: json['deviceName'] as String,
      unitType: json['unitType'] == null
          ? null
          : UnitType.fromJson(json['unitType'] as Map<String, dynamic>),
      systemType: json['systemType'] == null
          ? null
          : SystemType.fromJson(json['systemType'] as Map<String, dynamic>),
      geolocation: json['geolocation'] == null
          ? null
          : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool,
      createdDateUtc: json['createdDateUtc'] as String,
      channels: (json['channels'] as List<dynamic>?)
              ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      ioGroups: (json['ioGroups'] as List<dynamic>?)
              ?.map((e) => IoGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RootToJson(_$_Root instance) => <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'parentId': instance.parentId,
      'farmId': instance.farmId,
      'deviceName': instance.deviceName,
      'unitType': instance.unitType,
      'systemType': instance.systemType,
      'geolocation': instance.geolocation,
      'isActive': instance.isActive,
      'createdDateUtc': instance.createdDateUtc,
      'channels': instance.channels,
      'ioGroups': instance.ioGroups,
    };
