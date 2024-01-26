import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/models/farm_dashboard_response.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/irrigation_program.dart';
import 'package:netafim_mobile/models/status_color.dart';
import 'package:netafim_mobile/utils/date_time_ex.dart';

import '../data_sources/farms_data_source.dart';
import '../models/crop_unit.dart';
import '../network/dio_provider.dart';
import 'farms_controller.dart';

final farmDashboardProvider =
    FutureProvider.autoDispose<FarmDashboardResponse>((ref) async {
  final selectedFarmId = ref.watch(selectedFarmProvider)?.farmId;
  final systemUnit = ref.watch(farmUnitSystemProvider);
  if (selectedFarmId == null) {
    return Future.error('Loading Farms');
  }
  final response =
      await FarmsDataSource(dio).getFarmDashboard(selectedFarmId, systemUnit);
  return response;
});

final dashboardCropUnits =
    FutureProvider.autoDispose<List<DashboardCropUnit>>((ref) async {
  final farmDashboard = await ref.watch(farmDashboardProvider.future);
  return farmDashboard.cropUnits;
});
final anyCropUnitWithControllerProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(dashboardCropUnits).when(
        data: (cropUnits) => cropUnits.any((e) => e.irrigationProgram != null),
        loading: () => false,
        error: (error, stack) => false,
      );
});

final leadingSensorIdsProvider = Provider.autoDispose<List<String>>((ref) {
  return ref.watch(dashboardCropUnits).maybeWhen(
        data: (cropUnits) => [
          for (final cropUnit in cropUnits)
            if (cropUnit.leadingSensor != null) cropUnit.leadingSensor!.sensorId
        ],
        orElse: () => [],
      );
});

final allIrrigationBlocksProvider =
    Provider.autoDispose<List<IrrigationBlock>>((ref) {
  final farmDashboard = ref.watch(farmDashboardProvider);
  return farmDashboard.maybeWhen(
    data: (data) {
      final connectedBlocks = data.cropUnits
          .expand((cropUnit) => cropUnit.irrigationBlocks ?? [])
          .toList();
      return [...connectedBlocks, ...data.unconnectedIrrigationBlocks];
    },
    orElse: () => [],
  );
});

final irrigationProgramProvider =
    Provider.autoDispose.family<IrrigationProgram?, String?>((ref, cropUnitId) {
  if (cropUnitId == null) return null;
  return ref.watch(dashboardCropUnits).whenOrNull(data: (cropUnits) {
    final cropUnit =
        cropUnits.firstWhereOrNull((e) => e.cropUnitId == cropUnitId);
    return cropUnit?.irrigationProgram;
  });
});

/// key is {cropUnitId}
/// value is {DashboardCropUnit}
final cropUnitsMapProvider =
    Provider.autoDispose<Map<String, DashboardCropUnit>>((ref) {
  return ref.watch(dashboardCropUnits).when(
        data: (cropUnits) =>
            Map.fromEntries(cropUnits.map((e) => MapEntry(e.cropUnitId, e))),
        loading: () => {},
        error: (error, stack) => {},
      );
});

/// key is {irrigationBlockId}
/// value is {irrigationBlock}
final irrigationBlockMapProvider =
    Provider.autoDispose<Map<String, IrrigationBlock>>((ref) {
  return ref.watch(dashboardCropUnits).when(
        data: (cropUnits) {
          final irrigationBlocks = cropUnits
              .map((e) => e.irrigationBlocks)
              .expand((element) => element ?? [])
              .toList();
          return Map.fromEntries(
              irrigationBlocks.map((e) => MapEntry(e.id, e)));
        },
        loading: () => {},
        error: (error, stack) => {},
      );
});

final isIrrigatingProvider = Provider.autoDispose<Map<String, bool>>((ref) {
  final farmDashboard = ref.watch(dashboardCropUnits);
  return farmDashboard.when(
    data: (cropUnits) {
      return cropUnits.fold<Map<String, bool>>(
        {},
        (previousValue, cropUnit) {
          previousValue[cropUnit.cropUnitId] =
              cropUnit.irrigationProgram?.shifts.any((element) =>
                      element.valves?.first.isIrrigating ?? false) ??
                  false;
          return previousValue;
        },
      );
    },
    loading: () => {},
    error: (error, stackTrace) => {},
  );
});

/// key is {cropUnitId}
/// value is {nextIrrigation}
final nextIrrigationProvider = Provider.autoDispose<Map<String, String>>((ref) {
  final farmDashboard = ref.watch(dashboardCropUnits);
  return farmDashboard.when(
    data: (cropUnits) {
      return cropUnits.fold<Map<String, String>>(
        {},
        (previousValue, cropUnit) {
          final nextIrrigationTime = DateTime.tryParse(
              cropUnit.irrigationProgram?.nextIrrigation ?? '');
          if (nextIrrigationTime?.inThePast ?? true) {
            previousValue[cropUnit.cropUnitId] =
                nextIrrigationTime?.toTimeAgo ?? '';
          } else {
            previousValue[cropUnit.cropUnitId] =
                'In ${nextIrrigationTime?.remainingTime}' ?? '';
          }
          return previousValue;
        },
      );
    },
    loading: () => {},
    error: (error, stackTrace) => {},
  );
});

final cropUnitNextIrrigationStateProvider =
    Provider.autoDispose.family<String, String>((ref, cropUnitId) {
  final isIrrigating = ref.watch(isIrrigatingProvider);
  final nextIrrigation = ref.watch(nextIrrigationProvider);
  if (isIrrigating[cropUnitId] == true) {
    return 'Current';
  } else if (nextIrrigation[cropUnitId] != null &&
      nextIrrigation[cropUnitId] != '') {
    return nextIrrigation[cropUnitId]!;
  } else {
    return '-';
  }
});

/// key is {cropUnitId}
/// value is {lastIrrigation}
final lastIrrigationProvider = Provider.autoDispose<Map<String, String>>((ref) {
  final farmDashboard = ref.watch(dashboardCropUnits);
  return farmDashboard.when(
    data: (cropUnits) {
      return cropUnits.fold<Map<String, String>>(
        {},
        (previousValue, cropUnit) {
          final lastIrrigationTime = DateTime.tryParse(
              cropUnit.irrigationProgram?.lastIrrigation ?? '');
          previousValue[cropUnit.cropUnitId] =
              lastIrrigationTime?.toTimeAgo ?? '';
          return previousValue;
        },
      );
    },
    loading: () => {},
    error: (error, stackTrace) => {},
  );
});

final cropUnitLastIrrigationStateProvider =
    Provider.autoDispose.family<String, String>((ref, cropUnitId) {
  final lastIrrigation = ref.watch(lastIrrigationProvider);
  if (lastIrrigation[cropUnitId] != null && lastIrrigation[cropUnitId] != '') {
    return lastIrrigation[cropUnitId]!;
  } else {
    return '-';
  }
});

/// key is {irrigationBlockId}
/// value is {DashboardCropUnit}
final irrigationBlockCropUnitProvider =
    Provider.autoDispose.family<DashboardCropUnit?, String?>((ref, blockId) {
  if (blockId == null) return null;
  final cropUnitsMap = ref.watch(cropUnitsMapProvider);
  final irrigationBlockMap = ref.watch(irrigationBlockMapProvider);
  final irrigationBlock = irrigationBlockMap[blockId];
  if (irrigationBlock == null) return null;
  return cropUnitsMap[irrigationBlock.cropUnitId];
});

/// the color of irrigation block when the irrigation tab is selected.
final irrigationBlockIrrigationColorProvider =
    Provider.autoDispose.family<StatusColor, String>((ref, blockId) {
  final cropUnit = ref.watch(irrigationBlockCropUnitProvider(blockId));
  if (cropUnit == null ||
      cropUnit.irrigationProgram == null ||
      cropUnit.irrigationProgram?.currentShift == null) {
    return StatusColor.transparent;
  }

  final currentShift = cropUnit.irrigationProgram?.currentShift;

  final isBlockIrrigating = currentShift?.valves?.any((valve) =>
          valve.irrigationBlockId == blockId &&
          (valve.isIrrigating ?? false)) ??
      false;

  if (isBlockIrrigating) {
    return StatusColor.blue;
  }

  return cropUnit.irrigationProgram?.irrigationColor ?? StatusColor.transparent;
});

/// irrigation block color when the overview tab is selected.
final irrigationBlockOverviewColorProvider =
    Provider.autoDispose.family<String?, String>((ref, blockId) {
  final cropUnit = ref.watch(irrigationBlockCropUnitProvider(blockId));
  if (cropUnit == null) return null;
  return cropUnit.colorHexCode;
});
