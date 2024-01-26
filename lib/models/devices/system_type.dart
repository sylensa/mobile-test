import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_type.freezed.dart';
part 'system_type.g.dart';

@freezed
class SystemType with _$SystemType {
  const factory SystemType({
    required int id,
    required String key,
    required String icon,
  }) = _SystemType;

  factory SystemType.fromJson(Map<String, dynamic> json) =>
      _$SystemTypeFromJson(json);
}