// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_resources_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextResourcesResponse _$$_TextResourcesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TextResourcesResponse(
      groupedResources: (json['groupedResources'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      totalRecords: json['totalRecords'] as int,
      updateTimestamp: json['updateTimestamp'] as String,
    );

Map<String, dynamic> _$$_TextResourcesResponseToJson(
        _$_TextResourcesResponse instance) =>
    <String, dynamic>{
      'groupedResources': instance.groupedResources,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'totalRecords': instance.totalRecords,
      'updateTimestamp': instance.updateTimestamp,
    };
