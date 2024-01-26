// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_device_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddDevicePayload _$$_AddDevicePayloadFromJson(Map<String, dynamic> json) =>
    _$_AddDevicePayload(
      deviceId: json['deviceId'] as String,
      password: json['password'] as String?,
      farmId: json['farmId'] as String,
      enterpriseId: json['enterpriseId'] as int,
      unitSystem: json['unitSystem'] as String,
      windowsTimeZone: json['windowsTimeZone'] as String?,
    );

Map<String, dynamic> _$$_AddDevicePayloadToJson(_$_AddDevicePayload instance) {
  final val = <String, dynamic>{
    'deviceId': instance.deviceId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  val['farmId'] = instance.farmId;
  val['enterpriseId'] = instance.enterpriseId;
  val['unitSystem'] = instance.unitSystem;
  val['windowsTimeZone'] = instance.windowsTimeZone;
  return val;
}
