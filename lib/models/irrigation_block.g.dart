// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irrigation_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrrigationBlock _$$_IrrigationBlockFromJson(Map<String, dynamic> json) =>
    _$_IrrigationBlock(
      id: json['id'] as String,
      irrigationBlockName: json['irrigationBlockName'] as String,
      cropUnitId: json['cropUnitId'] as String?,
      farmId: json['farmId'] as String?,
      irrigationBlockArea: json['irrigationBlockArea'] == null
          ? null
          : Measure.fromJson(
              json['irrigationBlockArea'] as Map<String, dynamic>),
      manualIrrigationBlockArea: json['manualIrrigationBlockArea'] == null
          ? null
          : Measure.fromJson(
              json['manualIrrigationBlockArea'] as Map<String, dynamic>),
      soilTypeId: json['soilTypeId'] as int?,
      flowRate: json['flowRate'] == null
          ? null
          : Measure.fromJson(json['flowRate'] as Map<String, dynamic>),
      irrigationRate: json['irrigationRate'] == null
          ? null
          : Measure.fromJson(json['irrigationRate'] as Map<String, dynamic>),
      manualIrrigationRate: json['manualIrrigationRate'] == null
          ? null
          : Measure.fromJson(
              json['manualIrrigationRate'] as Map<String, dynamic>),
      cropId: json['cropId'] as int?,
      varietyId: json['varietyId'] as int?,
      irrigationMethodId: json['irrigationMethodId'] as int?,
      sensors: json['sensors'] as List<dynamic>?,
      valves: json['valves'] as List<dynamic>?,
      meters: json['meters'] as List<dynamic>?,
      data: json['data'] == null
          ? null
          : IrrigationBlockData.fromJson(json['data'] as Map<String, dynamic>),
      waterBalanceInPercent:
          (json['waterBalanceInPercent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_IrrigationBlockToJson(_$_IrrigationBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'irrigationBlockName': instance.irrigationBlockName,
      'cropUnitId': instance.cropUnitId,
      'farmId': instance.farmId,
      'irrigationBlockArea': instance.irrigationBlockArea,
      'manualIrrigationBlockArea': instance.manualIrrigationBlockArea,
      'soilTypeId': instance.soilTypeId,
      'flowRate': instance.flowRate,
      'irrigationRate': instance.irrigationRate,
      'manualIrrigationRate': instance.manualIrrigationRate,
      'cropId': instance.cropId,
      'varietyId': instance.varietyId,
      'irrigationMethodId': instance.irrigationMethodId,
      'sensors': instance.sensors,
      'valves': instance.valves,
      'meters': instance.meters,
      'data': instance.data,
      'waterBalanceInPercent': instance.waterBalanceInPercent,
    };

_$_IrrigationBlockData _$$_IrrigationBlockDataFromJson(
        Map<String, dynamic> json) =>
    _$_IrrigationBlockData(
      geolocation: json['geolocation'] == null
          ? null
          : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
      itemGroups: (json['itemGroups'] as List<dynamic>?)
          ?.map((e) => ItemGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IrrigationBlockDataToJson(
        _$_IrrigationBlockData instance) =>
    <String, dynamic>{
      'geolocation': instance.geolocation,
      'itemGroups': instance.itemGroups,
    };

_$_Geolocation _$$_GeolocationFromJson(Map<String, dynamic> json) =>
    _$_Geolocation(
      id: json['id'] as String,
      geolocationType: json['geolocationType'] as String,
      vertices: (json['vertices'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      radius: json['radius'],
      area: json['area'],
      bounds: json['bounds'],
      description: json['description'],
    );

Map<String, dynamic> _$$_GeolocationToJson(_$_Geolocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'geolocationType': instance.geolocationType,
      'vertices': instance.vertices,
      'radius': instance.radius,
      'area': instance.area,
      'bounds': instance.bounds,
      'description': instance.description,
    };

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_Measure _$$_MeasureFromJson(Map<String, dynamic> json) => _$_Measure(
      uom: json['uom'],
      value: json['value'] as num?,
    );

Map<String, dynamic> _$$_MeasureToJson(_$_Measure instance) =>
    <String, dynamic>{
      'uom': instance.uom,
      'value': instance.value,
    };
