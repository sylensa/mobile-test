import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_unit_graphs_response.freezed.dart';
part 'crop_unit_graphs_response.g.dart';

@freezed
class CropUnitGraph with _$CropUnitGraph {
  const factory CropUnitGraph({
    required String graphKey,
    required Map<String, dynamic> measurementData,
  }) = _CropUnitGraph;

  factory CropUnitGraph.fromJson(Map<String, dynamic> json) =>
      _$CropUnitGraphFromJson(json);
}

@freezed
class MeasurementData with _$MeasurementData {
  const factory MeasurementData({
    required String ioId,
    required String itemId,
    required String graphColor,
    required String graphType,
    required String uom,
    required List<Map<String, dynamic>> mesaurementData,
  }) = _MeasurementData;

  factory MeasurementData.fromJson(Map<String, dynamic> json) =>
      _$MeasurementDataFromJson(json);
}

@freezed
class MeasurementPoint with _$MeasurementPoint {
  const factory MeasurementPoint({
required String measurementDate,
    required num measurementValue
  }) = _MeasurementPoint;

  factory MeasurementPoint.fromJson(Map<String, dynamic> json) =>
      _$MeasurementPointFromJson(json);
}