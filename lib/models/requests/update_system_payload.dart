import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_system_payload.freezed.dart';
part 'update_system_payload.g.dart';

@freezed
class UpdateSystemPayload with _$UpdateSystemPayload {
  const factory UpdateSystemPayload({
    required String culture,
    required String unitsSystem,
  }) = _UpdateSystemPayload;

  factory UpdateSystemPayload.fromJson(Map<String, dynamic> json) =>
      _$UpdateSystemPayloadFromJson(json);
}