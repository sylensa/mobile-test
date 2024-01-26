import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/crop_unit.dart';

import 'irrigation_block.dart';

part 'farm_tree_response.freezed.dart';

part 'farm_tree_response.g.dart';

@freezed
class FarmTreeResponse with _$FarmTreeResponse {
  const factory FarmTreeResponse({
    required String thingId,
    required String farmId,
    required int companyId,
    required List<IrrigationBlock> irrigationBlocks,
    required List<CropUnit> cropUnits,
  }) = _FarmTreeResponse;

  factory FarmTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$FarmTreeResponseFromJson(json);
}
