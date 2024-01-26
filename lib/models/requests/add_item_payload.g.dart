// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddItemPayload _$$_AddItemPayloadFromJson(Map<String, dynamic> json) =>
    _$_AddItemPayload(
      channelUuid: json['channelUuid'] as String,
      label: json['label'] as String,
      thingId: json['thingId'] as String?,
      ioTypeId: json['ioTypeId'] as int?,
      ioDeviceTypeId: json['ioDeviceTypeId'] as int?,
      order: json['order'] as int? ?? 1,
    );

Map<String, dynamic> _$$_AddItemPayloadToJson(_$_AddItemPayload instance) =>
    <String, dynamic>{
      'channelUuid': instance.channelUuid,
      'label': instance.label,
      'thingId': instance.thingId,
      'ioTypeId': instance.ioTypeId,
      'ioDeviceTypeId': instance.ioDeviceTypeId,
      'order': instance.order,
    };
