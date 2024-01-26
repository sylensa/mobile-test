// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => _$_Channel(
      channelUuid: json['channelUuid'] as String,
      channelId: json['channelId'] as String,
      depth: json['depth'] as int?,
      depthUom: json['depthUom'] as String?,
      offset: json['offset'] as num?,
      multiplier: json['multiplier'] as num?,
      minValue: json['minValue'] as num?,
      maxValue: json['maxValue'] as num?,
      name: json['name'] as String?,
      installedDepth: json['installedDepth'] as num?,
      deviceId: json['deviceId'] as String?,
      thingId: json['thingId'] as String?,
      uom: json['uom'] as String?,
      isActive: json['isActive'] as bool? ?? false,
      farmId: json['farmId'] as String?,
      ioType: json['ioType'] == null
          ? null
          : IoType.fromJson(json['ioType'] as Map<String, dynamic>),
      ioDeviceType:
          IoDeviceType.fromJson(json['ioDeviceType'] as Map<String, dynamic>),
      pulseVolume: json['pulseVolume'] as num?,
      coverageArea: json['coverageArea'] as num?,
      thresholds: (json['thresholds'] as List<dynamic>?)
          ?.map((e) => Threshold.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      ioAddress: json['ioAddress'] as num?,
      uniqueId: json['uniqueId'] as num?,
      remoteLocal: json['remoteLocal'] as num?,
      deviceNum: json['deviceNum'] as num?,
      mainLineId: json['mainLineId'] as num?,
      groupId: json['groupId'] as num?,
      attachId: json['attachId'] as num?,
      stationId: json['stationId'] as num?,
      area: json['area'] as num?,
      nominalFlow: json['nominalFlow'] as num?,
      elevation: json['elevation'] as num?,
      pressure: json['pressure'] as num?,
      baseId: json['baseId'] as String?,
      remoteId: json['remoteId'] as String?,
      baseUuid: json['baseUuid'] as String?,
      remoteUuid: json['remoteUuid'] as String?,
      channelIdentifier: json['channelIdentifier'] as String?,
    );

Map<String, dynamic> _$$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'channelUuid': instance.channelUuid,
      'channelId': instance.channelId,
      'depth': instance.depth,
      'depthUom': instance.depthUom,
      'offset': instance.offset,
      'multiplier': instance.multiplier,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'name': instance.name,
      'installedDepth': instance.installedDepth,
      'deviceId': instance.deviceId,
      'thingId': instance.thingId,
      'uom': instance.uom,
      'isActive': instance.isActive,
      'farmId': instance.farmId,
      'ioType': instance.ioType,
      'ioDeviceType': instance.ioDeviceType,
      'pulseVolume': instance.pulseVolume,
      'coverageArea': instance.coverageArea,
      'thresholds': instance.thresholds,
      'items': instance.items,
      'ioAddress': instance.ioAddress,
      'uniqueId': instance.uniqueId,
      'remoteLocal': instance.remoteLocal,
      'deviceNum': instance.deviceNum,
      'mainLineId': instance.mainLineId,
      'groupId': instance.groupId,
      'attachId': instance.attachId,
      'stationId': instance.stationId,
      'area': instance.area,
      'nominalFlow': instance.nominalFlow,
      'elevation': instance.elevation,
      'pressure': instance.pressure,
      'baseId': instance.baseId,
      'remoteId': instance.remoteId,
      'baseUuid': instance.baseUuid,
      'remoteUuid': instance.remoteUuid,
      'channelIdentifier': instance.channelIdentifier,
    };
