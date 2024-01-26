import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netafim_mobile/models/devices/geolocation.dart';
import 'package:netafim_mobile/models/devices/io_group.dart';
import 'package:netafim_mobile/models/devices/threshold.dart';
import 'package:netafim_mobile/states/viewable_sensor.dart';
import 'package:netafim_mobile/themes/images.dart';

import '../models/devices/base.dart';
import '../models/devices/channel.dart';
import '../models/devices/remote.dart';
import '../models/devices/repeater.dart';
import '../models/devices/root.dart';

part 'viewable_device.freezed.dart';

@freezed
class ViewableDevice with _$ViewableDevice {
  const factory ViewableDevice({
    required String id,
    required String name,
    String? type,
    int? ioTypeId,
    int? ioDeviceTypeId,
    int? depth,
    String? depthUom,
    num? offset,
    num? multiplier,
    String? thingId,
    @Default('channel') String category,
    @Default(false) bool canBeAssignedToIrrigationBlock,
    required String icon,
    required bool isActive,
    @Default(false) bool isIoGroup,
    @Default(false) bool displayChildrenInDetails,
    @Default(true) bool isExpandable,
    @Default([]) List<Threshold> thresholds,
    @Default([]) List<ViewableDevice> children,
    Map<String, List<ViewableSensor>>? sensors,
    @Default(true) bool isClickable,
    @Default(0) num pulseVolume,
    @Default(0) num coverageArea,
    Geolocation? geolocation,
  }) = _ViewableDevice;

  const ViewableDevice._();

  factory ViewableDevice.fromRoot(Root root,
      {List<ViewableDevice> children = const []}) {
    final icon = root.systemType?.icon.toLowerCase();
    return ViewableDevice(
      id: root.id,
      name: root.deviceName,
      type: root.systemType?.key,
      category: 'root',
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'rlink'),
      isActive: root.isActive,
      isExpandable: children.isNotEmpty,
      displayChildrenInDetails: true,
      children: children,
      geolocation: root.geolocation,
    );
  }

  factory ViewableDevice.fromBase(Base base,
      {List<ViewableDevice> children = const []}) {
    final icon = base.systemType?.icon.toLowerCase();
    return ViewableDevice(
      id: base.id,
      name: base.deviceName,
      type: base.systemType?.key,
      category: 'base',
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'rlink'),
      isActive: base.isActive,
      isExpandable: children.isNotEmpty,
      displayChildrenInDetails: true,
      children: children,
      geolocation: base.geolocation,
    );
  }

  factory ViewableDevice.fromRepeater(Repeater repeater) {
    final icon = repeater.systemType?.icon.toLowerCase();
    return ViewableDevice(
      id: repeater.id,
      name: repeater.deviceName,
      type: repeater.systemType?.key,
      category: 'repeater',
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'rlink'),
      isActive: repeater.isActive,
      displayChildrenInDetails: true,
      isExpandable: false,
      geolocation: repeater.geolocation,
    );
  }

  factory ViewableDevice.fromRemote(Remote remote,
      {List<ViewableDevice> children = const []}) {
    final icon = remote.systemType?.icon.toLowerCase();
    return ViewableDevice(
      id: remote.id,
      name: remote.deviceName,
      type: remote.systemType?.key,
      category: 'remote',
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'rlink'),
      isActive: remote.isActive,
      isExpandable: children.isNotEmpty,
      displayChildrenInDetails: true,
      children: children,
      geolocation: remote.geolocation,
    );
  }

  factory ViewableDevice.fromIoGroup(IoGroup ioGroup,
      {List<ViewableDevice> children = const [],
      Map<String, List<ViewableSensor>>? sensors}) {
    final icon = ioGroup.ioDeviceType.icon?.toLowerCase();
    return ViewableDevice(
      id: ioGroup.ioGroupId,
      name: ioGroup.name ?? '',
      type: ioGroup.ioDeviceType.name,
      category: 'ioGroup',
      ioTypeId: ioGroup.ioType?.id,
      canBeAssignedToIrrigationBlock: true,
      ioDeviceTypeId: ioGroup.ioDeviceType.id,
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'sensor'),
      isActive: ioGroup.isActive,
      isExpandable: children.isNotEmpty,
      isIoGroup: true,
      sensors: sensors,
      children: children,
    );
  }

  factory ViewableDevice.fromChannel(Channel channel) {
    final icon = channel.ioDeviceType.icon?.toLowerCase();
    return ViewableDevice(
      id: channel.channelUuid,
      name: channel.name ?? '',
      type: channel.ioDeviceType.name,
      category: 'channel',
      ioTypeId: channel.ioType?.id,
      ioDeviceTypeId: channel.ioDeviceType.id,
      canBeAssignedToIrrigationBlock: true,
      icon: _iconPath(devicesNames.contains(icon) ? icon : 'sensor'),
      isActive: channel.isActive,
      depth: channel.depth,
      thingId: channel.thingId,
      depthUom: channel.depthUom,
      offset: channel.offset,
      multiplier: channel.multiplier,
      isExpandable: false,
      pulseVolume: channel.pulseVolume ?? 0,
      coverageArea: channel.coverageArea ?? 0,
    );
  }

  factory ViewableDevice.fromSensorsDepth(String name) => ViewableDevice(
        id: '',
        name: name,
        icon: _iconPath('sensor'),
        isActive: true,
        isExpandable: false,
        isClickable: false,
      );

  static String _iconPath(String? iconName) {
    return '${Images.deviceIconPathPrefix}${iconName ?? 'sensor'}';
  }
}

final devicesNames = {
  'defaultdevice',
  'dosing',
  'filter',
  'lortu',
  'meter',
  'plc',
  'pump',
  'repeater',
  'rlink',
  'rsense',
  'sensor',
  'valve',
  'weather',
};
