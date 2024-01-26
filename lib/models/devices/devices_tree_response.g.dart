// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_tree_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DevicesTree _$$_DevicesTreeFromJson(Map<String, dynamic> json) =>
    _$_DevicesTree(
      root: Root.fromJson(json['root'] as Map<String, dynamic>),
      bases: (json['bases'] as List<dynamic>?)
              ?.map((e) => Base.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      repeaters: (json['repeaters'] as List<dynamic>?)
              ?.map((e) => Repeater.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      remotes: (json['remotes'] as List<dynamic>?)
              ?.map((e) => Remote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DevicesTreeToJson(_$_DevicesTree instance) =>
    <String, dynamic>{
      'root': instance.root,
      'bases': instance.bases,
      'repeaters': instance.repeaters,
      'remotes': instance.remotes,
    };
