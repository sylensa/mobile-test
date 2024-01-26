// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threshold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Threshold _$$_ThresholdFromJson(Map<String, dynamic> json) => _$_Threshold(
      id: json['id'] as String?,
      thresholdType: json['thresholdType'] as String?,
      value: json['value'] as num?,
      uom: json['uom'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      ioId: json['ioId'] as String?,
      isActive: json['isActive'] as bool?,
      isSystemAlert: json['isSystemAlert'] as bool?,
    );

Map<String, dynamic> _$$_ThresholdToJson(_$_Threshold instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thresholdType': instance.thresholdType,
      'value': instance.value,
      'uom': instance.uom,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'ioId': instance.ioId,
      'isActive': instance.isActive,
      'isSystemAlert': instance.isSystemAlert,
    };
