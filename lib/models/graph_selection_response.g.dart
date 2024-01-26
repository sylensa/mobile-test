// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graph_selection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphSelectionResponse _$$_GraphSelectionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GraphSelectionResponse(
      graphSelectionData: (json['graphSelectionData'] as List<dynamic>)
          .map((e) => GraphIrrigationBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GraphSelectionResponseToJson(
        _$_GraphSelectionResponse instance) =>
    <String, dynamic>{
      'graphSelectionData': instance.graphSelectionData,
    };

_$_GraphIrrigationBlock _$$_GraphIrrigationBlockFromJson(
        Map<String, dynamic> json) =>
    _$_GraphIrrigationBlock(
      id: json['id'] as String,
      name: json['name'] as String,
      cropUnitId: json['cropUnitId'] as String?,
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => GraphDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GraphIrrigationBlockToJson(
        _$_GraphIrrigationBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cropUnitId': instance.cropUnitId,
      'devices': instance.devices,
    };

_$_GraphDevice _$$_GraphDeviceFromJson(Map<String, dynamic> json) =>
    _$_GraphDevice(
      id: json['id'] as String,
      name: json['name'] as String,
      ioGroups: (json['ioGroups'] as List<dynamic>?)
          ?.map((e) => GraphIoGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      ios: (json['ios'] as List<dynamic>?)
          ?.map((e) => GraphSensor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GraphDeviceToJson(_$_GraphDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ioGroups': instance.ioGroups,
      'ios': instance.ios,
    };

_$_GraphIoGroup _$$_GraphIoGroupFromJson(Map<String, dynamic> json) =>
    _$_GraphIoGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      ios: (json['ios'] as List<dynamic>?)
          ?.map((e) => GraphSensor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GraphIoGroupToJson(_$_GraphIoGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ios': instance.ios,
    };

_$_GraphSensor _$$_GraphSensorFromJson(Map<String, dynamic> json) =>
    _$_GraphSensor(
      id: json['id'] as String,
      name: json['name'] as String,
      depth: json['depth'] as int?,
      depthUom: json['depthUom'] as String?,
      portNumber: json['portNumber'] as String?,
    );

Map<String, dynamic> _$$_GraphSensorToJson(_$_GraphSensor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'depth': instance.depth,
      'depthUom': instance.depthUom,
      'portNumber': instance.portNumber,
    };
