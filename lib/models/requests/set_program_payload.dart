import 'package:freezed_annotation/freezed_annotation.dart';

import '../shift.dart';

part 'set_program_payload.freezed.dart';

part 'set_program_payload.g.dart';

@freezed
class SetProgramPayload with _$SetProgramPayload {
  const factory SetProgramPayload({
    required String programId,
    required String cropUnitId,
    String? deviceUuid,
    // required String unit, // "depth", "quantity", or "time"
    // required String amount,
    required String valueType, // "depth", "quantity", or "time"
    required String valuePerShift,
    @Default('00:00:00') String startTime,
    String? endDate,
    @Default([])
        List<ShiftPayload>
            shifts,// send all the shifts. set active true/false to activate/deactivate
    @Default({}) Map<String, List<int>> dosingWeekDays,
    @Default({}) Map<String, List<int>> irrigationWeekDays,
  }) = _SetProgramPayload;

  factory SetProgramPayload.fromJson(Map<String, dynamic> json) =>
      _$SetProgramPayloadFromJson(json);
}

@freezed
class ShiftPayload with _$ShiftPayload {
  const factory ShiftPayload({
    required int shiftId,
    required bool active,
    required int factor,
  }) = _ShiftPayload;

  factory ShiftPayload.fromJson(Map<String, dynamic> json) =>
      _$ShiftPayloadFromJson(json);
}