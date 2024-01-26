import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leading_sensor.freezed.dart';

part 'leading_sensor.g.dart';

@freezed
class LeadingSensor with _$LeadingSensor {
  const factory LeadingSensor({
    required String sensorId,
    String? sensorName,
    double? lastMeasurement,
    String? uom,
    String? blockId,
    String? blockName,
    String? baseUuid,
    String? remoteUuid,
    String? baseId,
    String? remoteId,
  }) = _LeadingSensor;

  factory LeadingSensor.fromJson(Map<String, dynamic> json) =>
      _$LeadingSensorFromJson(json);
}
