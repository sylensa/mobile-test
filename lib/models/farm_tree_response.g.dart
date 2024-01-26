// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_tree_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmTreeResponse _$$_FarmTreeResponseFromJson(Map<String, dynamic> json) =>
    _$_FarmTreeResponse(
      thingId: json['thingId'] as String,
      farmId: json['farmId'] as String,
      companyId: json['companyId'] as int,
      irrigationBlocks: (json['irrigationBlocks'] as List<dynamic>)
          .map((e) => IrrigationBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      cropUnits: (json['cropUnits'] as List<dynamic>)
          .map((e) => CropUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FarmTreeResponseToJson(_$_FarmTreeResponse instance) =>
    <String, dynamic>{
      'thingId': instance.thingId,
      'farmId': instance.farmId,
      'companyId': instance.companyId,
      'irrigationBlocks': instance.irrigationBlocks,
      'cropUnits': instance.cropUnits,
    };
