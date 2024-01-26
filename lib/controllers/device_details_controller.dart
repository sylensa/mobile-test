import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/devices_data_source.dart';
import 'package:netafim_mobile/models/crop_unit_graphs_response.dart';
import 'package:netafim_mobile/models/devices/threshold.dart';

import '../data_sources/graph_data_source.dart';
import '../models/graph_response.dart';
import '../models/requests/graph_payload.dart';
import '../network/dio_provider.dart';
import '../states/viewable_device.dart';
import 'devices_list_controller.dart';
import 'farms_controller.dart';

final getSensorGraphProvider = FutureProvider.autoDispose
    .family<CropUnitGraph?, SensorRequest>((ref, sensorRequest) async {
  final from = DateTime.now().toUtc().add(const Duration(days: -6));
  final to = DateTime.now().toUtc();
  final farmId = ref.watch(selectedFarmProvider)?.farmId;
  final unitSystem = ref.watch(farmUnitSystemProvider);

  final body = GraphPayload(
      dateFrom: '${from.year}-${from.month}-${from.day}T00:00:00.000',
      dateTo: '${to.year}-${to.month}-${to.day}T23:59:59.999',
      sensorsRequests: [sensorRequest]);

  final response = await GraphDataSource(dio)
      .getGraph(body: body, farmId: farmId!, unitSystem: unitSystem);
  if (response.isEmpty) {
    return null;
  }
  return response.first;
});

final sensorGraphProvider = Provider.autoDispose
    .family<CropUnitGraph?, SensorRequest>((ref, sensorRequest) =>
        ref.watch(getSensorGraphProvider(sensorRequest)).when(
              data: (data) => data,
              loading: () => null,
              error: (error, stackTrace) {
                print('sensorGraphProvider Error: $error');
                return null;
              },
            ));

final thresholdsProvider = FutureProvider.autoDispose
    .family<List<Threshold>, String>((ref, ioId) async {
  final from = DateTime.now().add(const Duration(days: -6));
  final to = DateTime.now();
  final thresholds = await DevicesDataSource(dio).getThresholds(
    ioId: ioId,
    from: '${from.year}-${from.month}-${from.day}T00:00:00.000',
    to: '${to.year}-${to.month}-${to.day}T23:59:59.999',
  );
  return thresholds;
});

final asyncDeviceProvider = FutureProvider.autoDispose
    .family<ViewableDevice, String>((ref, deviceId) async {
  final devices = await ref.watch(devicesProvider.future);
  for (var device in devices) {
    var result = findDeviceById(device, deviceId);
    if (result != null) {
      final thresholds = await ref.watch(thresholdsProvider(deviceId).future);
      return result.copyWith(thresholds: thresholds);
    }
  }
  throw 'Unable to show device details';
});

final deviceProvider =
    Provider.autoDispose.family<ViewableDevice?, String>((ref, deviceId) {
  return ref.watch(asyncDeviceProvider(deviceId)).maybeWhen(
        data: (data) => data,
        orElse: () => null,
      );
});

ViewableDevice? findDeviceById(ViewableDevice device, String id) {
  if (device.id == id) {
    return device;
  }

  for (var child in device.children) {
    var result = findDeviceById(child, id);
    if (result != null) {
      return result;
    }
  }
  return null;
}
