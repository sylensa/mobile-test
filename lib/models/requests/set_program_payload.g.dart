// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_program_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetProgramPayload _$$_SetProgramPayloadFromJson(Map<String, dynamic> json) =>
    _$_SetProgramPayload(
      programId: json['programId'] as String,
      cropUnitId: json['cropUnitId'] as String,
      deviceUuid: json['deviceUuid'] as String?,
      valueType: json['valueType'] as String,
      valuePerShift: json['valuePerShift'] as String,
      startTime: json['startTime'] as String? ?? '00:00:00',
      endDate: json['endDate'] as String?,
      shifts: (json['shifts'] as List<dynamic>?)
              ?.map((e) => ShiftPayload.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dosingWeekDays: (json['dosingWeekDays'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, (e as List<dynamic>).map((e) => e as int).toList()),
          ) ??
          const {},
      irrigationWeekDays: (json['irrigationWeekDays'] as Map<String, dynamic>?)
              ?.map(
            (k, e) =>
                MapEntry(k, (e as List<dynamic>).map((e) => e as int).toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_SetProgramPayloadToJson(
        _$_SetProgramPayload instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'cropUnitId': instance.cropUnitId,
      'deviceUuid': instance.deviceUuid,
      'valueType': instance.valueType,
      'valuePerShift': instance.valuePerShift,
      'startTime': instance.startTime,
      'endDate': instance.endDate,
      'shifts': instance.shifts,
      'dosingWeekDays': instance.dosingWeekDays,
      'irrigationWeekDays': instance.irrigationWeekDays,
    };

_$_ShiftPayload _$$_ShiftPayloadFromJson(Map<String, dynamic> json) =>
    _$_ShiftPayload(
      shiftId: json['shiftId'] as int,
      active: json['active'] as bool,
      factor: json['factor'] as int,
    );

Map<String, dynamic> _$$_ShiftPayloadToJson(_$_ShiftPayload instance) =>
    <String, dynamic>{
      'shiftId': instance.shiftId,
      'active': instance.active,
      'factor': instance.factor,
    };
