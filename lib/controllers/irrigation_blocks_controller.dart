import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/crop_service_data_source.dart';
import 'package:netafim_mobile/data_sources/farms_data_source.dart';
import 'package:netafim_mobile/data_sources/lookup_data_source.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/irrigation_method.dart';
import 'package:netafim_mobile/models/siol_type.dart';
import 'package:netafim_mobile/models/variety.dart';
import '../models/crop.dart';
import '../models/item_group.dart';
import '../network/dio_provider.dart';
import 'farms_controller.dart';
import 'package:collection/collection.dart';

final irrigationMethodsProvider =
    FutureProvider.autoDispose<List<IrrigationMethod>>(
        (ref) async => LookUpDataSource(dio).getIrrigationMethods());

final soilTypesProvider = FutureProvider.autoDispose<List<SoilType>>(
    (ref) async => CropServiceDataSource(dio).getSoilTypes());

final cropsProvider = FutureProvider.autoDispose<List<Crop>>((ref) async {
  return CropServiceDataSource(dio).getCrops();
});
final selectedCropProvider = StateProvider.autoDispose<Crop?>((ref) => null);

final selectedIrrigationProvider =
    StateProvider.autoDispose<IrrigationMethod?>((ref) => null);
final selectedSoilTypeProvider =
    StateProvider.autoDispose<SoilType?>((ref) => null);
final selectedVarietyProvider =
    StateProvider.autoDispose<Variety?>((ref) => null);

final varietiesProvider =
    FutureProvider.autoDispose.family<List<Variety>, Crop>((ref, crop) async {
  var selectedCrop = ref.watch(selectedCropProvider);
  selectedCrop = selectedCrop ?? crop;

  if (selectedCrop == null) throw Exception('No crop selected');
  return CropServiceDataSource(dio).getVarieties(cropId: selectedCrop.cropId);
});

final getFarmIrrigationBlocksProvider =
    FutureProvider.autoDispose<List<IrrigationBlock>>((ref) async {
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final farmId = ref.watch(selectedFarmProvider)?.farmId;
  if (farmId == null) throw 'No farm selected';
  return FarmsDataSource(dio)
      .getIrrigationBlocks(farmId: farmId, unitSystem: unitSystem);
});

final irrigationBlocksMap =
    Provider.autoDispose<Map<String, IrrigationBlock>>((ref) {
  return ref.watch(getFarmIrrigationBlocksProvider).maybeWhen(
        data: (data) => {
          for (final block in data) block.id: block,
        },
        orElse: () => {},
      );
});

final irrigationBlockIdsMapBySensorId =
    Provider.autoDispose<Map<String, String>>((ref) {
  return ref.watch(getFarmIrrigationBlocksProvider).maybeWhen(
        data: (data) => {
          for (final block in data)
            for (final ItemGroup itemGroup in block.data?.itemGroups ?? [])
              for (final Item item in itemGroup.items ?? [])
                item.channelUuid??'': block.id
        },
        orElse: () => {},
      );
});

final irrigationBlockOfSensor =
    Provider.autoDispose.family<IrrigationBlock?, String>((ref, sensorId) {
  final blockId = ref.watch(irrigationBlockIdsMapBySensorId)[sensorId];
  final block = ref.watch(irrigationBlocksMap)[blockId];
  return block;
});

final getIrrigationBlockOfDevice =
    Provider.autoDispose.family<IrrigationBlock?, String>((ref, deviceId) {
  return ref
      .watch(getFarmIrrigationBlocksProvider)
      .whenOrNull<IrrigationBlock?>(data: (data) {
    for (final block in data) {
      for (final ItemGroup itemGroup in block.data?.itemGroups ?? []) {
        if (itemGroup.deviceUuid == deviceId) {
          return block;
        }
      }
    }
    return null;
  });
});

final farmIrrigationBlocksMapProvider =
    FutureProvider.autoDispose<Map<String, List<IrrigationBlock>>>((ref) async {
  final blocks = await ref.watch(getFarmIrrigationBlocksProvider.future);
  final cropUnits = ref.watch(cropUnitsMapProvider);

  final map = <String, List<IrrigationBlock>>{};
  final noCropUnitAssigned = ref.watch(noCropUnitIrrigationBlockGroupName);
  for (final block in blocks) {
    final groupName =
        cropUnits[block.cropUnitId]?.name ?? noCropUnitAssigned;
    if (map.containsKey(groupName)) {
      map[groupName]!.add(block);
    } else {
      map[groupName] = [block];
    }
  }
  return map;
});

final noCropUnitIrrigationBlockGroupName =
    Provider.autoDispose<String>((ref) => 'No crop unit assigned');

// final itemGroupProvider = Provider.autoDispose.family<ItemGroup, String>((ref) {
//   return;
// });
