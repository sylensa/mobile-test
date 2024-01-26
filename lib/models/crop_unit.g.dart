// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CropUnit _$$_CropUnitFromJson(Map<String, dynamic> json) => _$_CropUnit(
      id: json['id'] as String,
      farmId: json['farmId'] as String,
      zoneId: json['zoneId'] as String?,
      cropUnitName: json['cropUnitName'] as String,
      colorHexCode: json['colorHexCode'] as String?,
      cropProtocolId: json['cropProtocolId'] as String?,
      irrigationProgramId: json['irrigationProgramId'] as String?,
      cropTypeId: json['cropTypeId'] as String?,
      irrigatonBlocks: (json['irrigatonBlocks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CropUnitToJson(_$_CropUnit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'farmId': instance.farmId,
      'zoneId': instance.zoneId,
      'cropUnitName': instance.cropUnitName,
      'colorHexCode': instance.colorHexCode,
      'cropProtocolId': instance.cropProtocolId,
      'irrigationProgramId': instance.irrigationProgramId,
      'cropTypeId': instance.cropTypeId,
      'irrigatonBlocks': instance.irrigatonBlocks,
    };

_$_DashboardCropUnit _$$_DashboardCropUnitFromJson(Map<String, dynamic> json) =>
    _$_DashboardCropUnit(
      cropUnitId: json['cropUnitId'] as String,
      cropUnitName: json['cropUnitName'] as String,
      mainlineId: json['mainlineId'] as int?,
      leadingSensor: json['leadingSensor'] == null
          ? null
          : LeadingSensor.fromJson(
              json['leadingSensor'] as Map<String, dynamic>),
      colorHexCode: json['colorHexCode'] as String?,
      syncWithController: json['syncWithController'] as bool? ?? false,
      calculatedWaterBalance:
          (json['calculatedWaterBalance'] as num?)?.toDouble(),
      minWaterBalanceInPercent:
          (json['minWaterBalanceInPercent'] as num?)?.toDouble(),
      calcWaterBalanceUom: json['calcWaterBalanceUom'] as String?,
      cropProtocolId: json['cropProtocolId'] as int?,
      shifts: (json['shifts'] as List<dynamic>?)
              ?.map((e) => Shift.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      irrigationProgram: json['irrigationProgram'] == null
          ? null
          : IrrigationProgram.fromJson(
              json['irrigationProgram'] as Map<String, dynamic>),
      irrigationProgramId: json['irrigationProgramId'] as String?,
      cropProtocolStrategyId: json['cropProtocolStrategyId'] as int?,
      irrigationBlocks: (json['irrigationBlocks'] as List<dynamic>?)
          ?.map((e) => IrrigationBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DashboardCropUnitToJson(
        _$_DashboardCropUnit instance) =>
    <String, dynamic>{
      'cropUnitId': instance.cropUnitId,
      'cropUnitName': instance.cropUnitName,
      'mainlineId': instance.mainlineId,
      'leadingSensor': instance.leadingSensor,
      'colorHexCode': instance.colorHexCode,
      'syncWithController': instance.syncWithController,
      'calculatedWaterBalance': instance.calculatedWaterBalance,
      'minWaterBalanceInPercent': instance.minWaterBalanceInPercent,
      'calcWaterBalanceUom': instance.calcWaterBalanceUom,
      'cropProtocolId': instance.cropProtocolId,
      'shifts': instance.shifts,
      'irrigationProgram': instance.irrigationProgram,
      'irrigationProgramId': instance.irrigationProgramId,
      'cropProtocolStrategyId': instance.cropProtocolStrategyId,
      'irrigationBlocks': instance.irrigationBlocks,
    };
