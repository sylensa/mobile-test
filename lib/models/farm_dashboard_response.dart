import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/crop_unit.dart';

import 'irrigation_block.dart';

part 'farm_dashboard_response.freezed.dart';
part 'farm_dashboard_response.g.dart';

@freezed
class FarmDashboardResponse with _$FarmDashboardResponse {
  const factory FarmDashboardResponse({
    required List<DashboardCropUnit> cropUnits,
    @Default([]) List<IrrigationBlock> unconnectedIrrigationBlocks,
  }) = _FarmDashboardResponse;

  factory FarmDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$FarmDashboardResponseFromJson(json);


}