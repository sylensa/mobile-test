import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'alarm.dart';

part 'alarms_response.freezed.dart';

part 'alarms_response.g.dart';

@freezed
class AlarmsResponse with _$AlarmsResponse {
  const factory AlarmsResponse({
    required List<Alarm> value,
  }) = _AlarmsResponse;

  factory AlarmsResponse.fromJson(Map<String, dynamic> json) =>
      _$AlarmsResponseFromJson(json);
}
