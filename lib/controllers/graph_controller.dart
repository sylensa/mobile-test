import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/graph_data_source.dart';
import 'package:netafim_mobile/models/crop_unit_graphs_response.dart';
import 'package:netafim_mobile/models/requests/graph_payload.dart';

import '../network/dio_provider.dart';
import 'farms_controller.dart';
import 'graph_selection_controller.dart';

final getGraphsProvider = FutureProvider.autoDispose<List<CropUnitGraph>>((ref) async {
  final range = ref.watch(graphDateRangeProvider);
  final farmId = ref.watch(selectedFarmProvider)?.farmId;
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final allSensors = ref.watch(allGraphSensorsMap);
  final selectedSensors = ref.watch(graphSelectionNotifierProvider);
  final body = GraphPayload(
      dateFrom: range.start.toUtc().toIso8601String(),
      dateTo: range.end.toUtc().toIso8601String(),
      sensorsRequests: [
        for (final sensor in allSensors.values)
          if (selectedSensors.contains(sensor.id))
            SensorRequest(
              sensorId: sensor.id,
              depth: sensor.depth,
            )
      ]);
  final response = await GraphDataSource(dio)
      .getGraph(body: body, farmId: farmId!, unitSystem: unitSystem);
  return response;
});

final graphDateRangeProvider = StateProvider.autoDispose<DateTimeRange>((ref) {
  return DateTimeRange(
      start: DateTime.now().subtract(const Duration(days: 7)),
      end: DateTime.now());
});
