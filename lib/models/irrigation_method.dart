import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'irrigation_method.freezed.dart';
part 'irrigation_method.g.dart';

@freezed
class IrrigationMethod with _$IrrigationMethod {
  const factory IrrigationMethod({
    required int irrigationMethodId,
    required String irrigationMethodName,
    required bool isActive,
  }) = _IrrigationMethod;

  factory IrrigationMethod.fromJson(Map<String, dynamic> json) =>
      _$IrrigationMethodFromJson(json);
}