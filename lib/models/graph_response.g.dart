// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphResponse _$$_GraphResponseFromJson(Map<String, dynamic> json) =>
    _$_GraphResponse(
      ioId: json['ioId'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GraphPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GraphResponseToJson(_$_GraphResponse instance) =>
    <String, dynamic>{
      'ioId': instance.ioId,
      'data': instance.data,
    };
