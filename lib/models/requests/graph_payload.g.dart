// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SensorRequest _$$_SensorRequestFromJson(Map<String, dynamic> json) =>
    _$_SensorRequest(
      sensorId: json['sensorId'] as String,
      depth: json['depth'] as int?,
    );

Map<String, dynamic> _$$_SensorRequestToJson(_$_SensorRequest instance) {
  final val = <String, dynamic>{
    'sensorId': instance.sensorId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('depth', instance.depth);
  return val;
}
