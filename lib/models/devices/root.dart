import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/devices/base.dart';
import 'package:netafim_mobile/models/devices/remote.dart';
import 'package:netafim_mobile/models/devices/repeater.dart';

import 'channel.dart';
import 'geolocation.dart';
import 'io_group.dart';
import 'system_type.dart';
import 'unit_type.dart';


part 'root.freezed.dart';
part 'root.g.dart';

@freezed
class Root with _$Root {
  const factory Root({
    required String id,
    required String deviceId,
    String? parentId,
    required String farmId,
    required String deviceName,
    UnitType? unitType,
    SystemType? systemType,
    Geolocation? geolocation,
    required bool isActive,
    required String createdDateUtc,
    @Default([]) List<Channel> channels,
    @Default([]) List<IoGroup> ioGroups,
  }) = _Root;

  factory Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);
}
