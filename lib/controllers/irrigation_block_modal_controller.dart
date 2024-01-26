import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/states/irrigation_block_modal_state.dart';

import '../models/irrigation_block.dart';

final irrigationBlockModalProvider =
    Provider.autoDispose.family<IrrigationBlockModalState?, String>((ref, id) {
  final irrigationBlocks = ref.watch(allIrrigationBlocksProvider);
  final IrrigationBlock? irrigationBlock =
      irrigationBlocks.firstWhereOrNull((e) => e.id == id);
  if (irrigationBlock == null) return null;
  final cropUnit = ref.watch(cropUnitsMapProvider)[irrigationBlock.cropUnitId];
  final cropUnitName = cropUnit?.name;
  final leadingSensor = cropUnit?.leadingSensor;
  return IrrigationBlockModalState(
    name: irrigationBlock.irrigationBlockName,
    cropUnitName: cropUnitName ?? '-',
    area:
        '${irrigationBlock.irrigationBlockArea?.value} ${irrigationBlock.irrigationBlockArea?.uom.toString() ?? ''}',
    leadingSensor:
        '${leadingSensor?.sensorName ?? ''} ${leadingSensor?.lastMeasurement ?? ''}',
    colorHexCode: cropUnit?.colorHexCode,
  );
});
