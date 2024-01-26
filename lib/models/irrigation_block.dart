import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/status_color.dart';

import 'item_group.dart';

part 'irrigation_block.freezed.dart';

part 'irrigation_block.g.dart';

@freezed
class IrrigationBlock with _$IrrigationBlock {
  const factory IrrigationBlock({
    required String id,
    required String irrigationBlockName,
    String? cropUnitId,
    String? farmId,
    Measure? irrigationBlockArea,
    Measure? manualIrrigationBlockArea,
    int? soilTypeId,
    Measure? flowRate,
    Measure? irrigationRate,
    Measure? manualIrrigationRate,
    int? cropId,
    int? varietyId,
    int? irrigationMethodId,
    List<dynamic>? sensors,
    List<dynamic>? valves,
    List<dynamic>? meters,
    IrrigationBlockData? data,
    double? waterBalanceInPercent,
  }) = _IrrigationBlock;

  const IrrigationBlock._();

  StatusColor get waterBalanceColor {
    if (waterBalanceInPercent == null || waterBalanceInPercent == 0) {
      return StatusColor.transparent;
    }
    if (waterBalanceInPercent! > 30) return StatusColor.green;
    if (waterBalanceInPercent! < -30) return StatusColor.red;
    return StatusColor.orange;
  }

  factory IrrigationBlock.fromJson(Map<String, dynamic> json) =>
      _$IrrigationBlockFromJson(json);
}

@freezed
class IrrigationBlockData with _$IrrigationBlockData {
  const factory IrrigationBlockData({
    Geolocation? geolocation,
    List<ItemGroup>? itemGroups,
  }) = _IrrigationBlockData;

  factory IrrigationBlockData.fromJson(Map<String, dynamic> json) =>
      _$IrrigationBlockDataFromJson(json);
}

@freezed
class Geolocation with _$Geolocation {
  const factory Geolocation({
    required String id,
    required String geolocationType,
    required List<Location> vertices,
    required dynamic radius,
    required dynamic area,
    required dynamic bounds,
    required dynamic description,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Measure with _$Measure {
  const factory Measure({
    dynamic uom,
    num? value,
  }) = _Measure;

  factory Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);
}
