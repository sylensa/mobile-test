// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_unit_graphs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CropUnitGraph _$$_CropUnitGraphFromJson(Map<String, dynamic> json) =>
    _$_CropUnitGraph(
      graphKey: json['graphKey'] as String,
      measurementData: json['measurementData'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_CropUnitGraphToJson(_$_CropUnitGraph instance) =>
    <String, dynamic>{
      'graphKey': instance.graphKey,
      'measurementData': instance.measurementData,
    };

_$_MeasurementData _$$_MeasurementDataFromJson(Map<String, dynamic> json) =>
    _$_MeasurementData(
      ioId: json['ioId'] as String,
      itemId: json['itemId'] as String,
      graphColor: json['graphColor'] as String,
      graphType: json['graphType'] as String,
      uom: json['uom'] as String,
      mesaurementData: (json['mesaurementData'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_MeasurementDataToJson(_$_MeasurementData instance) =>
    <String, dynamic>{
      'ioId': instance.ioId,
      'itemId': instance.itemId,
      'graphColor': instance.graphColor,
      'graphType': instance.graphType,
      'uom': instance.uom,
      'mesaurementData': instance.mesaurementData,
    };

_$_MeasurementPoint _$$_MeasurementPointFromJson(Map<String, dynamic> json) =>
    _$_MeasurementPoint(
      measurementDate: json['measurementDate'] as String,
      measurementValue: json['measurementValue'] as num,
    );

Map<String, dynamic> _$$_MeasurementPointToJson(_$_MeasurementPoint instance) =>
    <String, dynamic>{
      'measurementDate': instance.measurementDate,
      'measurementValue': instance.measurementValue,
    };
