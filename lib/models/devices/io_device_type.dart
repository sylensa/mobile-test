import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'io_device_type.freezed.dart';
part 'io_device_type.g.dart';

@freezed
class IoDeviceType with _$IoDeviceType {
  const factory IoDeviceType({
    required int id,
    required String name,
    String? metricUom,
    String? imperialUom,
    String? icon,
    required int ioTypeId,
    String? shortCode,
    String? graphType,
    num? minValue,
    num? maxValue,
  }) = _IoDeviceType;

  factory IoDeviceType.fromJson(Map<String, dynamic> json) =>
      _$IoDeviceTypeFromJson(json);
}
