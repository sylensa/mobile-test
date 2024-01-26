import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/devices/io_device_type.dart';

import 'io_type.dart';
import 'item.dart';
import 'threshold.dart';

part 'io.freezed.dart';
part 'io.g.dart';

@freezed
class IO with _$IO {
  const factory IO({
    String? channelUuid,
    String? channelId,
    num? depth,
    String? depthUom,
    num? offset,
    num? multiplier,
    num? minValue,
    num? maxValue,
    String? name,
    int? installedDepth,
    String? deviceId,
    String? thingId,
    String? uom,
    bool? isActive,
    String? farmId,
    IoType? ioType,
    IoDeviceType? ioDeviceType,
    num? pulseVolume,
    num? coverageArea,
    List<Threshold>? thresholds,
    List<Item>? items,
    num? ioAddress,
    num? uniqueId,
    num? remoteLocal,
    num? deviceNum,
    num? mainLineId,
    num? groupId,
    num? attachId,
    num? stationId,
    num? area,
    num? nominalFlow,
    num? elevation,
    num? pressure,
    String? baseId,
    String? remoteId,
    String? baseUuid,
    String? remoteUuid,
    String? channelIdentifier,
    String? ioId,
    String? subChannel,
  }) = _IO;

  factory IO.fromJson(Map<String, dynamic> json) =>
      _$IOFromJson(json);
}