// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Alarm _$$_AlarmFromJson(Map<String, dynamic> json) => _$_Alarm(
      id: json['id'] as String,
      partitionKey: json['partitionKey'] as String,
      farmId: json['farmId'] as String,
      deviceUuid: json['deviceUuid'] as String,
      thingId: json['thingId'] as String,
      isActive: json['isActive'] as bool,
      status: json['status'] as String,
      startTimestamp: json['startTimestamp'] as String?,
      endTimestamp: json['endTimestamp'] as String?,
      severity: json['severity'] as String,
      alarmType: json['alarmType'] as String,
      alertedDeviceName: json['alertedDeviceName'] as String?,
      source: json['source'] as String?,
      programId: json['programId'] as int?,
      programUuid: json['programUuid'] as String?,
      programName: json['programName'] as String?,
      shiftId: json['shiftId'] as int?,
      createdTimestamp: json['createdTimestamp'] as String,
      updatedTimestamp: json['updatedTimestamp'] as String?,
    );

Map<String, dynamic> _$$_AlarmToJson(_$_Alarm instance) => <String, dynamic>{
      'id': instance.id,
      'partitionKey': instance.partitionKey,
      'farmId': instance.farmId,
      'deviceUuid': instance.deviceUuid,
      'thingId': instance.thingId,
      'isActive': instance.isActive,
      'status': instance.status,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'severity': instance.severity,
      'alarmType': instance.alarmType,
      'alertedDeviceName': instance.alertedDeviceName,
      'source': instance.source,
      'programId': instance.programId,
      'programUuid': instance.programUuid,
      'programName': instance.programName,
      'shiftId': instance.shiftId,
      'createdTimestamp': instance.createdTimestamp,
      'updatedTimestamp': instance.updatedTimestamp,
    };
