import 'package:freezed_annotation/freezed_annotation.dart';

import 'geolocation.dart';
import 'system_type.dart';
import 'unit_type.dart';


part 'repeater.freezed.dart';
part 'repeater.g.dart';

@freezed
class Repeater with _$Repeater {
  const factory Repeater({
    required String id,
    required String deviceId,
    required String parentId,
    required String deviceName,
    required String farmId,
    UnitType? unitType,
    SystemType? systemType,
    Geolocation? geolocation,
    @Default(true) bool isActive,
  }) = _Repeater;

  factory Repeater.fromJson(Map<String, dynamic> json) =>
      _$RepeaterFromJson(json);
}