import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/controllers/device_details_controller.dart';
import 'package:netafim_mobile/controllers/irrigation_blocks_controller.dart';
import 'package:netafim_mobile/controllers/user_controller.dart';
import 'package:netafim_mobile/data_sources/devices_data_source.dart';
import 'package:netafim_mobile/data_sources/farms_data_source.dart';
import 'package:netafim_mobile/models/irrigation_block.dart';
import 'package:netafim_mobile/models/item_group.dart';
import 'package:netafim_mobile/models/requests/add_item_group_payload.dart';
import 'package:netafim_mobile/models/requests/add_item_payload.dart';
import 'package:netafim_mobile/states/submit_state.dart';

import '../models/requests/update_field.dart';
import '../network/dio_provider.dart';
import '../states/viewable_device.dart';
import '../states/viewable_sensor.dart';
import 'farms_controller.dart';

final updateDeviceNotifierProvider = StateNotifierProvider.autoDispose
    .family<UpdateDeviceNotifier, SubmitState, String>((ref, deviceId) {
  final unitSystem = ref.watch(farmUnitSystemProvider);
  final device = ref.watch(deviceProvider(deviceId));
  final timeZone =
      ref.watch(selectedFarmProvider)!.timeZoneInfo!.windowsTimeZone;
  final irrigationBlockOfDevice =
      ref.watch(getIrrigationBlockOfDevice(deviceId));

  return UpdateDeviceNotifier(
      unitSystem: unitSystem,
      timeZone: timeZone,
      deviceId: deviceId,
      device: device,
      irrigationBlockOfDevice: irrigationBlockOfDevice);
});

class UpdateDeviceNotifier extends StateNotifier<SubmitState> {
  UpdateDeviceNotifier(
      {required String deviceId,
      required String unitSystem,
      required String? timeZone,
      required ViewableDevice? device,
      required IrrigationBlock? irrigationBlockOfDevice})
      : _device = device,
        _irrigationBlockOfDevice = irrigationBlockOfDevice,
        _timeZone = timeZone,
        _unitSystem = unitSystem,
        _deviceId = deviceId,
        super(SubmitState.initial());
  final String _deviceId;
  final String _unitSystem;
  final String? _timeZone;
  final IrrigationBlock? _irrigationBlockOfDevice;
  final ViewableDevice? _device;

  void updateDevice(UpdateDeviceData data) async {
    try {
      state = SubmitState.loading();
      await updateDeviceRequest(
          id: _deviceId,
          type: _device!.category,
          body: _buildUpdateFields(data),
          timezone: _timeZone,
          unitSystem: _unitSystem);
      updateSensors(data.sensors);
      await _updateAssignedIrrigationBlock(data.irrigationBlockId);
      state = SubmitState.success();
    } catch (e) {
      print(e.toString());
      state = SubmitState.error('failed to add the device');
    }
  }

  Future updateSensors(List<ViewableSensor> sensors) async {
    if (!_device!.isIoGroup) return;
    final responses = await Future.wait([
      for (final sensor in sensors)
        updateDeviceRequest(
            id: sensor.id,
            type: 'channel',
            body: [UpdateField(path: '/depth', value: '${sensor.depth ?? ''}')],
            timezone: _timeZone,
            unitSystem: _unitSystem)
    ]);
    return responses;
  }

  List<UpdateField> _buildUpdateFields(UpdateDeviceData data) {
    final List<UpdateField> fields = [];
    if (_device!.category == 'root' ||
        _device!.category == 'base' ||
        _device!.category == 'repeater' ||
        _device!.category == 'remote') {
      fields.add(UpdateField(path: 'deviceName', value: data.name!));
      return fields;
    }
    if (data.name != null) {
      fields.add(UpdateField(path: '/name', value: data.name!));
    }
    if (_device!.category == 'ioGroup') {
      return fields;
    }
    if (data.depth != null) {
      fields.add(UpdateField(path: '/depth', value: data.depth!));
    }
    if (data.multiplier != null) {
      fields.add(UpdateField(path: '/multiplier', value: data.multiplier!));
    }
    if (data.offset != null) {
      fields.add(UpdateField(path: '/offset', value: data.offset!));
    }
    return fields;
  }

  Future<String?> _addItemGroup({required String irrigationBlockId}) async {
    final group = await FarmsDataSource(dio).createItemGroup(
        irrigationBlockId: irrigationBlockId,
        payload: AddItemGroupPayload(
            deviceUuid: _device!.id,
            label: _device!.name,
            thingId: _device!.thingId));
    return group.id;
  }

  Future<bool> _addItems(
      {required String irrigationBlockId, required String itemGroupId}) async {
    final sensors =
        _device?.sensors?.values.expand((sensors) => sensors).toList() ?? [];

    final result = await Future.wait([
      _addItem(
          irrigationBlockId: irrigationBlockId,
          itemGroupId: itemGroupId,
          deviceId: _deviceId,
          ioTypeId: _device!.ioTypeId!,
          ioDeviceTypeId: _device!.ioDeviceTypeId!,
          thingId: _device!.thingId,
          name: _device!.name),
      for (final sensor in sensors)
        _addItem(
            irrigationBlockId: irrigationBlockId,
            itemGroupId: itemGroupId,
            deviceId: sensor.id,
            name: sensor.label,
            ioDeviceTypeId: sensor.ioDeviceTypeId,
            ioTypeId: sensor.ioTypeId,
            thingId: sensor.thingId)
    ]);
    return result.every((element) => element);
  }

  Future<bool> _addItem(
      {required String irrigationBlockId,
      required String itemGroupId,
      required String deviceId,
      String? name,
      int? ioTypeId,
      int? ioDeviceTypeId,
      String? thingId}) async {
    try {
      await FarmsDataSource(dio).createItem(
          irrigationBlockId: irrigationBlockId,
          itemGroupId: itemGroupId,
          payload: AddItemPayload(
              channelUuid: deviceId,
              label: name ?? '',
              ioTypeId: ioTypeId,
              ioDeviceTypeId: ioDeviceTypeId,
              thingId: thingId,
              order: 1));
      return true;
    } catch (e) {
      e.printError();
      return false;
    }
  }

  Future<bool> _deleteItems(String itemGroupId) async {
    var ids = _irrigationBlockOfDevice?.data?.itemGroups
        ?.firstWhereOrNull((element) => element.deviceUuid == _device!.id)
        ?.items
        .map((element) => element.id)
        .toList();
    if (ids == null) return true;
    final result =
        await Future.wait([for (final id in ids) _deleteItem(itemGroupId, id)]);
    return result.every((element) => element);
  }

  Future<bool> _deleteItem(String itemGroupId, String itemId) async {
    try {
      await FarmsDataSource(dio).deleteItem(
          irrigationBlockId: _irrigationBlockOfDevice!.id,
          itemGroupId: itemGroupId,
          itemId: itemId);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<bool> _deleteItemGroup(String itemGroupId) async {
    try {
      await FarmsDataSource(dio).deleteItemGroup(
          itemGroupId: itemGroupId,
          irrigationBlockId: _irrigationBlockOfDevice!.id);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<List<Item>> _getItemsOfItemGroup(String itemGroupId) async {
    final items = await FarmsDataSource(dio).getItemGroupItems(
        irrigationBlockId: _irrigationBlockOfDevice!.id,
        itemGroupId: itemGroupId);
    return items;
  }

  String? get _itemGroupId => _irrigationBlockOfDevice?.data?.itemGroups
      ?.firstWhereOrNull((element) => element.deviceUuid == _device!.id)
      ?.id;

  String? get _itemId => _irrigationBlockOfDevice?.data?.itemGroups
      ?.firstWhereOrNull((element) => element.deviceUuid == _device!.id)
      ?.items
      .firstWhereOrNull((element) => element.channelUuid == _device!.id)
      ?.id;

  _unAssignDeviceFromIrrigationBlock() async {
    if (_irrigationBlockOfDevice != null) {
      final itemGroupId = _itemGroupId;
      final itemId = _itemId;
      if (itemGroupId != null && itemId != null) {
        final itemDeleted = await _deleteItems(itemGroupId);
        if (itemDeleted) {
          final items = await _getItemsOfItemGroup(itemGroupId);
          if (items.isEmpty) {
            await _deleteItemGroup(itemGroupId);
          }
        }
      }
    }
  }

  Future<bool> _assignDeviceToIrrigationBlock(String irrigationBlockId) async {
    String? itemGroupId;
    try {
      itemGroupId = await _addItemGroup(irrigationBlockId: irrigationBlockId);
      if (itemGroupId != null) {
        bool itemAdded = await _addItems(
            irrigationBlockId: irrigationBlockId, itemGroupId: itemGroupId);
        return itemAdded;
      }
      return false;
    } on DioError catch (e) {
      if (e.response?.statusCode == 409) {
        //409 means that the item group already exists
        final id = _irrigationBlockOfDevice?.data?.itemGroups
            ?.firstWhereOrNull((element) => element.deviceUuid == _device!.id)
            ?.id;
        if (id != null) {
          bool itemAdded = await _addItems(
              irrigationBlockId: irrigationBlockId, itemGroupId: id);
          return itemAdded;
        }
      }
      e.printError();
      return false;
    }
  }

  Future _updateAssignedIrrigationBlock(String? irrigationBlockId) async {
    if (_device?.canBeAssignedToIrrigationBlock ?? false) {
      if (irrigationBlockId == _irrigationBlockOfDevice?.id) return;

      final unassigned = await _unAssignDeviceFromIrrigationBlock();
      print('unassigned: $unassigned');

      if (irrigationBlockId != null) {
        final assigned =
            await _assignDeviceToIrrigationBlock(irrigationBlockId);
        if (!assigned) {
          state = SubmitState.error('failed to update irrigation block');
        }
      }
    }
  }
}

class UpdateDeviceData {
  String? name;
  String? depth;
  String? multiplier;
  String? offset;
  String? irrigationBlockId;
  List<ViewableSensor> sensors;

  UpdateDeviceData(
      {this.name,
      this.depth,
      this.multiplier,
      this.offset,
      this.sensors = const [],
      this.irrigationBlockId});
}
