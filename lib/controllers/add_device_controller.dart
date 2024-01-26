import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/farms_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/devices_data_source.dart';

import '../models/requests/add_device_payload.dart';
import '../network/dio_provider.dart';
import '../states/add_device_state.dart';

final addDeviceNotifierProvider =
    StateNotifierProvider.autoDispose<AddDeviceController, AddDeviceState>(
        (ref) {
  final farm = ref.watch(selectedFarmProvider);
  final userPrefs = ref.watch(userPrefsProvider).valueOrNull;
  return AddDeviceController(
      farmId: farm!.farmId,
      windowsTimeZone: farm.timeZoneInfo?.windowsTimeZone ?? '',
      unitSystem: userPrefs?.unitsSystem ?? 'SI',
      enterpriseId: userPrefs?.enterpriseId ?? 0);
});

class AddDeviceController extends StateNotifier<AddDeviceState> {
  AddDeviceController({
    required this.farmId,
    required this.unitSystem,
    required this.enterpriseId,
    required this.windowsTimeZone,
  }) : super(AddDeviceState.initial());

  final String farmId;
  final String unitSystem;
  final int enterpriseId;
  final String windowsTimeZone;

  addRLinkDevice({required String deviceId}) async {
    try {
      state = AddDeviceState.loading();
      final payload = AddDevicePayload(
          deviceId: deviceId,
          farmId: farmId,
          windowsTimeZone: windowsTimeZone,
          unitSystem: unitSystem,
          enterpriseId: enterpriseId);
      await DevicesDataSource(dio).addRLinkDevice(payload);
      state = AddDeviceState.success();
    } catch (e) {
      print(e.toString());
      state = AddDeviceState.error('failed to add the device');
    }
  }

  addECODevice({required String deviceId}) async {
    try {
      state = AddDeviceState.loading();
      final payload = AddDevicePayload(
          deviceId: deviceId,
          farmId: farmId,
          windowsTimeZone: windowsTimeZone,
          unitSystem: unitSystem,
          enterpriseId: enterpriseId);
      await DevicesDataSource(dio).addECODevice(payload);
      state = AddDeviceState.success();
    } catch (e) {
      print(e.toString());
      state = AddDeviceState.error('failed to add the device');
    }
  }

  addControllerPlcDevice({required String deviceId}) async {
    try {
      state = AddDeviceState.loading();
      final payload = AddDevicePayload(
          deviceId: deviceId,
          farmId: farmId,
          windowsTimeZone: windowsTimeZone,
          unitSystem: unitSystem,
          enterpriseId: enterpriseId);
      await DevicesDataSource(dio).addControllerPlcDevice(payload);
      state = AddDeviceState.success();
    } catch (e) {
      print(e.toString());
      state = AddDeviceState.error('failed to add the device');
    }
  }

  addDavisDevice({required String deviceId, required String password}) async {
    try {
      state = AddDeviceState.loading();
      final payload = AddDevicePayload(
          deviceId: deviceId,
          password: password,
          farmId: farmId,
          windowsTimeZone: windowsTimeZone,
          unitSystem: unitSystem,
          enterpriseId: enterpriseId);
      await DevicesDataSource(dio).addDavisDevice(payload);
      state = AddDeviceState.success();
    } catch (e) {
      print(e.toString());
      state = AddDeviceState.error('failed to add the device');
    }
  }
}
