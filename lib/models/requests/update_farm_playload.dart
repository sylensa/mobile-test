import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_farm_playload.freezed.dart';
part 'update_farm_playload.g.dart';

@freezed
class UpdateFarmPayload with _$UpdateFarmPayload {
  const factory UpdateFarmPayload({
    required String farmName,
    String? country,
    String? countryCode,
    String? countrySubdivisionCode,//state code
    @Default('Sunday') String firstDayOfWeek,
    String? ianaTimezoneId,
  }) = _UpdateFarmPayload;

  factory UpdateFarmPayload.fromJson(Map<String, dynamic> json) =>
      _$UpdateFarmPayloadFromJson(json);
}