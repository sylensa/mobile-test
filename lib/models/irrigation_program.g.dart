// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irrigation_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrrigationProgram _$$_IrrigationProgramFromJson(Map<String, dynamic> json) =>
    _$_IrrigationProgram(
      irrigationProgramId: json['irrigationProgramId'] as String,
      cropUnitId: json['cropUnitId'] as String,
      programType: json['programType'] as String?,
      irrigationQuantity: json['irrigationQuantity'] as num?,
      irrigationQuantityUom: json['irrigationQuantityUom'] as String?,
      deliveredQty: json['deliveredQty'] as num?,
      weekCycle: json['weekCycle'] as int?,
      plannedTime: json['plannedTime'] as String?,
      deliveredTime: json['deliveredTime'] as num?,
      uomDepth: json['uomDepth'] as String?,
      actualDepth: json['actualDepth'] as num?,
      plannedDepth: json['plannedDepth'] as num?,
      deliveredDepth: json['deliveredDepth'] as num?,
      remainDepth: json['remainDepth'] as num?,
      remainingTime: json['remainingTime'] as num?,
      totalShifts: json['totalShifts'] as int?,
      currentShiftNumber: json['currentShiftNumber'] as int?,
      lastIrrigation: json['lastIrrigation'] as String?,
      nextIrrigation: json['nextIrrigation'] as String?,
      endDate: json['endDate'] as String?,
      deviceUuid: json['deviceUuid'] as String,
      irrigationWeekDays: (json['irrigationWeekDays'] as Map<String, dynamic>?)
              ?.map(
            (k, e) =>
                MapEntry(k, (e as List<dynamic>).map((e) => e as int).toList()),
          ) ??
          const {},
      dosingWeekDays: (json['dosingWeekDays'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, (e as List<dynamic>).map((e) => e as int).toList()),
          ) ??
          const {},
      shifts: (json['shifts'] as List<dynamic>)
          .map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
      programStatus: json['programStatus'] as int? ?? 0,
    );

Map<String, dynamic> _$$_IrrigationProgramToJson(
        _$_IrrigationProgram instance) =>
    <String, dynamic>{
      'irrigationProgramId': instance.irrigationProgramId,
      'cropUnitId': instance.cropUnitId,
      'programType': instance.programType,
      'irrigationQuantity': instance.irrigationQuantity,
      'irrigationQuantityUom': instance.irrigationQuantityUom,
      'deliveredQty': instance.deliveredQty,
      'weekCycle': instance.weekCycle,
      'plannedTime': instance.plannedTime,
      'deliveredTime': instance.deliveredTime,
      'uomDepth': instance.uomDepth,
      'actualDepth': instance.actualDepth,
      'plannedDepth': instance.plannedDepth,
      'deliveredDepth': instance.deliveredDepth,
      'remainDepth': instance.remainDepth,
      'remainingTime': instance.remainingTime,
      'totalShifts': instance.totalShifts,
      'currentShiftNumber': instance.currentShiftNumber,
      'lastIrrigation': instance.lastIrrigation,
      'nextIrrigation': instance.nextIrrigation,
      'endDate': instance.endDate,
      'deviceUuid': instance.deviceUuid,
      'irrigationWeekDays': instance.irrigationWeekDays,
      'dosingWeekDays': instance.dosingWeekDays,
      'shifts': instance.shifts,
      'programStatus': instance.programStatus,
    };
