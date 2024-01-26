import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_item_group_payload.freezed.dart';
part 'add_item_group_payload.g.dart';

@freezed
class AddItemGroupPayload with _$AddItemGroupPayload {
  const factory AddItemGroupPayload({
    required String deviceUuid,
    required String label,
    String? thingId,
  }) = _AddItemGroupPayload;

  factory AddItemGroupPayload.fromJson(Map<String, dynamic> json) =>
      _$AddItemGroupPayloadFromJson(json);
}