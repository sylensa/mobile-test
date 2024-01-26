// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siol_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoilType _$$_SoilTypeFromJson(Map<String, dynamic> json) => _$_SoilType(
      soilTypeId: json['soilTypeId'] as int,
      soilTypeName: json['soilTypeName'] as String,
      tawInMm: json['tawInMm'] as int?,
      fcPercent: json['fcPercent'] as int?,
      wpPercent: json['wpPercent'] as int?,
      sPercent: json['sPercent'] as int?,
      bulkDensity: (json['bulkDensity'] as num?)?.toDouble(),
      cec: json['cec'] as int?,
      updatedDate: json['updatedDate'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$_SoilTypeToJson(_$_SoilType instance) =>
    <String, dynamic>{
      'soilTypeId': instance.soilTypeId,
      'soilTypeName': instance.soilTypeName,
      'tawInMm': instance.tawInMm,
      'fcPercent': instance.fcPercent,
      'wpPercent': instance.wpPercent,
      'sPercent': instance.sPercent,
      'bulkDensity': instance.bulkDensity,
      'cec': instance.cec,
      'updatedDate': instance.updatedDate,
      'isActive': instance.isActive,
    };
