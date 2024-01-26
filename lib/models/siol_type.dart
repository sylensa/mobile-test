import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'siol_type.freezed.dart';
part 'siol_type.g.dart';

@freezed
class SoilType with _$SoilType {
  const factory SoilType({
    required int soilTypeId,
    required String soilTypeName,
    int? tawInMm,
    int? fcPercent,
    int? wpPercent,
    int? sPercent,
    double? bulkDensity,
    int? cec,
    String? updatedDate,
    bool? isActive,
  }) = _SoilType;

  factory SoilType.fromJson(Map<String, dynamic> json) =>
      _$SoilTypeFromJson(json);
}