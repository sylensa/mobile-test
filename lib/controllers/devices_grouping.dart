import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netafim_mobile/models/devices/channel.dart';
import 'package:netafim_mobile/models/devices/root.dart';
import 'package:netafim_mobile/states/viewable_device.dart';

import '../models/devices/base.dart';
import '../models/devices/devices_tree_response.dart';
import '../models/devices/io_group.dart';
import '../models/devices/remote.dart';
import '../models/devices/repeater.dart';
import '../states/viewable_sensor.dart';
import 'devices_list_controller.dart';

final devicesGroupingProvider =
    FutureProvider.autoDispose<DevicesGrouping>((ref) async {
  final devicesTreeState = await ref.watch(devicesTreeProvider.future);
  return DevicesGrouping(devicesTreeState);
});

class DevicesGrouping {
  final List<DevicesTree> _devicesTrees;
  Map<String, bool> isExpandedMap = {};
  List<ViewableDevice> devices = [];

  DevicesGrouping(this._devicesTrees) {
    devices = group();
  }

  List<ViewableDevice> group() {
    final List<ViewableDevice> roots = [];
    for (DevicesTree element in _devicesTrees) {
      final viewableRoot = _groupDevicesTree(element);
      roots.addAll(viewableRoot);
    }
    return roots;
  }

  List<ViewableDevice> _groupDevicesTree(DevicesTree tree) {
    final List<ViewableDevice> children = [];
    for (Base base in tree.bases) {
      final viewableBase = _groupBase(base);
      children.add(viewableBase);
    }
    for (Repeater repeater in tree.repeaters) {
      final viewableRepeater = ViewableDevice.fromRepeater(repeater);
      isExpandedMap[viewableRepeater.id] = false;
      children.add(viewableRepeater);
    }
    for (Remote remote in tree.remotes) {
      final viewableBase = _groupRemote(remote);
      children.add(viewableBase);
    }
    return _groupRoot(tree.root, children: children);
  }

  List<ViewableDevice> _groupRoot(Root root,
      {required List<ViewableDevice> children}) {
    Map<int, List<ViewableDevice>> channelsByIoGroup = {};
    for (Channel channel in root.channels) {
      final viewableChannel = ViewableDevice.fromChannel(channel);
      isExpandedMap[viewableChannel.id] = false;
      final ioGroupId = channel.ioDeviceType.ioTypeId;
      if (channelsByIoGroup.containsKey(ioGroupId)) {
        channelsByIoGroup[ioGroupId]!.add(viewableChannel);
      } else {
        channelsByIoGroup[ioGroupId] = [viewableChannel];
      }
    }
    for (IoGroup ioGroup in root.ioGroups) {
      final typeId = ioGroup.ios?.first.ioDeviceType?.ioTypeId;
      final sensorsDepths = _getSensorsDepths(channelsByIoGroup[typeId] ?? []);
      final sensors = _getIoGroupSensors(channelsByIoGroup[typeId] ?? []);
      final viewableIoGroup = ViewableDevice.fromIoGroup(ioGroup,
          children: sensorsDepths, sensors: sensors);
      isExpandedMap[viewableIoGroup.id] = false;
      channelsByIoGroup.remove(typeId);
      children.add(viewableIoGroup);
    }
    children.addAll(channelsByIoGroup.values.expand((e) => e));
    if({4, 14}.contains(root.systemType?.id??0)) {
      return children;
    }
    isExpandedMap[root.id] = false;
    return [ViewableDevice.fromRoot(root, children: children)];
  }

  ViewableDevice _groupBase(Base base) {
    final List<ViewableDevice> children = [];
    Map<int, List<ViewableDevice>> channelsByIoGroup = {};
    for (Channel channel in base.channels) {
      final viewableChannel = ViewableDevice.fromChannel(channel);
      isExpandedMap[viewableChannel.id] = false;
      final ioGroupId = channel.ioDeviceType.ioTypeId;
      if (channelsByIoGroup.containsKey(ioGroupId)) {
        channelsByIoGroup[ioGroupId]!.add(viewableChannel);
      } else {
        channelsByIoGroup[ioGroupId] = [viewableChannel];
      }
    }
    for (IoGroup ioGroup in base.ioGroups) {
      final typeId = ioGroup.ios?.first.ioDeviceType?.ioTypeId;
      final sensorsDepths = _getSensorsDepths(channelsByIoGroup[typeId] ?? []);
      final sensors = _getIoGroupSensors(channelsByIoGroup[typeId] ?? []);
      final viewableIoGroup = ViewableDevice.fromIoGroup(ioGroup,
          children: sensorsDepths, sensors: sensors);
      isExpandedMap[viewableIoGroup.id] = false;
      channelsByIoGroup.remove(typeId);
      children.add(viewableIoGroup);
    }
    children.addAll(channelsByIoGroup.values.expand((e) => e));
    isExpandedMap[base.id] = false;
    return ViewableDevice.fromBase(base, children: children);
  }

  ViewableDevice _groupRemote(Remote remote) {
    final List<ViewableDevice> children = [];
    Map<int, List<ViewableDevice>> channelsByIoGroup = {};
    for (Channel channel in remote.channels) {
      final viewableChannel = ViewableDevice.fromChannel(channel);
      isExpandedMap[viewableChannel.id] = false;
      final ioGroupId = channel.ioDeviceType.ioTypeId;
      if (channelsByIoGroup.containsKey(ioGroupId)) {
        channelsByIoGroup[ioGroupId]!.add(viewableChannel);
      } else {
        channelsByIoGroup[ioGroupId] = [viewableChannel];
      }
    }
    for (IoGroup ioGroup in remote.ioGroups) {
      final typeId = ioGroup.ios?.first.ioDeviceType?.ioTypeId;
      final sensorsDepths = _getSensorsDepths(channelsByIoGroup[typeId] ?? []);
      final sensors = _getIoGroupSensors(channelsByIoGroup[typeId] ?? []);
      final viewableIoGroup = ViewableDevice.fromIoGroup(ioGroup,
          children: sensorsDepths, sensors: sensors);
      isExpandedMap[viewableIoGroup.id] = false;
      children.add(viewableIoGroup);
      channelsByIoGroup.remove(typeId);
    }
    children.insertAll(0, channelsByIoGroup.values.expand((e) => e));
    isExpandedMap[remote.id] = false;
    return ViewableDevice.fromRemote(remote, children: children);
  }

  List<ViewableDevice> _getSensorsDepths(List<ViewableDevice> ioGroup) {
    Map<String, int> depthsCountByType = {};
    Set<ViewableDevice> sensorsDepths = {};

    for (ViewableDevice device in ioGroup) {
      if (device.depth != null) {
        depthsCountByType.update(device.type!, (count) => count + 1,
            ifAbsent: () => 1);
        sensorsDepths.add(ViewableDevice.fromSensorsDepth(
            '${device.depth} ${device.depthUom}'));
      } else if (!depthsCountByType.containsKey(device.type!)) {
        depthsCountByType[device.type!] = 0;
      }
    }

    List<ViewableDevice> typesWithNoDepth = [];
    for (String type in depthsCountByType.keys) {
      if (depthsCountByType[type] == 0) {
        typesWithNoDepth.add(ViewableDevice.fromSensorsDepth(type));
      }
    }

    return [...sensorsDepths, ...typesWithNoDepth];
  }

  Map<String, List<ViewableSensor>> _getIoGroupSensors(
      List<ViewableDevice> ioGroup) {
    Map<String, List<ViewableSensor>>? sensors;
    sensors = {};
    for (var deviceChild in ioGroup) {
      sensors[deviceChild.type!] ??= [];
      sensors[deviceChild.type!]!.add(ViewableSensor(
        id: deviceChild.id,
        depth: deviceChild.depth,
        label: deviceChild.name,
        depthUom: deviceChild.depthUom,
        thingId: deviceChild.thingId,
        ioTypeId: deviceChild.ioTypeId,
        ioDeviceTypeId: deviceChild.ioDeviceTypeId,
      ));
    }
    return sensors;
  }
}
