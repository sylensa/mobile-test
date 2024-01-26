import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_unit_modal_state.freezed.dart';

@freezed
class CropUnitModalState with _$CropUnitModalState {
  const factory CropUnitModalState({
    required String name,
    String? colorHexCode,
    @Default('-') String irrigationQuantity,
    @Default('-') String nextIrrigation,
    @Default('-') String lastIrrigation,
    @Default('-') String waterBalance,
    @Default('-') String dosing,
    String? blockName,
    String? sensorName,
    @Default('-') String? lastMeasurement,
    @Default('-') String shiftsProgress,
    @Default(false) bool showAlarm,
    @Default(false) bool isConnectedToCropProtocol,
    @Default(false) bool showController,
    @Default(false) bool showPinIcon,
    @Default(false) bool showCloudIcon,
    @Default(false) bool showLeafIcon,
    @Default(false) bool showDeliveryProgress,
    @Default(0.0) double deliveryProgress,
  }) = _CropUnitModalState;
}
