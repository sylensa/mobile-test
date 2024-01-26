import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_payload.freezed.dart';
part 'change_password_payload.g.dart';

@freezed
class ChangePasswordPayload with _$ChangePasswordPayload {
  const factory ChangePasswordPayload({
    required String CurrentPassword,
    required String NewPassword,
  }) = _ChangePasswordPayload;

  factory ChangePasswordPayload.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordPayloadFromJson(json);
}