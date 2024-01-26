import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'io_device_type.dart';
import 'io_type.dart';
import 'item.dart';
import 'threshold.dart';

part 'channel.freezed.dart';

part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required String channelUuid,
    required String channelId,
    int? depth,
    String? depthUom,
    num? offset,
    num? multiplier,
    num? minValue,
    num? maxValue,
    String? name,
    num? installedDepth,
    String? deviceId,
    String? thingId,
    String? uom,
    @Default(false) bool isActive,
    String? farmId,
    IoType? ioType,
    required IoDeviceType ioDeviceType,
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
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
