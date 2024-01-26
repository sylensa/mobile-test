// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemGroup _$$_ItemGroupFromJson(Map<String, dynamic> json) => _$_ItemGroup(
      id: json['id'] as String,
      deviceUuid: json['deviceUuid'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemGroupToJson(_$_ItemGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceUuid': instance.deviceUuid,
      'items': instance.items,
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as String,
      itemGroupId: json['itemGroupId'] as String,
      channelUuid: json['channelUuid'] as String?,
      label: json['label'] as String?,
      thingId: json['thingId'] as String?,
      ioTypeId: json['ioTypeId'] as int?,
      ioDeviceTypeId: json['ioDeviceTypeId'] as int?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'itemGroupId': instance.itemGroupId,
      'channelUuid': instance.channelUuid,
      'label': instance.label,
      'thingId': instance.thingId,
      'ioTypeId': instance.ioTypeId,
      'ioDeviceTypeId': instance.ioDeviceTypeId,
      'isActive': instance.isActive,
    };
