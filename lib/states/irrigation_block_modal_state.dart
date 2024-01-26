import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'irrigation_block_modal_state.freezed.dart';

@freezed
class IrrigationBlockModalState with _$IrrigationBlockModalState {
  const factory IrrigationBlockModalState({
    required String name,
    required String cropUnitName,
    required String area,
    required String leadingSensor,
    String? colorHexCode,
  }) = _IrrigationBlockModalState;
}