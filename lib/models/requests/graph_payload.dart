import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_payload.freezed.dart';

part 'graph_payload.g.dart';

@freezed
class SensorRequest with _$SensorRequest {
  const factory SensorRequest({
    required String sensorId,
    @JsonKey(includeIfNull: false) int? depth,
  }) = _SensorRequest;

  factory SensorRequest.fromJson(Map<String, dynamic> json) =>
      _$SensorRequestFromJson(json);
}

class GraphPayload {
  String dateFrom;
  String dateTo;
  List<SensorRequest> sensorsRequests;

  GraphPayload({required this.dateFrom,
    required this.dateTo,
    this.sensorsRequests = const []});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['dateFrom'] = dateFrom;
    data['dateTo'] = dateTo;
    data['sensorsRequests'] = (sensorsRequests).map((v) => v.toJson()).toList();
    return data;
  }
}
