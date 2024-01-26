import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'io_type.freezed.dart';
part 'io_type.g.dart';

@freezed
class IoType with _$IoType {
  const factory IoType({
    int? id,
    String? name,
    String? description,
  }) = _IoType;

  factory IoType.fromJson(Map<String, dynamic> json) =>
      _$IoTypeFromJson(json);
}