import 'package:freezed_annotation/freezed_annotation.dart';

import '../irrigation_block.dart';

part 'irrigation_block_payload.freezed.dart';
part 'irrigation_block_payload.g.dart';

@freezed
class IrrigationBlockPayload with _$IrrigationBlockPayload {
  const factory IrrigationBlockPayload({
    required String irrigationBlockName,
    required String cropUnitId,
    required String farmId,
    required double irrigationBlockArea,
    int? soilTypeId,
    required String flowRate,
    required double manualIrrigationRate,
    int? cropId,
    int? varietyId,
    int? irrigationMethodId,
    IrrigationBlockData? data,
  }) = _IrrigationBlockPayload;

  factory IrrigationBlockPayload.fromJson(Map<String, dynamic> json) =>
      _$IrrigationBlockPayloadFromJson(json);
}