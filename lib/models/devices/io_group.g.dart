// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'io_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IoGroup _$$_IoGroupFromJson(Map<String, dynamic> json) => _$_IoGroup(
      ioGroupId: json['ioGroupId'] as String,
      unitId: json['unitId'] as String?,
      ioType: json['ioType'] == null
          ? null
          : IoType.fromJson(json['ioType'] as Map<String, dynamic>),
      channelId: json['channelId'] as String?,
      ios: (json['ios'] as List<dynamic>?)
          ?.map((e) => IO.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      ioDeviceType:
          IoDeviceType.fromJson(json['ioDeviceType'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      farmId: json['farmId'] as String,
    );

Map<String, dynamic> _$$_IoGroupToJson(_$_IoGroup instance) =>
    <String, dynamic>{
      'ioGroupId': instance.ioGroupId,
      'unitId': instance.unitId,
      'ioType': instance.ioType,
      'channelId': instance.channelId,
      'ios': instance.ios,
      'name': instance.name,
      'ioDeviceType': instance.ioDeviceType,
      'isActive': instance.isActive,
      'items': instance.items,
      'farmId': instance.farmId,
    };
