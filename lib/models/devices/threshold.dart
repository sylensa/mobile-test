import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'threshold.freezed.dart';
part 'threshold.g.dart';

@freezed
class Threshold with _$Threshold {
  const factory Threshold({
    String? id,
    String? thresholdType,
    num? value,
    String? uom,
    String? startDate,
    String? endDate,
    String? ioId,
    bool? isActive,
    bool? isSystemAlert,
  }) = _Threshold;

  factory Threshold.fromJson(Map<String, dynamic> json) =>
      _$ThresholdFromJson(json);
}
