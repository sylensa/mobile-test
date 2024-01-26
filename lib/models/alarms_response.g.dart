// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlarmsResponse _$$_AlarmsResponseFromJson(Map<String, dynamic> json) =>
    _$_AlarmsResponse(
      value: (json['value'] as List<dynamic>)
          .map((e) => Alarm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlarmsResponseToJson(_$_AlarmsResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
