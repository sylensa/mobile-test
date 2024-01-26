import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/devices/base.dart';
import 'package:netafim_mobile/models/devices/repeater.dart';

import 'remote.dart';
import 'root.dart';

part 'devices_tree_response.freezed.dart';

part 'devices_tree_response.g.dart';

@freezed
class DevicesTree with _$DevicesTree {
  const factory DevicesTree({
    required Root root,
    @Default([]) List<Base> bases,
    @Default([]) List<Repeater> repeaters,
    @Default([]) List<Remote> remotes,
  }) = _DevicesTree;

  factory DevicesTree.fromJson(Map<String, dynamic> json) =>
      _$DevicesTreeFromJson(json);
}
