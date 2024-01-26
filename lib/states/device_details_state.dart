import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/device_details_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/models/devices/geolocation.dart';
import 'package:netafim_mobile/states/viewable_device.dart';
import 'package:netafim_mobile/states/viewable_sensor.dart';

import '../models/devices/threshold.dart';

part 'device_details_state.freezed.dart';

@freezed
class DeviceDetailsState with _$DeviceDetailsState {
  const factory DeviceDetailsState({
    required String deviceId,
    @Default('') String deviceName,
    @Default('Unassigned') String? selectedIrrigationBlockName,
    String? selectedIrrigationBlockId,
    int? depth,
    String? type,
    @Default(false) bool canBeAssignedToIrrigationBlock,
    @Default('') String depthUom,
    List<ViewableDevice>? children,
    Map<String, List<ViewableSensor>>? sensors,
    @Default(0) num? offset,
    @Default(1) num? multiplier,
    @Default([]) List<Threshold> thresholds,
    @Default(false) bool fetchingDevice,
    @Default(null) String? fetchDeviceError,
    @Default(false) bool updatingDevice,
    @Default(null) String? updateDeviceError,
    @Default(0) num pulseVolume,
    @Default(0) num coverageArea,
    Geolocation? geolocation,
  }) = _DeviceDetailsState;
}

final deviceDetailsNotifierProvider = StateNotifierProvider.autoDispose
    .family<DeviceDetailsStateNotifier, DeviceDetailsState, String>(
        (ref, deviceId) {
  final deviceState = ref.watch(asyncDeviceProvider(deviceId));
  final thresholds =
      ref.watch(thresholdsProvider(deviceId)).maybeWhen<List<Threshold>>(
            data: (data) => data,
            orElse: () => [],
          );
  final deviceDetailsState = deviceState.when(
    data: (device) {
      final block = ref.watch(getIrrigationBlockOfDevice(deviceId));
      return DeviceDetailsState(
          deviceId: deviceId,
          deviceName: device.name,
          selectedIrrigationBlockId: block?.id,
          selectedIrrigationBlockName: block?.irrigationBlockName,
          canBeAssignedToIrrigationBlock: device.canBeAssignedToIrrigationBlock,
          offset: device.offset,
          thresholds: thresholds,
          type: device.type,
          multiplier: device.multiplier,
          sensors: device.sensors,
          children: device.displayChildrenInDetails ? device.children : null,
          pulseVolume: device.pulseVolume,
          coverageArea: device.coverageArea,
          geolocation: device.geolocation,
          depth: device.depth);
    },
    error: (error, stackTrace) {
      return DeviceDetailsState(
          deviceId: deviceId, fetchDeviceError: 'failed to get device data');
    },
    loading: () => DeviceDetailsState(deviceId: deviceId, fetchingDevice: true),
  );
  return DeviceDetailsStateNotifier(deviceDetailsState);
});

class DeviceDetailsStateNotifier extends StateNotifier<DeviceDetailsState> {
  DeviceDetailsStateNotifier(super.state);

  assignIrrigationBlock(String irrigationBlockId, String irrigationBlockName) {
    state = state.copyWith(
      selectedIrrigationBlockId: irrigationBlockId,
      selectedIrrigationBlockName: irrigationBlockName,
    );
  }

  updateSensorDepth(String id, int depth) {
    String? key;
    ViewableSensor? sensor;
    for (var entry in state.sensors!.entries) {
      sensor = entry.value.firstWhereOrNull((sensor) => sensor.id == id);
      if (sensor != null) {
        key = entry.key;
        break;
      }
    }
    if (sensor == null) return;
    sensor = sensor.copyWith(depth: depth);
    state = state.copyWith(sensors: {
      ...state.sensors!,
      key!: state.sensors![key]!.map((s) => s.id == id ? sensor! : s).toList()
    });
  }

  updateDeviceDepth(int depth) => state = state.copyWith(depth: depth);
}
