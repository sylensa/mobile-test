import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_district.freezed.dart';
part 'state_district.g.dart';

@freezed
class StateDistrict with _$StateDistrict {
  const factory StateDistrict({
    required String stateIsoCode,
    required String name,
    String? countryIsoCode,
    String? type,
  }) = _StateDistrict;

  factory StateDistrict.fromJson(Map<String, dynamic> json) =>
      _$StateDistrictFromJson(json);
}