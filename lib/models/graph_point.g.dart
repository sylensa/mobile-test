// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphPoint _$$_GraphPointFromJson(Map<String, dynamic> json) =>
    _$_GraphPoint(
      date: json['date'] as String,
      calcMetric: json['calcMetric'] as num,
      calcImperial: json['calcImperial'] as num,
      graphType: json['graphType'] as String,
      metricValue: json['metricValue'] as num,
      imperialValue: json['imperialValue'] as num,
      metricUom: json['metricUom'] as String? ?? '',
      imperialUom: json['imperialUom'] as String? ?? '',
    );

Map<String, dynamic> _$$_GraphPointToJson(_$_GraphPoint instance) =>
    <String, dynamic>{
      'date': instance.date,
      'calcMetric': instance.calcMetric,
      'calcImperial': instance.calcImperial,
      'graphType': instance.graphType,
      'metricValue': instance.metricValue,
      'imperialValue': instance.imperialValue,
      'metricUom': instance.metricUom,
      'imperialUom': instance.imperialUom,
    };
