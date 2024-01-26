import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop.freezed.dart';
part 'crop.g.dart';

@freezed
class Crop with _$Crop {
  const factory Crop({
    required int cropId,
    required String cropName,
    required int cropFamilyId,
    required bool isActive,
  }) = _Crop;

  factory Crop.fromJson(Map<String, dynamic> json) =>
      _$CropFromJson(json);
}