import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewable_sensor.freezed.dart';

@freezed
class ViewableSensor with _$ViewableSensor {
  const factory ViewableSensor({
    required String id,
    String? label,
    int? depth,
    String? depthUom,
    String? thingId,
    int? ioTypeId,
    int? ioDeviceTypeId,
  }) = _ViewableSensor;
}
