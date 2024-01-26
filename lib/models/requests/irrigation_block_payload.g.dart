// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irrigation_block_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrrigationBlockPayload _$$_IrrigationBlockPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_IrrigationBlockPayload(
      irrigationBlockName: json['irrigationBlockName'] as String,
      cropUnitId: json['cropUnitId'] as String,
      farmId: json['farmId'] as String,
      irrigationBlockArea: (json['irrigationBlockArea'] as num).toDouble(),
      soilTypeId: json['soilTypeId'] as int?,
      flowRate: json['flowRate'] as String,
      manualIrrigationRate: (json['manualIrrigationRate'] as num).toDouble(),
      cropId: json['cropId'] as int?,
      varietyId: json['varietyId'] as int?,
      irrigationMethodId: json['irrigationMethodId'] as int?,
      data: json['data'] == null
          ? null
          : IrrigationBlockData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IrrigationBlockPayloadToJson(
        _$_IrrigationBlockPayload instance) =>
    <String, dynamic>{
      'irrigationBlockName': instance.irrigationBlockName,
      'cropUnitId': instance.cropUnitId,
      'farmId': instance.farmId,
      'irrigationBlockArea': instance.irrigationBlockArea,
      'soilTypeId': instance.soilTypeId,
      'flowRate': instance.flowRate,
      'manualIrrigationRate': instance.manualIrrigationRate,
      'cropId': instance.cropId,
      'varietyId': instance.varietyId,
      'irrigationMethodId': instance.irrigationMethodId,
      'data': instance.data,
    };
