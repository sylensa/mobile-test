// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'irrigation_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrrigationBlock _$IrrigationBlockFromJson(Map<String, dynamic> json) {
  return _IrrigationBlock.fromJson(json);
}

/// @nodoc
mixin _$IrrigationBlock {
  String get id => throw _privateConstructorUsedError;
  String get irrigationBlockName => throw _privateConstructorUsedError;
  String? get cropUnitId => throw _privateConstructorUsedError;
  String? get farmId => throw _privateConstructorUsedError;
  Measure? get irrigationBlockArea => throw _privateConstructorUsedError;
  Measure? get manualIrrigationBlockArea => throw _privateConstructorUsedError;
  int? get soilTypeId => throw _privateConstructorUsedError;
  Measure? get flowRate => throw _privateConstructorUsedError;
  Measure? get irrigationRate => throw _privateConstructorUsedError;
  Measure? get manualIrrigationRate => throw _privateConstructorUsedError;
  int? get cropId => throw _privateConstructorUsedError;
  int? get varietyId => throw _privateConstructorUsedError;
  int? get irrigationMethodId => throw _privateConstructorUsedError;
  List<dynamic>? get sensors => throw _privateConstructorUsedError;
  List<dynamic>? get valves => throw _privateConstructorUsedError;
  List<dynamic>? get meters => throw _privateConstructorUsedError;
  IrrigationBlockData? get data => throw _privateConstructorUsedError;
  double? get waterBalanceInPercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrrigationBlockCopyWith<IrrigationBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrrigationBlockCopyWith<$Res> {
  factory $IrrigationBlockCopyWith(
          IrrigationBlock value, $Res Function(IrrigationBlock) then) =
      _$IrrigationBlockCopyWithImpl<$Res, IrrigationBlock>;
  @useResult
  $Res call(
      {String id,
      String irrigationBlockName,
      String? cropUnitId,
      String? farmId,
      Measure? irrigationBlockArea,
      Measure? manualIrrigationBlockArea,
      int? soilTypeId,
      Measure? flowRate,
      Measure? irrigationRate,
      Measure? manualIrrigationRate,
      int? cropId,
      int? varietyId,
      int? irrigationMethodId,
      List<dynamic>? sensors,
      List<dynamic>? valves,
      List<dynamic>? meters,
      IrrigationBlockData? data,
      double? waterBalanceInPercent});

  $MeasureCopyWith<$Res>? get irrigationBlockArea;
  $MeasureCopyWith<$Res>? get manualIrrigationBlockArea;
  $MeasureCopyWith<$Res>? get flowRate;
  $MeasureCopyWith<$Res>? get irrigationRate;
  $MeasureCopyWith<$Res>? get manualIrrigationRate;
  $IrrigationBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$IrrigationBlockCopyWithImpl<$Res, $Val extends IrrigationBlock>
    implements $IrrigationBlockCopyWith<$Res> {
  _$IrrigationBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? irrigationBlockName = null,
    Object? cropUnitId = freezed,
    Object? farmId = freezed,
    Object? irrigationBlockArea = freezed,
    Object? manualIrrigationBlockArea = freezed,
    Object? soilTypeId = freezed,
    Object? flowRate = freezed,
    Object? irrigationRate = freezed,
    Object? manualIrrigationRate = freezed,
    Object? cropId = freezed,
    Object? varietyId = freezed,
    Object? irrigationMethodId = freezed,
    Object? sensors = freezed,
    Object? valves = freezed,
    Object? meters = freezed,
    Object? data = freezed,
    Object? waterBalanceInPercent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      irrigationBlockName: null == irrigationBlockName
          ? _value.irrigationBlockName
          : irrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: freezed == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: freezed == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String?,
      irrigationBlockArea: freezed == irrigationBlockArea
          ? _value.irrigationBlockArea
          : irrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as Measure?,
      manualIrrigationBlockArea: freezed == manualIrrigationBlockArea
          ? _value.manualIrrigationBlockArea
          : manualIrrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as Measure?,
      soilTypeId: freezed == soilTypeId
          ? _value.soilTypeId
          : soilTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowRate: freezed == flowRate
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      irrigationRate: freezed == irrigationRate
          ? _value.irrigationRate
          : irrigationRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      manualIrrigationRate: freezed == manualIrrigationRate
          ? _value.manualIrrigationRate
          : manualIrrigationRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      cropId: freezed == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int?,
      varietyId: freezed == varietyId
          ? _value.varietyId
          : varietyId // ignore: cast_nullable_to_non_nullable
              as int?,
      irrigationMethodId: freezed == irrigationMethodId
          ? _value.irrigationMethodId
          : irrigationMethodId // ignore: cast_nullable_to_non_nullable
              as int?,
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      valves: freezed == valves
          ? _value.valves
          : valves // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      meters: freezed == meters
          ? _value.meters
          : meters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IrrigationBlockData?,
      waterBalanceInPercent: freezed == waterBalanceInPercent
          ? _value.waterBalanceInPercent
          : waterBalanceInPercent // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res>? get irrigationBlockArea {
    if (_value.irrigationBlockArea == null) {
      return null;
    }

    return $MeasureCopyWith<$Res>(_value.irrigationBlockArea!, (value) {
      return _then(_value.copyWith(irrigationBlockArea: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res>? get manualIrrigationBlockArea {
    if (_value.manualIrrigationBlockArea == null) {
      return null;
    }

    return $MeasureCopyWith<$Res>(_value.manualIrrigationBlockArea!, (value) {
      return _then(_value.copyWith(manualIrrigationBlockArea: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res>? get flowRate {
    if (_value.flowRate == null) {
      return null;
    }

    return $MeasureCopyWith<$Res>(_value.flowRate!, (value) {
      return _then(_value.copyWith(flowRate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res>? get irrigationRate {
    if (_value.irrigationRate == null) {
      return null;
    }

    return $MeasureCopyWith<$Res>(_value.irrigationRate!, (value) {
      return _then(_value.copyWith(irrigationRate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res>? get manualIrrigationRate {
    if (_value.manualIrrigationRate == null) {
      return null;
    }

    return $MeasureCopyWith<$Res>(_value.manualIrrigationRate!, (value) {
      return _then(_value.copyWith(manualIrrigationRate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IrrigationBlockDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $IrrigationBlockDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IrrigationBlockCopyWith<$Res>
    implements $IrrigationBlockCopyWith<$Res> {
  factory _$$_IrrigationBlockCopyWith(
          _$_IrrigationBlock value, $Res Function(_$_IrrigationBlock) then) =
      __$$_IrrigationBlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String irrigationBlockName,
      String? cropUnitId,
      String? farmId,
      Measure? irrigationBlockArea,
      Measure? manualIrrigationBlockArea,
      int? soilTypeId,
      Measure? flowRate,
      Measure? irrigationRate,
      Measure? manualIrrigationRate,
      int? cropId,
      int? varietyId,
      int? irrigationMethodId,
      List<dynamic>? sensors,
      List<dynamic>? valves,
      List<dynamic>? meters,
      IrrigationBlockData? data,
      double? waterBalanceInPercent});

  @override
  $MeasureCopyWith<$Res>? get irrigationBlockArea;
  @override
  $MeasureCopyWith<$Res>? get manualIrrigationBlockArea;
  @override
  $MeasureCopyWith<$Res>? get flowRate;
  @override
  $MeasureCopyWith<$Res>? get irrigationRate;
  @override
  $MeasureCopyWith<$Res>? get manualIrrigationRate;
  @override
  $IrrigationBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_IrrigationBlockCopyWithImpl<$Res>
    extends _$IrrigationBlockCopyWithImpl<$Res, _$_IrrigationBlock>
    implements _$$_IrrigationBlockCopyWith<$Res> {
  __$$_IrrigationBlockCopyWithImpl(
      _$_IrrigationBlock _value, $Res Function(_$_IrrigationBlock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? irrigationBlockName = null,
    Object? cropUnitId = freezed,
    Object? farmId = freezed,
    Object? irrigationBlockArea = freezed,
    Object? manualIrrigationBlockArea = freezed,
    Object? soilTypeId = freezed,
    Object? flowRate = freezed,
    Object? irrigationRate = freezed,
    Object? manualIrrigationRate = freezed,
    Object? cropId = freezed,
    Object? varietyId = freezed,
    Object? irrigationMethodId = freezed,
    Object? sensors = freezed,
    Object? valves = freezed,
    Object? meters = freezed,
    Object? data = freezed,
    Object? waterBalanceInPercent = freezed,
  }) {
    return _then(_$_IrrigationBlock(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      irrigationBlockName: null == irrigationBlockName
          ? _value.irrigationBlockName
          : irrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: freezed == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: freezed == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String?,
      irrigationBlockArea: freezed == irrigationBlockArea
          ? _value.irrigationBlockArea
          : irrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as Measure?,
      manualIrrigationBlockArea: freezed == manualIrrigationBlockArea
          ? _value.manualIrrigationBlockArea
          : manualIrrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as Measure?,
      soilTypeId: freezed == soilTypeId
          ? _value.soilTypeId
          : soilTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowRate: freezed == flowRate
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      irrigationRate: freezed == irrigationRate
          ? _value.irrigationRate
          : irrigationRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      manualIrrigationRate: freezed == manualIrrigationRate
          ? _value.manualIrrigationRate
          : manualIrrigationRate // ignore: cast_nullable_to_non_nullable
              as Measure?,
      cropId: freezed == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int?,
      varietyId: freezed == varietyId
          ? _value.varietyId
          : varietyId // ignore: cast_nullable_to_non_nullable
              as int?,
      irrigationMethodId: freezed == irrigationMethodId
          ? _value.irrigationMethodId
          : irrigationMethodId // ignore: cast_nullable_to_non_nullable
              as int?,
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      valves: freezed == valves
          ? _value._valves
          : valves // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      meters: freezed == meters
          ? _value._meters
          : meters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IrrigationBlockData?,
      waterBalanceInPercent: freezed == waterBalanceInPercent
          ? _value.waterBalanceInPercent
          : waterBalanceInPercent // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrrigationBlock extends _IrrigationBlock with DiagnosticableTreeMixin {
  const _$_IrrigationBlock(
      {required this.id,
      required this.irrigationBlockName,
      this.cropUnitId,
      this.farmId,
      this.irrigationBlockArea,
      this.manualIrrigationBlockArea,
      this.soilTypeId,
      this.flowRate,
      this.irrigationRate,
      this.manualIrrigationRate,
      this.cropId,
      this.varietyId,
      this.irrigationMethodId,
      final List<dynamic>? sensors,
      final List<dynamic>? valves,
      final List<dynamic>? meters,
      this.data,
      this.waterBalanceInPercent})
      : _sensors = sensors,
        _valves = valves,
        _meters = meters,
        super._();

  factory _$_IrrigationBlock.fromJson(Map<String, dynamic> json) =>
      _$$_IrrigationBlockFromJson(json);

  @override
  final String id;
  @override
  final String irrigationBlockName;
  @override
  final String? cropUnitId;
  @override
  final String? farmId;
  @override
  final Measure? irrigationBlockArea;
  @override
  final Measure? manualIrrigationBlockArea;
  @override
  final int? soilTypeId;
  @override
  final Measure? flowRate;
  @override
  final Measure? irrigationRate;
  @override
  final Measure? manualIrrigationRate;
  @override
  final int? cropId;
  @override
  final int? varietyId;
  @override
  final int? irrigationMethodId;
  final List<dynamic>? _sensors;
  @override
  List<dynamic>? get sensors {
    final value = _sensors;
    if (value == null) return null;
    if (_sensors is EqualUnmodifiableListView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _valves;
  @override
  List<dynamic>? get valves {
    final value = _valves;
    if (value == null) return null;
    if (_valves is EqualUnmodifiableListView) return _valves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _meters;
  @override
  List<dynamic>? get meters {
    final value = _meters;
    if (value == null) return null;
    if (_meters is EqualUnmodifiableListView) return _meters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final IrrigationBlockData? data;
  @override
  final double? waterBalanceInPercent;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IrrigationBlock(id: $id, irrigationBlockName: $irrigationBlockName, cropUnitId: $cropUnitId, farmId: $farmId, irrigationBlockArea: $irrigationBlockArea, manualIrrigationBlockArea: $manualIrrigationBlockArea, soilTypeId: $soilTypeId, flowRate: $flowRate, irrigationRate: $irrigationRate, manualIrrigationRate: $manualIrrigationRate, cropId: $cropId, varietyId: $varietyId, irrigationMethodId: $irrigationMethodId, sensors: $sensors, valves: $valves, meters: $meters, data: $data, waterBalanceInPercent: $waterBalanceInPercent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IrrigationBlock'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('irrigationBlockName', irrigationBlockName))
      ..add(DiagnosticsProperty('cropUnitId', cropUnitId))
      ..add(DiagnosticsProperty('farmId', farmId))
      ..add(DiagnosticsProperty('irrigationBlockArea', irrigationBlockArea))
      ..add(DiagnosticsProperty(
          'manualIrrigationBlockArea', manualIrrigationBlockArea))
      ..add(DiagnosticsProperty('soilTypeId', soilTypeId))
      ..add(DiagnosticsProperty('flowRate', flowRate))
      ..add(DiagnosticsProperty('irrigationRate', irrigationRate))
      ..add(DiagnosticsProperty('manualIrrigationRate', manualIrrigationRate))
      ..add(DiagnosticsProperty('cropId', cropId))
      ..add(DiagnosticsProperty('varietyId', varietyId))
      ..add(DiagnosticsProperty('irrigationMethodId', irrigationMethodId))
      ..add(DiagnosticsProperty('sensors', sensors))
      ..add(DiagnosticsProperty('valves', valves))
      ..add(DiagnosticsProperty('meters', meters))
      ..add(DiagnosticsProperty('data', data))
      ..add(
          DiagnosticsProperty('waterBalanceInPercent', waterBalanceInPercent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrrigationBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.irrigationBlockName, irrigationBlockName) ||
                other.irrigationBlockName == irrigationBlockName) &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.irrigationBlockArea, irrigationBlockArea) ||
                other.irrigationBlockArea == irrigationBlockArea) &&
            (identical(other.manualIrrigationBlockArea,
                    manualIrrigationBlockArea) ||
                other.manualIrrigationBlockArea == manualIrrigationBlockArea) &&
            (identical(other.soilTypeId, soilTypeId) ||
                other.soilTypeId == soilTypeId) &&
            (identical(other.flowRate, flowRate) ||
                other.flowRate == flowRate) &&
            (identical(other.irrigationRate, irrigationRate) ||
                other.irrigationRate == irrigationRate) &&
            (identical(other.manualIrrigationRate, manualIrrigationRate) ||
                other.manualIrrigationRate == manualIrrigationRate) &&
            (identical(other.cropId, cropId) || other.cropId == cropId) &&
            (identical(other.varietyId, varietyId) ||
                other.varietyId == varietyId) &&
            (identical(other.irrigationMethodId, irrigationMethodId) ||
                other.irrigationMethodId == irrigationMethodId) &&
            const DeepCollectionEquality().equals(other._sensors, _sensors) &&
            const DeepCollectionEquality().equals(other._valves, _valves) &&
            const DeepCollectionEquality().equals(other._meters, _meters) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.waterBalanceInPercent, waterBalanceInPercent) ||
                other.waterBalanceInPercent == waterBalanceInPercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      irrigationBlockName,
      cropUnitId,
      farmId,
      irrigationBlockArea,
      manualIrrigationBlockArea,
      soilTypeId,
      flowRate,
      irrigationRate,
      manualIrrigationRate,
      cropId,
      varietyId,
      irrigationMethodId,
      const DeepCollectionEquality().hash(_sensors),
      const DeepCollectionEquality().hash(_valves),
      const DeepCollectionEquality().hash(_meters),
      data,
      waterBalanceInPercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrrigationBlockCopyWith<_$_IrrigationBlock> get copyWith =>
      __$$_IrrigationBlockCopyWithImpl<_$_IrrigationBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrrigationBlockToJson(
      this,
    );
  }
}

abstract class _IrrigationBlock extends IrrigationBlock {
  const factory _IrrigationBlock(
      {required final String id,
      required final String irrigationBlockName,
      final String? cropUnitId,
      final String? farmId,
      final Measure? irrigationBlockArea,
      final Measure? manualIrrigationBlockArea,
      final int? soilTypeId,
      final Measure? flowRate,
      final Measure? irrigationRate,
      final Measure? manualIrrigationRate,
      final int? cropId,
      final int? varietyId,
      final int? irrigationMethodId,
      final List<dynamic>? sensors,
      final List<dynamic>? valves,
      final List<dynamic>? meters,
      final IrrigationBlockData? data,
      final double? waterBalanceInPercent}) = _$_IrrigationBlock;
  const _IrrigationBlock._() : super._();

  factory _IrrigationBlock.fromJson(Map<String, dynamic> json) =
      _$_IrrigationBlock.fromJson;

  @override
  String get id;
  @override
  String get irrigationBlockName;
  @override
  String? get cropUnitId;
  @override
  String? get farmId;
  @override
  Measure? get irrigationBlockArea;
  @override
  Measure? get manualIrrigationBlockArea;
  @override
  int? get soilTypeId;
  @override
  Measure? get flowRate;
  @override
  Measure? get irrigationRate;
  @override
  Measure? get manualIrrigationRate;
  @override
  int? get cropId;
  @override
  int? get varietyId;
  @override
  int? get irrigationMethodId;
  @override
  List<dynamic>? get sensors;
  @override
  List<dynamic>? get valves;
  @override
  List<dynamic>? get meters;
  @override
  IrrigationBlockData? get data;
  @override
  double? get waterBalanceInPercent;
  @override
  @JsonKey(ignore: true)
  _$$_IrrigationBlockCopyWith<_$_IrrigationBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

IrrigationBlockData _$IrrigationBlockDataFromJson(Map<String, dynamic> json) {
  return _IrrigationBlockData.fromJson(json);
}

/// @nodoc
mixin _$IrrigationBlockData {
  Geolocation? get geolocation => throw _privateConstructorUsedError;
  List<ItemGroup>? get itemGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrrigationBlockDataCopyWith<IrrigationBlockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrrigationBlockDataCopyWith<$Res> {
  factory $IrrigationBlockDataCopyWith(
          IrrigationBlockData value, $Res Function(IrrigationBlockData) then) =
      _$IrrigationBlockDataCopyWithImpl<$Res, IrrigationBlockData>;
  @useResult
  $Res call({Geolocation? geolocation, List<ItemGroup>? itemGroups});

  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$IrrigationBlockDataCopyWithImpl<$Res, $Val extends IrrigationBlockData>
    implements $IrrigationBlockDataCopyWith<$Res> {
  _$IrrigationBlockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocation = freezed,
    Object? itemGroups = freezed,
  }) {
    return _then(_value.copyWith(
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
      itemGroups: freezed == itemGroups
          ? _value.itemGroups
          : itemGroups // ignore: cast_nullable_to_non_nullable
              as List<ItemGroup>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeolocationCopyWith<$Res>? get geolocation {
    if (_value.geolocation == null) {
      return null;
    }

    return $GeolocationCopyWith<$Res>(_value.geolocation!, (value) {
      return _then(_value.copyWith(geolocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IrrigationBlockDataCopyWith<$Res>
    implements $IrrigationBlockDataCopyWith<$Res> {
  factory _$$_IrrigationBlockDataCopyWith(_$_IrrigationBlockData value,
          $Res Function(_$_IrrigationBlockData) then) =
      __$$_IrrigationBlockDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Geolocation? geolocation, List<ItemGroup>? itemGroups});

  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$$_IrrigationBlockDataCopyWithImpl<$Res>
    extends _$IrrigationBlockDataCopyWithImpl<$Res, _$_IrrigationBlockData>
    implements _$$_IrrigationBlockDataCopyWith<$Res> {
  __$$_IrrigationBlockDataCopyWithImpl(_$_IrrigationBlockData _value,
      $Res Function(_$_IrrigationBlockData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocation = freezed,
    Object? itemGroups = freezed,
  }) {
    return _then(_$_IrrigationBlockData(
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
      itemGroups: freezed == itemGroups
          ? _value._itemGroups
          : itemGroups // ignore: cast_nullable_to_non_nullable
              as List<ItemGroup>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrrigationBlockData
    with DiagnosticableTreeMixin
    implements _IrrigationBlockData {
  const _$_IrrigationBlockData(
      {this.geolocation, final List<ItemGroup>? itemGroups})
      : _itemGroups = itemGroups;

  factory _$_IrrigationBlockData.fromJson(Map<String, dynamic> json) =>
      _$$_IrrigationBlockDataFromJson(json);

  @override
  final Geolocation? geolocation;
  final List<ItemGroup>? _itemGroups;
  @override
  List<ItemGroup>? get itemGroups {
    final value = _itemGroups;
    if (value == null) return null;
    if (_itemGroups is EqualUnmodifiableListView) return _itemGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IrrigationBlockData(geolocation: $geolocation, itemGroups: $itemGroups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IrrigationBlockData'))
      ..add(DiagnosticsProperty('geolocation', geolocation))
      ..add(DiagnosticsProperty('itemGroups', itemGroups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrrigationBlockData &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            const DeepCollectionEquality()
                .equals(other._itemGroups, _itemGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, geolocation,
      const DeepCollectionEquality().hash(_itemGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrrigationBlockDataCopyWith<_$_IrrigationBlockData> get copyWith =>
      __$$_IrrigationBlockDataCopyWithImpl<_$_IrrigationBlockData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrrigationBlockDataToJson(
      this,
    );
  }
}

abstract class _IrrigationBlockData implements IrrigationBlockData {
  const factory _IrrigationBlockData(
      {final Geolocation? geolocation,
      final List<ItemGroup>? itemGroups}) = _$_IrrigationBlockData;

  factory _IrrigationBlockData.fromJson(Map<String, dynamic> json) =
      _$_IrrigationBlockData.fromJson;

  @override
  Geolocation? get geolocation;
  @override
  List<ItemGroup>? get itemGroups;
  @override
  @JsonKey(ignore: true)
  _$$_IrrigationBlockDataCopyWith<_$_IrrigationBlockData> get copyWith =>
      throw _privateConstructorUsedError;
}

Geolocation _$GeolocationFromJson(Map<String, dynamic> json) {
  return _Geolocation.fromJson(json);
}

/// @nodoc
mixin _$Geolocation {
  String get id => throw _privateConstructorUsedError;
  String get geolocationType => throw _privateConstructorUsedError;
  List<Location> get vertices => throw _privateConstructorUsedError;
  dynamic get radius => throw _privateConstructorUsedError;
  dynamic get area => throw _privateConstructorUsedError;
  dynamic get bounds => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeolocationCopyWith<Geolocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationCopyWith<$Res> {
  factory $GeolocationCopyWith(
          Geolocation value, $Res Function(Geolocation) then) =
      _$GeolocationCopyWithImpl<$Res, Geolocation>;
  @useResult
  $Res call(
      {String id,
      String geolocationType,
      List<Location> vertices,
      dynamic radius,
      dynamic area,
      dynamic bounds,
      dynamic description});
}

/// @nodoc
class _$GeolocationCopyWithImpl<$Res, $Val extends Geolocation>
    implements $GeolocationCopyWith<$Res> {
  _$GeolocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? geolocationType = null,
    Object? vertices = null,
    Object? radius = freezed,
    Object? area = freezed,
    Object? bounds = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      geolocationType: null == geolocationType
          ? _value.geolocationType
          : geolocationType // ignore: cast_nullable_to_non_nullable
              as String,
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeolocationCopyWith<$Res>
    implements $GeolocationCopyWith<$Res> {
  factory _$$_GeolocationCopyWith(
          _$_Geolocation value, $Res Function(_$_Geolocation) then) =
      __$$_GeolocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String geolocationType,
      List<Location> vertices,
      dynamic radius,
      dynamic area,
      dynamic bounds,
      dynamic description});
}

/// @nodoc
class __$$_GeolocationCopyWithImpl<$Res>
    extends _$GeolocationCopyWithImpl<$Res, _$_Geolocation>
    implements _$$_GeolocationCopyWith<$Res> {
  __$$_GeolocationCopyWithImpl(
      _$_Geolocation _value, $Res Function(_$_Geolocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? geolocationType = null,
    Object? vertices = null,
    Object? radius = freezed,
    Object? area = freezed,
    Object? bounds = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Geolocation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      geolocationType: null == geolocationType
          ? _value.geolocationType
          : geolocationType // ignore: cast_nullable_to_non_nullable
              as String,
      vertices: null == vertices
          ? _value._vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      radius: freezed == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geolocation with DiagnosticableTreeMixin implements _Geolocation {
  const _$_Geolocation(
      {required this.id,
      required this.geolocationType,
      required final List<Location> vertices,
      required this.radius,
      required this.area,
      required this.bounds,
      required this.description})
      : _vertices = vertices;

  factory _$_Geolocation.fromJson(Map<String, dynamic> json) =>
      _$$_GeolocationFromJson(json);

  @override
  final String id;
  @override
  final String geolocationType;
  final List<Location> _vertices;
  @override
  List<Location> get vertices {
    if (_vertices is EqualUnmodifiableListView) return _vertices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertices);
  }

  @override
  final dynamic radius;
  @override
  final dynamic area;
  @override
  final dynamic bounds;
  @override
  final dynamic description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Geolocation(id: $id, geolocationType: $geolocationType, vertices: $vertices, radius: $radius, area: $area, bounds: $bounds, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Geolocation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('geolocationType', geolocationType))
      ..add(DiagnosticsProperty('vertices', vertices))
      ..add(DiagnosticsProperty('radius', radius))
      ..add(DiagnosticsProperty('area', area))
      ..add(DiagnosticsProperty('bounds', bounds))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Geolocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.geolocationType, geolocationType) ||
                other.geolocationType == geolocationType) &&
            const DeepCollectionEquality().equals(other._vertices, _vertices) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.bounds, bounds) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      geolocationType,
      const DeepCollectionEquality().hash(_vertices),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(bounds),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeolocationCopyWith<_$_Geolocation> get copyWith =>
      __$$_GeolocationCopyWithImpl<_$_Geolocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeolocationToJson(
      this,
    );
  }
}

abstract class _Geolocation implements Geolocation {
  const factory _Geolocation(
      {required final String id,
      required final String geolocationType,
      required final List<Location> vertices,
      required final dynamic radius,
      required final dynamic area,
      required final dynamic bounds,
      required final dynamic description}) = _$_Geolocation;

  factory _Geolocation.fromJson(Map<String, dynamic> json) =
      _$_Geolocation.fromJson;

  @override
  String get id;
  @override
  String get geolocationType;
  @override
  List<Location> get vertices;
  @override
  dynamic get radius;
  @override
  dynamic get area;
  @override
  dynamic get bounds;
  @override
  dynamic get description;
  @override
  @JsonKey(ignore: true)
  _$$_GeolocationCopyWith<_$_Geolocation> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_Location(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location with DiagnosticableTreeMixin implements _Location {
  const _$_Location({required this.lat, required this.lng});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Location(lat: $lat, lng: $lng)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Location'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('lng', lng));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final double lat, required final double lng}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Measure _$MeasureFromJson(Map<String, dynamic> json) {
  return _Measure.fromJson(json);
}

/// @nodoc
mixin _$Measure {
  dynamic get uom => throw _privateConstructorUsedError;
  num? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureCopyWith<Measure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureCopyWith<$Res> {
  factory $MeasureCopyWith(Measure value, $Res Function(Measure) then) =
      _$MeasureCopyWithImpl<$Res, Measure>;
  @useResult
  $Res call({dynamic uom, num? value});
}

/// @nodoc
class _$MeasureCopyWithImpl<$Res, $Val extends Measure>
    implements $MeasureCopyWith<$Res> {
  _$MeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uom = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasureCopyWith<$Res> implements $MeasureCopyWith<$Res> {
  factory _$$_MeasureCopyWith(
          _$_Measure value, $Res Function(_$_Measure) then) =
      __$$_MeasureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic uom, num? value});
}

/// @nodoc
class __$$_MeasureCopyWithImpl<$Res>
    extends _$MeasureCopyWithImpl<$Res, _$_Measure>
    implements _$$_MeasureCopyWith<$Res> {
  __$$_MeasureCopyWithImpl(_$_Measure _value, $Res Function(_$_Measure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uom = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Measure(
      uom: freezed == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Measure with DiagnosticableTreeMixin implements _Measure {
  const _$_Measure({this.uom, this.value});

  factory _$_Measure.fromJson(Map<String, dynamic> json) =>
      _$$_MeasureFromJson(json);

  @override
  final dynamic uom;
  @override
  final num? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Measure(uom: $uom, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Measure'))
      ..add(DiagnosticsProperty('uom', uom))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Measure &&
            const DeepCollectionEquality().equals(other.uom, uom) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(uom), value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasureCopyWith<_$_Measure> get copyWith =>
      __$$_MeasureCopyWithImpl<_$_Measure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureToJson(
      this,
    );
  }
}

abstract class _Measure implements Measure {
  const factory _Measure({final dynamic uom, final num? value}) = _$_Measure;

  factory _Measure.fromJson(Map<String, dynamic> json) = _$_Measure.fromJson;

  @override
  dynamic get uom;
  @override
  num? get value;
  @override
  @JsonKey(ignore: true)
  _$$_MeasureCopyWith<_$_Measure> get copyWith =>
      throw _privateConstructorUsedError;
}
