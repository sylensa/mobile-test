import 'package:freezed_annotation/freezed_annotation.dart';

part 'alarm.freezed.dart';

part 'alarm.g.dart';

@freezed
class Alarm with _$Alarm {
  const factory Alarm({
    required String id,
    required String partitionKey,
    required String farmId,
    required String deviceUuid,
    required String thingId,
    required bool isActive,
    required String status,
    String? startTimestamp,
    String? endTimestamp,
    required String severity,
    required String alarmType,
    String? alertedDeviceName,
    String? source,
    int? programId,
    String? programUuid,
    String? programName,
    int? shiftId,
    required String createdTimestamp,
    String? updatedTimestamp,
  }) = _Alarm;

  factory Alarm.fromJson(Map<String, dynamic> json) => _$AlarmFromJson(json);
}
