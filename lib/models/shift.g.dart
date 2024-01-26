// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shift _$$_ShiftFromJson(Map<String, dynamic> json) => _$_Shift(
      number: json['number'] as int,
      active: json['active'] as bool?,
      factor: json['factor'] as int?,
      recipeName: json['recipeName'] as String?,
      quantity: json['quantity'] as num?,
      quantityUom: json['quantityUom'] as String?,
      depth: json['depth'] as num?,
      depthUom: json['depthUom'] as String?,
      time: json['time'] as String?,
      isAlerted: json['isAlerted'] as bool? ?? false,
      valves: (json['valves'] as List<dynamic>?)
          ?.map((e) => Valve.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShiftToJson(_$_Shift instance) => <String, dynamic>{
      'number': instance.number,
      'active': instance.active,
      'factor': instance.factor,
      'recipeName': instance.recipeName,
      'quantity': instance.quantity,
      'quantityUom': instance.quantityUom,
      'depth': instance.depth,
      'depthUom': instance.depthUom,
      'time': instance.time,
      'isAlerted': instance.isAlerted,
      'valves': instance.valves,
    };

_$_Alarm _$$_AlarmFromJson(Map<String, dynamic> json) => _$_Alarm(
      type: json['type'] as int?,
      status: json['status'] as String?,
      severity: json['severity'] as String?,
      itemId: json['itemId'] as String?,
    );

Map<String, dynamic> _$$_AlarmToJson(_$_Alarm instance) => <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'severity': instance.severity,
      'itemId': instance.itemId,
    };

_$_Valve _$$_ValveFromJson(Map<String, dynamic> json) => _$_Valve(
      ioId: json['ioId'] as String?,
      itemId: json['itemId'] as String?,
      valveId: json['valveId'] as int?,
      isIrrigating: json['isIrrigating'] as bool?,
      waterBalanceInMm: (json['waterBalanceInMm'] as num?)?.toDouble(),
      irrigationBlockId: json['irrigationBlockId'] as String?,
      irrigationBlockName: json['irrigationBlockName'] as String?,
      waterBalanceInPercent:
          (json['waterBalanceInPercent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ValveToJson(_$_Valve instance) => <String, dynamic>{
      'ioId': instance.ioId,
      'itemId': instance.itemId,
      'valveId': instance.valveId,
      'isIrrigating': instance.isIrrigating,
      'waterBalanceInMm': instance.waterBalanceInMm,
      'irrigationBlockId': instance.irrigationBlockId,
      'irrigationBlockName': instance.irrigationBlockName,
      'waterBalanceInPercent': instance.waterBalanceInPercent,
    };
