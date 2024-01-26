import 'package:freezed_annotation/freezed_annotation.dart';

import 'channel.dart';
import 'geolocation.dart';
import 'io_group.dart';
import 'system_type.dart';
import 'unit_type.dart';

part 'base.freezed.dart';

part 'base.g.dart';

@freezed
class Base with _$Base {
  const factory Base({
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
  }) = _Base;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
}
