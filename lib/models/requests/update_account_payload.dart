import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_account_payload.freezed.dart';

part 'update_account_payload.g.dart';

@freezed
class UpdateAccountPayload with _$UpdateAccountPayload {
  const factory UpdateAccountPayload({
    required String email,
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) = _UpdateAccountPayload;

  factory UpdateAccountPayload.fromJson(Map<String, dynamic> json) =>
      _$UpdateAccountPayloadFromJson(json);
}
