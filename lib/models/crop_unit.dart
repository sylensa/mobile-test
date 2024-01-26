import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/irrigation_program.dart';
import 'package:netafim_mobile/models/leading_sensor.dart';
import 'package:netafim_mobile/models/shift.dart';
import 'package:collection/collection.dart';
import 'package:netafim_mobile/models/status_color.dart';

part 'crop_unit.freezed.dart';

part 'crop_unit.g.dart';

@freezed
class CropUnit with _$CropUnit {
  const factory CropUnit({
    required String id,
    required String farmId,
    String? zoneId,
    required String cropUnitName,
    String? colorHexCode,
    String? cropProtocolId,
    String? irrigationProgramId,
    String? cropTypeId,
    List<String>? irrigatonBlocks,
  }) = _CropUnit;

  factory CropUnit.fromJson(Map<String, dynamic> json) =>
      _$CropUnitFromJson(json);
}

@freezed
class DashboardCropUnit with _$DashboardCropUnit {
  const factory DashboardCropUnit({
    required String cropUnitId,
    required String cropUnitName,
    int? mainlineId,
    // String? season,
    LeadingSensor? leadingSensor,
    String? colorHexCode,
    @Default(false) bool syncWithController,
    double? calculatedWaterBalance,
    double? minWaterBalanceInPercent,
    String? calcWaterBalanceUom,
    int? cropProtocolId,
    @Default([]) List<Shift> shifts,
    IrrigationProgram? irrigationProgram,
    String? irrigationProgramId,
    int? cropProtocolStrategyId,
    List<IrrigationBlock>? irrigationBlocks,
  }) = _DashboardCropUnit;

  const DashboardCropUnit._();

  String get name{
    if(mainlineId == null) return cropUnitName;
    return '$cropUnitName (M$mainlineId)';
  }
  bool get showController => irrigationProgramId != null;

  bool get showPinIcon => cropProtocolStrategyId == 1; //fixed
  bool get showCloudIcon => cropProtocolStrategyId == 2; //weather
  bool get showLeafIcon => cropProtocolStrategyId == 3; //crop model


  StatusColor get cropUnitWaterBalanceColor {
    if (minWaterBalanceInPercent == null) return StatusColor.transparent;
    if (minWaterBalanceInPercent! > 30) return StatusColor.green;
    if (minWaterBalanceInPercent! < -30) return StatusColor.red;
    return StatusColor.orange;
  }

  factory DashboardCropUnit.fromJson(Map<String, dynamic> json) =>
      _$DashboardCropUnitFromJson(json);
}
