import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'culture.freezed.dart';

part 'culture.g.dart';

@freezed
class CulturesResponse with _$CulturesResponse {
  const factory CulturesResponse({
    required List<Culture> cultures,
  }) = _CulturesResponse;

  factory CulturesResponse.fromJson(Map<String, dynamic> json) =>
      _$CulturesResponseFromJson(json);
}

@freezed
class Culture with _$Culture {
  const factory Culture({
    required String appId,
    required String culture,
    required String name,
  }) = _Culture;

  factory Culture.fromJson(Map<String, dynamic> json) =>
      _$CultureFromJson(json);
}
