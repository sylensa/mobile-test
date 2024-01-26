import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_point.freezed.dart';

part 'graph_point.g.dart';

@freezed
class GraphPoint with _$GraphPoint {
  const factory GraphPoint({
    required String date,
    required num calcMetric,
    required num calcImperial,
    required String graphType,
    required num metricValue,
    required num imperialValue,
    @Default('') String metricUom,
    @Default('') String imperialUom,
  }) = _GraphPoint;

  factory GraphPoint.fromJson(Map<String, dynamic> json) =>
      _$GraphPointFromJson(json);
}
