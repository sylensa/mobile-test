import 'package:freezed_annotation/freezed_annotation.dart';

part 'graph_selection_response.freezed.dart';

part 'graph_selection_response.g.dart';

@freezed
class GraphSelectionResponse with _$GraphSelectionResponse {
  const factory GraphSelectionResponse({
    required List<GraphIrrigationBlock> graphSelectionData,
  }) = _GraphSelectionResponse;

  factory GraphSelectionResponse.fromJson(Map<String, dynamic> json) =>
      _$GraphSelectionResponseFromJson(json);
}

const int initiallySelectedCount = 3;
@freezed
class GraphIrrigationBlock with _$GraphIrrigationBlock {
  const factory GraphIrrigationBlock({
    required String id,
    required String name,
    String? cropUnitId,
    List<GraphDevice>? devices,
  }) = _GraphIrrigationBlock;

  const GraphIrrigationBlock._();

  Set<String> get allIds {
    final ids = <String>{};
    for (final device in devices ?? []) {
      ids.addAll(device.allIds);
    }
    return ids;
  }

  Set<String> get initialSelectedIds {
    final ids = <String>{};
    for (final GraphDevice device in devices ?? []) {
      for (final GraphSensor io in device.ios ?? []) {
        if (ids.length < initiallySelectedCount) {
          ids.add(io.id);
        } else {
          return ids;
        }
      }
    }
    if (ids.length < initiallySelectedCount) {
      for (final GraphDevice device in devices ?? []) {
        for (final GraphIoGroup ioGroup in device.ioGroups ?? []) {
          for (final GraphSensor io in ioGroup.ios ?? []) {
            if (ids.length < initiallySelectedCount) {
              ids.add(io.id);
            } else {
              return ids;
            }
          }
        }
      }
    }
    return ids;
  }

  factory GraphIrrigationBlock.fromJson(Map<String, dynamic> json) =>
      _$GraphIrrigationBlockFromJson(json);
}

@freezed
class GraphDevice with _$GraphDevice {
  const factory GraphDevice({
    required String id,
    required String name,
    List<GraphIoGroup>? ioGroups,
    List<GraphSensor>? ios,
  }) = _GraphDevice;

  const GraphDevice._();

  Set<String> get allIds {
    final ids = <String>{};
    for (final ioGroup in ioGroups ?? []) {
      ids.addAll(ioGroup.allIds);
    }
    for (final io in ios ?? []) {
      ids.add(io.id);
    }
    return ids;
  }

  factory GraphDevice.fromJson(Map<String, dynamic> json) =>
      _$GraphDeviceFromJson(json);
}

@freezed
class GraphIoGroup with _$GraphIoGroup {
  const factory GraphIoGroup({
    required String id,
    required String name,
    List<GraphSensor>? ios,
  }) = _GraphIoGroup;

  const GraphIoGroup._();

  Set<String> get allIds {
    final ids = <String>{};
    for (final io in ios ?? []) {
      ids.add(io.id);
    }
    return ids;
  }

  factory GraphIoGroup.fromJson(Map<String, dynamic> json) =>
      _$GraphIoGroupFromJson(json);
}

@freezed
class GraphSensor with _$GraphSensor {
  const factory GraphSensor({
    required String id,
    required String name,
    int? depth,
    String? depthUom,
    String? portNumber,
  }) = _GraphSensor;

  factory GraphSensor.fromJson(Map<String, dynamic> json) =>
      _$GraphSensorFromJson(json);
}
