import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_payload.freezed.dart';

part 'add_device_payload.g.dart';

@freezed
class AddDevicePayload with _$AddDevicePayload {
  const factory AddDevicePayload({
    required String deviceId,
    @JsonKey(includeIfNull: false) String? password,
    required String farmId,
    required int enterpriseId,
    required String unitSystem,
    String? windowsTimeZone,
  }) = _AddDevicePayload;

  factory AddDevicePayload.fromJson(Map<String, dynamic> json) =>
      _$AddDevicePayloadFromJson(json);
}
