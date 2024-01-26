import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'farms_response.freezed.dart';

part 'farms_response.g.dart';

@freezed
class FarmsResponse with _$FarmsResponse {
  const factory FarmsResponse({
    required List<Farm> farms,
  }) = _FarmsResponse;

  factory FarmsResponse.fromJson(Map<String, dynamic> json) =>
      _$FarmsResponseFromJson(json);
}

@freezed
class Farm with _$Farm {
  const factory Farm({
    required List<String> roles,
    required String farmId,
    required String farmName,
    required String systemTypeId,
    required int productId,
    String? productVersion,
    int? enterpriseId,
    String? enterpriseName,
    String? platformType,
    String? siteId,
    String? areaId,
    String? pcsId,
    String? pid,
    double? latitude,
    double? longitude,
    int? elevation,
    String? firstDayOfWeek,
    String? dataServer,
    String? address,
    String? zipCode,
    String? city,
    String? state,
    String? countrySubdivisionCode,
    String? country,
    String? countryCode,
    String? createdTimestampUTC,
    bool? isDisabled,
    String? disabledTimestampUtc,
    bool? isDeleted,
    String? deletedTimestampUtc,
    TimeZoneInfo? timeZoneInfo,
  }) = _Farm;

  factory Farm.fromJson(Map<String, dynamic> json) => _$FarmFromJson(json);
}

@freezed
class TimeZoneInfo with _$TimeZoneInfo {
  const factory TimeZoneInfo({
    String? timezoneId,
    String? windowsTimeZone,
  }) = _TimeZoneInfo;

  factory TimeZoneInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneInfoFromJson(json);
}
