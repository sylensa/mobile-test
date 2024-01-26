
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'channel.dart';
import 'geolocation.dart';
import 'io_group.dart';
import 'system_type.dart';
import 'unit_type.dart';

part 'remote.freezed.dart';
part 'remote.g.dart';

@freezed
class Remote with _$Remote {
  const factory Remote({
    required String id,
    required String deviceId,
    required String deviceName,
    required String parentId,
    required String farmId,
    UnitType? unitType,
    SystemType? systemType,
    Geolocation? geolocation,
    @Default(true) bool isActive,
    @Default([]) List<Channel> channels,
    @Default([]) List<IoGroup> ioGroups,
  }) = _Remote;

  factory Remote.fromJson(Map<String, dynamic> json) =>
      _$RemoteFromJson(json);
}