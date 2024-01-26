// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_program_state_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangeProgramStatePayload _$$_ChangeProgramStatePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_ChangeProgramStatePayload(
      programId: json['programId'] as String,
      deviceUuid: json['deviceUuid'] as String,
      cropUnitId: json['cropUnitId'] as String,
      state: json['state'] as int?,
      skipShiftWithId: json['skipShiftWithId'] as int?,
    );

Map<String, dynamic> _$$_ChangeProgramStatePayloadToJson(
    _$_ChangeProgramStatePayload instance) {
  final val = <String, dynamic>{
    'programId': instance.programId,
    'deviceUuid': instance.deviceUuid,
    'cropUnitId': instance.cropUnitId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('skipShiftWithId', instance.skipShiftWithId);
  return val;
}
