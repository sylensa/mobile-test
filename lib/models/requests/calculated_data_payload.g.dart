// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_data_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatedDataPayload _$$_CalculatedDataPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CalculatedDataPayload(
      fromDate: json['fromDate'] as String,
      toDate: json['toDate'] as String,
      ioId: json['ioId'] as String,
      farmId: json['farmId'] as String,
    );

Map<String, dynamic> _$$_CalculatedDataPayloadToJson(
        _$_CalculatedDataPayload instance) =>
    <String, dynamic>{
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'ioId': instance.ioId,
      'farmId': instance.farmId,
    };
