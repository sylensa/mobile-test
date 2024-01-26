import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/models/devices/device_status.dart';
import 'package:netafim_mobile/models/devices/devices_tree_response.dart';
import 'package:netafim_mobile/network/dio_provider.dart';
import 'package:netafim_mobile/states/viewable_device.dart';

import '../data_sources/devices_data_source.dart';
import 'devices_grouping.dart';
import 'farms_controller.dart';

final devicesTreeProvider =
    FutureProvider.autoDispose<List<DevicesTree>>((ref) async {
  final farm = ref.watch(selectedFarmProvider);
  final userPrefs = ref.watch(userPrefsProvider).valueOrNull;
  if (farm?.farmId == null) {
    return Future.error('Loading Farms');
  }
  final response = await DevicesDataSource(dio).getDevices(farm!.farmId,
      unitSystem: userPrefs?.unitsSystem ?? 'SI',
      timezone: farm.timeZoneInfo?.windowsTimeZone ?? '');
  return response;
});

final devicesProvider =
    FutureProvider.autoDispose<List<ViewableDevice>>((ref) async {
  final grouping = await ref.watch(devicesGroupingProvider.future);
  return grouping.devices;
});

final deviceIdsMapProvider = Provider.autoDispose<Map<String, bool>>(
    (ref) => ref.watch(devicesGroupingProvider).maybeWhen(
          data: (data) => data.isExpandedMap,
          orElse: () => {},
        ));

final isExpandedProvider = StateNotifierProvider.autoDispose
    .family<DevicesNotifier, bool, String>((ref, deviceId) =>
        DevicesNotifier(ref.watch(deviceIdsMapProvider)[deviceId] ?? false));

class DevicesNotifier extends StateNotifier<bool> {
  DevicesNotifier(super.sate);

  void toggleExpanded() => state = !state;
}

final getDeviceStatusesProvider =
    FutureProvider.autoDispose<Map<String, DeviceStatus>>((ref) async {
  final farmId = ref.watch(selectedFarmProvider)!.farmId;
  final timezone =
      ref.watch(selectedFarmProvider)!.timeZoneInfo!.windowsTimeZone!;
  final devicesDataSource = DevicesDataSource(dio);
  final futures = [
    devicesDataSource.getBaseStatuses(farmId: farmId, timezone: timezone),
    devicesDataSource.getRemoteStatuses(farmId: farmId, timezone: timezone),
    devicesDataSource.getRepeaterStatuses(farmId: farmId, timezone: timezone),
    devicesDataSource.getDeviceStatuses(farmId: farmId, timezone: timezone),
  ];
  final results = await Future.wait(futures);
  Map<String, DeviceStatus> statuses = {};
  for (List<DeviceStatus> result in results) {
    for (DeviceStatus status in result) {
      statuses[status.deviceId] = status;
    }
  }
  return statuses;
});
