// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceStatus _$$_DeviceStatusFromJson(Map<String, dynamic> json) =>
    _$_DeviceStatus(
      deviceId: json['deviceId'] as String,
      unitId: json['unitId'] as String,
      rssi: json['rssi'] as num,
      rssiCode: json['rssiCode'] as String?,
      voltage: json['voltage'] as num?,
      temperature: json['temperature'] as num?,
      battery: json['battery'] as num?,
      acOk: json['acOk'] as bool?,
      currentTime: json['currentTime'] == null
          ? null
          : DateTime.parse(json['currentTime'] as String),
      fwVersion: json['fwVersion'] as String?,
      lastTransmission: json['lastTransmission'] == null
          ? null
          : DateTime.parse(json['lastTransmission'] as String),
    );

Map<String, dynamic> _$$_DeviceStatusToJson(_$_DeviceStatus instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'unitId': instance.unitId,
      'rssi': instance.rssi,
      'rssiCode': instance.rssiCode,
      'voltage': instance.voltage,
      'temperature': instance.temperature,
      'battery': instance.battery,
      'acOk': instance.acOk,
      'currentTime': instance.currentTime?.toIso8601String(),
      'fwVersion': instance.fwVersion,
      'lastTransmission': instance.lastTransmission?.toIso8601String(),
    };
