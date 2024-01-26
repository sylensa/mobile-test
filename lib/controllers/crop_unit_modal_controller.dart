import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/models/crop_unit.dart';
import 'package:netafim_mobile/states/crop_unit_modal_state.dart';
import 'crop_units_controller.dart';
import 'package:collection/collection.dart';

import 'graph_selection_controller.dart';

final cropUnitModalProvider =
    Provider.autoDispose.family<CropUnitModalState?, String>((ref, cropUnitId) {
  final cropUnits = ref.watch(cropUnitsMapProvider);
  final nextIrrigation =
      ref.watch(cropUnitNextIrrigationStateProvider(cropUnitId));
  final lastIrrigation =
      ref.watch(cropUnitLastIrrigationStateProvider(cropUnitId));
  final DashboardCropUnit? cropUnit = cropUnits[cropUnitId];
  if (cropUnit == null) return null;
  final shiftNumber = cropUnit.irrigationProgram?.currentShiftNumber;
  final currentShift = cropUnit.irrigationProgram?.shifts
      .firstWhereOrNull((element) => element.number == shiftNumber);

  final program = cropUnit.irrigationProgram;
  String? lastRead;
  if (cropUnit.leadingSensor != null) {
    lastRead =
        ref.watch(lastReadIODataProvider(cropUnit.leadingSensor!.sensorId));
  }
  return CropUnitModalState(
    name: cropUnit.name,
    colorHexCode: cropUnit.colorHexCode,
    irrigationQuantity:
        '${cropUnit.irrigationProgram?.irrigationQuantity ?? ''} ${cropUnit.irrigationProgram?.irrigationQuantityUom ?? ''}',
    nextIrrigation: nextIrrigation,
    lastIrrigation: lastIrrigation,
    waterBalance:
        '${cropUnit.calculatedWaterBalance ?? ''} ${cropUnit.calcWaterBalanceUom ?? ''}',
    dosing: currentShift?.recipeName ?? '-',
    blockName: cropUnit.leadingSensor?.blockName ?? '-',
    sensorName: cropUnit.leadingSensor?.sensorName ?? '-',
    lastMeasurement: lastRead ?? '-',
    showAlarm: false,
    isConnectedToCropProtocol: cropUnit.cropProtocolId != null,
    showController: cropUnit.showController,
    showPinIcon: cropUnit.showPinIcon,
    showCloudIcon: cropUnit.showCloudIcon,
    showLeafIcon: cropUnit.showLeafIcon,
    showDeliveryProgress:
        cropUnit.irrigationProgram?.isCropUnitIrrigating ?? false,
    deliveryProgress: program?.deliveryTimeProgress ?? 0,
    shiftsProgress: program?.shiftsProgress ?? '',
  );
});

final openedCropUnitIdProvider = StateProvider<String?>((ref) => null);
