import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_status.freezed.dart';

part 'device_status.g.dart';

@freezed
class DeviceStatus with _$DeviceStatus {
  const factory DeviceStatus({
    required String deviceId,
    required String unitId,
    required num rssi,
    String? rssiCode,
    num? voltage,
    num? temperature,
    num? battery,
    bool? acOk,
    DateTime? currentTime,
    String? fwVersion,
    DateTime? lastTransmission,
  }) = _DeviceStatus;

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusFromJson(json);
}
