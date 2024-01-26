import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_item_payload.freezed.dart';

part 'add_item_payload.g.dart';

@freezed
class AddItemPayload with _$AddItemPayload {
  const factory AddItemPayload({
    required String channelUuid,
    required String label,
    String? thingId,
    int? ioTypeId,
    int? ioDeviceTypeId,
    @Default(1) int order,
  }) = _AddItemPayload;

  factory AddItemPayload.fromJson(Map<String, dynamic> json) =>
      _$AddItemPayloadFromJson(json);
}
