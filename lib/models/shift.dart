import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'shift.freezed.dart';

part 'shift.g.dart';

@freezed
class Shift with _$Shift {
  const factory Shift({
    required int number,
    bool? active,
    int? factor,
    String? recipeName,
    num? quantity,
    String? quantityUom,
    num? depth,
    String? depthUom,
    String? time,
    @Default(false) bool isAlerted,
    List<Valve>? valves,
  }) = _Shift;

  const Shift._();

  /// How the following method get the water balance in percent?
  /// a. Get the first valve with the given [irrigationBlockId]
  /// b. Get the [waterBalanceInPercent] from the valve
  /// c. Return the [waterBalanceInPercent]
  double? waterBalanceInPercent(String irrigationBlockId) {
    final valve = valves?.firstWhereOrNull(
      (valve) => valve.irrigationBlockId == irrigationBlockId,
    );
    return valve?.waterBalanceInPercent;
  }

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}

@freezed
class Alarm with _$Alarm {
  const factory Alarm({
    int? type,
    String? status,
    String? severity,
    String? itemId,
  }) = _Alarm;

  factory Alarm.fromJson(Map<String, dynamic> json) => _$AlarmFromJson(json);
}

@freezed
class Valve with _$Valve {
  const factory Valve({
    String? ioId,
    String? itemId,
    int? valveId,
    bool? isIrrigating,
    double? waterBalanceInMm,
    String? irrigationBlockId,
    String? irrigationBlockName,
    double? waterBalanceInPercent,
  }) = _Valve;

  factory Valve.fromJson(Map<String, dynamic> json) => _$ValveFromJson(json);
}
