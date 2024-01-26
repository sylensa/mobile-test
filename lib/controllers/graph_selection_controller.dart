import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/crop_units_controller.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/graph_data_source.dart';
import 'package:netafim_mobile/models/graph_selection_response.dart';

import '../network/dio_provider.dart';
import 'crop_unit_modal_controller.dart';

final graphSelectionDataProvider =
    FutureProvider.autoDispose<List<GraphIrrigationBlock>>((ref) async {
  final farmId = ref.watch(selectedFarmProvider)?.farmId;
  final cropUnitId = ref.watch(openedCropUnitIdProvider);
  if (farmId == null || cropUnitId == null) {
    return [];
  }
  final timeZone =
      ref.watch(selectedFarmProvider)?.timeZoneInfo?.windowsTimeZone;
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final response = await GraphDataSource(dio).getGraphSelectionData(
      farmId: farmId,
      cropUnitId: cropUnitId,
      timezone: timeZone,
      unitSystem: unitSystem);
  return response.graphSelectionData;
});

final allGraphSensorsMap =
    Provider.autoDispose<Map<String, GraphSensor>>((ref) {
  return ref.watch(graphSelectionDataProvider).maybeWhen(
        data: (data) {
          return {
            for (final GraphIrrigationBlock element in data)
              for (final device in element.devices ?? [])
                for (final io in device.ios ?? []) io.id: io,
            for (final GraphIrrigationBlock element in data)
              for (final device in element.devices ?? [])
                for (final group in device.ioGroups ?? [])
                  for (final io in group.ios ?? []) io.id: io,
          };
        },
        orElse: () => {},
      );
});

final graphSensorProvider =
    Provider.autoDispose.family<GraphSensor?, String>((ref, id) {
  return ref.watch(allGraphSensorsMap)[id];
});

final allGraphIdsProvider = Provider.autoDispose<Set<String>>((ref) {
  return ref.watch(graphSelectionDataProvider).maybeWhen(
        data: (data) {
          return data.first.initialSelectedIds.toSet();
        },
        orElse: () => {},
      );
});

class GraphSelectionNotifier extends StateNotifier<Set<String>> {
  GraphSelectionNotifier(super._state);

  toggle(String id) {
    if (state.contains(id)) {
      state = {
        for (final element in state)
          if (element != id) element
      };
    } else {
      state = {...state, id};
    }
  }

  toggleGroup(Set<String> ids) {
    if (state.containsAll(ids)) {
      state = {...state..removeAll(ids)};
    } else {
      state = {...state..addAll(ids)};
    }
  }

  clear() {
    state = {};
  }
}

final graphSelectionNotifierProvider =
    StateNotifierProvider.autoDispose<GraphSelectionNotifier, Set<String>>(
        (ref) {
  final defaultSelectedIds = ref.watch(allGraphIdsProvider);
  return GraphSelectionNotifier(defaultSelectedIds);
});

final deviceSelectionStateProvider =
    Provider.autoDispose.family<bool, String>((ref, id) {
  return ref.watch(
      graphSelectionNotifierProvider.select((value) => value.contains(id)));
});

final lastReadDataProvider =
    FutureProvider.autoDispose<Map<String, String>>((ref) async {
  final timezone =
      ref.watch(selectedFarmProvider)?.timeZoneInfo?.windowsTimeZone;
  final sensorIds = ref.watch(leadingSensorIdsProvider);
  final isMetric = ref.watch(farmUnitSystemProvider) == "SI";
  final response = await GraphDataSource(dio).getLastReadData(
      sensorTypeIds: {'sensorTypeIds': sensorIds}, timezone: timezone);
  final ary = response.data['data'];
  return {
    for (final element in ary)
      if (isMetric)
        element['ioId']:
            '${element['metricValue']?.toStringAsFixed(2)} ${element['metricUom']}'
      else
        element['ioId']:
            '${element['imperialValue']?.toStringAsFixed(2)} ${element['imperialUom']}'
  };
});

final lastReadIODataProvider =
    Provider.autoDispose.family<String, String>((ref, id) {
  return ref.watch(lastReadDataProvider).maybeWhen(
        data: (data) => data[id] ?? '',
        orElse: () => '',
      );
});
