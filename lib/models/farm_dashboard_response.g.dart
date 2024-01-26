// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farm_dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FarmDashboardResponse _$$_FarmDashboardResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FarmDashboardResponse(
      cropUnits: (json['cropUnits'] as List<dynamic>)
          .map((e) => DashboardCropUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
      unconnectedIrrigationBlocks: (json['unconnectedIrrigationBlocks']
                  as List<dynamic>?)
              ?.map((e) => IrrigationBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FarmDashboardResponseToJson(
        _$_FarmDashboardResponse instance) =>
    <String, dynamic>{
      'cropUnits': instance.cropUnits,
      'unconnectedIrrigationBlocks': instance.unconnectedIrrigationBlocks,
    };
