
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/devices/io.dart';

import 'io_device_type.dart';
import 'io_type.dart';
import 'item.dart';

part 'io_group.freezed.dart';
part 'io_group.g.dart';

@freezed
class IoGroup with _$IoGroup {
  const factory IoGroup({
    required String ioGroupId,
    String? unitId,
    IoType? ioType,
    String? channelId,
    List<IO>? ios,
    String? name,
    required IoDeviceType ioDeviceType,
    @Default(false) bool isActive,
    List<Item>? items,
    required String farmId,
  }) = _IoGroup;



  factory IoGroup.fromJson(Map<String, dynamic> json) =>
      _$IoGroupFromJson(json);
}