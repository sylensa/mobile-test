import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:netafim_mobile/models/shift.dart';
import 'package:netafim_mobile/models/status_color.dart';
import 'package:netafim_mobile/utils/date_time_ex.dart';

part 'irrigation_program.freezed.dart';

part 'irrigation_program.g.dart';

@freezed
class IrrigationProgram with _$IrrigationProgram {
  const factory IrrigationProgram({
    required String irrigationProgramId,
    required String cropUnitId,
    String? programType,
    num? irrigationQuantity,
    String? irrigationQuantityUom,
    num? deliveredQty,
    int? weekCycle,
    String? plannedTime,
    num? deliveredTime,
    String? uomDepth,
    num? actualDepth,
    num? plannedDepth,
    num? deliveredDepth,
    num? remainDepth,
    num? remainingTime,
    int? totalShifts,
    int? currentShiftNumber,
    String? lastIrrigation,
    String? nextIrrigation,
    String? endDate,
    required String deviceUuid,
    @Default({}) Map<String, List<int>> irrigationWeekDays,
    @Default({}) Map<String, List<int>> dosingWeekDays,
    required List<Shift> shifts,
    @Default(0) int programStatus,
  }) = _IrrigationProgram;

  const IrrigationProgram._();

  String get irrigationValue {
    if (shifts.isEmpty) {
      return "";
    }
    Set<String?> values = {};
    for (var shift in shifts) {
      if (programType == "Time") {
        values.add(shift.time);
      } else if (programType == "Quantity") {
        values.add(shift.quantity.toString());
      } else if (programType == "Depth") {
        values.add(shift.depth.toString());
      }
    }
    String uom = "";
    if (programType == "Depth") {
      uom = shifts.first.depthUom!;
    } else if (programType == "Quantity") {
      uom = shifts.first.quantityUom!;
    }
    return values.length == 1 ? '${values.first!} $uom' : "Multi";
  }

  Shift? get currentShift {
    if (shifts.isEmpty) {
      return null;
    }
    return shifts.firstWhereOrNull((element) => element.number == currentShiftNumber);
  }

  bool get isCropUnitIrrigating {
    return shifts.any((shift) =>
        shift.valves?.any((valve) => valve.isIrrigating == true) ?? false);
  }

  bool get isCropUnitIrrigatedToday {
    final lastIrrigationTime = DateTime.tryParse(lastIrrigation ?? '');
    if (lastIrrigationTime == null) {
      return false;
    }
    final now = DateTime.now();
    if (lastIrrigationTime.sameDayAs(now) && now.isAfter(lastIrrigationTime)) {
      return true;
    }
    return false;
  }

  bool get isIrrigatedToday {
    final lastIrrigationTime = DateTime.tryParse(lastIrrigation ?? '');
    if (lastIrrigationTime == null) {
      return false;
    }
    final now = DateTime.now();
    if (lastIrrigationTime.sameDayAs(now) && now.isAfter(lastIrrigationTime)) {
      return true;
    }
    return false;
  }

  bool get willBeIrrigatedToday {
    final nextIrrigationTime = DateTime.tryParse(nextIrrigation ?? '');
    if (nextIrrigationTime == null) {
      return false;
    }
    final now = DateTime.now();
    if (nextIrrigationTime.sameDayAs(now) && now.isBefore(nextIrrigationTime)) {
      return true;
    }
    return false;
  }

  StatusColor get irrigationColor {
    if (isCropUnitIrrigating) {
      return StatusColor.blue;
    }
    if (isIrrigatedToday) {
      return StatusColor.green;
    }
    if (willBeIrrigatedToday) {
      return StatusColor.transparent;
    }
    return StatusColor.transparent;
  }

  bool get showResumeButton => programStatus == 2;

  bool get showStartButton => programStatus != 2;

  double get deliveryTimeProgress {
    num deliveryProgress = 0;
    if ((deliveredTime ?? 0) != 0 && (remainingTime ?? 0) != 0) {
      deliveryProgress = deliveredTime! / (deliveredTime! + remainingTime!);
    }
    return deliveryProgress.toDouble();
  }

  String get shiftsProgress {
    String progress = '';
    if ((currentShiftNumber ?? 0) != 0 && (totalShifts ?? 0) != 0) {
      progress = 'Shift $currentShiftNumber / $totalShifts';
    }
    return progress;
  }

  factory IrrigationProgram.fromJson(Map<String, dynamic> json) =>
      _$IrrigationProgramFromJson(json);
}
