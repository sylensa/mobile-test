import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'variety.freezed.dart';
part 'variety.g.dart';

@freezed
class Variety with _$Variety {
  const factory Variety({
    required int varietyId,
    required String varietyName,
    required int cropId,
  }) = _Variety;

  factory Variety.fromJson(Map<String, dynamic> json) =>
      _$VarietyFromJson(json);
}