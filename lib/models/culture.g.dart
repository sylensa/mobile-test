// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'culture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CulturesResponse _$$_CulturesResponseFromJson(Map<String, dynamic> json) =>
    _$_CulturesResponse(
      cultures: (json['cultures'] as List<dynamic>)
          .map((e) => Culture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CulturesResponseToJson(_$_CulturesResponse instance) =>
    <String, dynamic>{
      'cultures': instance.cultures,
    };

_$_Culture _$$_CultureFromJson(Map<String, dynamic> json) => _$_Culture(
      appId: json['appId'] as String,
      culture: json['culture'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CultureToJson(_$_Culture instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'culture': instance.culture,
      'name': instance.name,
    };
