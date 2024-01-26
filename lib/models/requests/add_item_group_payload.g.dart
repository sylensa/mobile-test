// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_group_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddItemGroupPayload _$$_AddItemGroupPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_AddItemGroupPayload(
      deviceUuid: json['deviceUuid'] as String,
      label: json['label'] as String,
      thingId: json['thingId'] as String?,
    );

Map<String, dynamic> _$$_AddItemGroupPayloadToJson(
        _$_AddItemGroupPayload instance) =>
    <String, dynamic>{
      'deviceUuid': instance.deviceUuid,
      'label': instance.label,
      'thingId': instance.thingId,
    };
