import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_type.freezed.dart';
part 'unit_type.g.dart';

@freezed
class UnitType with _$UnitType {
  const factory UnitType({
    required String key,
    required int id,
  }) = _UnitType;

  factory UnitType.fromJson(Map<String, dynamic> json) =>
      _$UnitTypeFromJson(json);
}
