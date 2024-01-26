// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateField _$$_UpdateFieldFromJson(Map<String, dynamic> json) =>
    _$_UpdateField(
      op: json['op'] as String? ?? 'replace',
      path: json['path'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_UpdateFieldToJson(_$_UpdateField instance) =>
    <String, dynamic>{
      'op': instance.op,
      'path': instance.path,
      'value': instance.value,
    };
