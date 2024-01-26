// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_unit_graphs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CropUnitGraph _$CropUnitGraphFromJson(Map<String, dynamic> json) {
  return _CropUnitGraph.fromJson(json);
}

/// @nodoc
mixin _$CropUnitGraph {
  String get graphKey => throw _privateConstructorUsedError;
  Map<String, dynamic> get measurementData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropUnitGraphCopyWith<CropUnitGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropUnitGraphCopyWith<$Res> {
  factory $CropUnitGraphCopyWith(
          CropUnitGraph value, $Res Function(CropUnitGraph) then) =
      _$CropUnitGraphCopyWithImpl<$Res, CropUnitGraph>;
  @useResult
  $Res call({String graphKey, Map<String, dynamic> measurementData});
}

/// @nodoc
class _$CropUnitGraphCopyWithImpl<$Res, $Val extends CropUnitGraph>
    implements $CropUnitGraphCopyWith<$Res> {
  _$CropUnitGraphCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphKey = null,
    Object? measurementData = null,
  }) {
    return _then(_value.copyWith(
      graphKey: null == graphKey
          ? _value.graphKey
          : graphKey // ignore: cast_nullable_to_non_nullable
              as String,
      measurementData: null == measurementData
          ? _value.measurementData
          : measurementData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CropUnitGraphCopyWith<$Res>
    implements $CropUnitGraphCopyWith<$Res> {
  factory _$$_CropUnitGraphCopyWith(
          _$_CropUnitGraph value, $Res Function(_$_CropUnitGraph) then) =
      __$$_CropUnitGraphCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String graphKey, Map<String, dynamic> measurementData});
}

/// @nodoc
class __$$_CropUnitGraphCopyWithImpl<$Res>
    extends _$CropUnitGraphCopyWithImpl<$Res, _$_CropUnitGraph>
    implements _$$_CropUnitGraphCopyWith<$Res> {
  __$$_CropUnitGraphCopyWithImpl(
      _$_CropUnitGraph _value, $Res Function(_$_CropUnitGraph) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphKey = null,
    Object? measurementData = null,
  }) {
    return _then(_$_CropUnitGraph(
      graphKey: null == graphKey
          ? _value.graphKey
          : graphKey // ignore: cast_nullable_to_non_nullable
              as String,
      measurementData: null == measurementData
          ? _value._measurementData
          : measurementData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CropUnitGraph implements _CropUnitGraph {
  const _$_CropUnitGraph(
      {required this.graphKey,
      required final Map<String, dynamic> measurementData})
      : _measurementData = measurementData;

  factory _$_CropUnitGraph.fromJson(Map<String, dynamic> json) =>
      _$$_CropUnitGraphFromJson(json);

  @override
  final String graphKey;
  final Map<String, dynamic> _measurementData;
  @override
  Map<String, dynamic> get measurementData {
    if (_measurementData is EqualUnmodifiableMapView) return _measurementData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_measurementData);
  }

  @override
  String toString() {
    return 'CropUnitGraph(graphKey: $graphKey, measurementData: $measurementData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CropUnitGraph &&
            (identical(other.graphKey, graphKey) ||
                other.graphKey == graphKey) &&
            const DeepCollectionEquality()
                .equals(other._measurementData, _measurementData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, graphKey,
      const DeepCollectionEquality().hash(_measurementData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CropUnitGraphCopyWith<_$_CropUnitGraph> get copyWith =>
      __$$_CropUnitGraphCopyWithImpl<_$_CropUnitGraph>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CropUnitGraphToJson(
      this,
    );
  }
}

abstract class _CropUnitGraph implements CropUnitGraph {
  const factory _CropUnitGraph(
      {required final String graphKey,
      required final Map<String, dynamic> measurementData}) = _$_CropUnitGraph;

  factory _CropUnitGraph.fromJson(Map<String, dynamic> json) =
      _$_CropUnitGraph.fromJson;

  @override
  String get graphKey;
  @override
  Map<String, dynamic> get measurementData;
  @override
  @JsonKey(ignore: true)
  _$$_CropUnitGraphCopyWith<_$_CropUnitGraph> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasurementData _$MeasurementDataFromJson(Map<String, dynamic> json) {
  return _MeasurementData.fromJson(json);
}

/// @nodoc
mixin _$MeasurementData {
  String get ioId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get graphColor => throw _privateConstructorUsedError;
  String get graphType => throw _privateConstructorUsedError;
  String get uom => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get mesaurementData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementDataCopyWith<MeasurementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementDataCopyWith<$Res> {
  factory $MeasurementDataCopyWith(
          MeasurementData value, $Res Function(MeasurementData) then) =
      _$MeasurementDataCopyWithImpl<$Res, MeasurementData>;
  @useResult
  $Res call(
      {String ioId,
      String itemId,
      String graphColor,
      String graphType,
      String uom,
      List<Map<String, dynamic>> mesaurementData});
}

/// @nodoc
class _$MeasurementDataCopyWithImpl<$Res, $Val extends MeasurementData>
    implements $MeasurementDataCopyWith<$Res> {
  _$MeasurementDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioId = null,
    Object? itemId = null,
    Object? graphColor = null,
    Object? graphType = null,
    Object? uom = null,
    Object? mesaurementData = null,
  }) {
    return _then(_value.copyWith(
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      graphColor: null == graphColor
          ? _value.graphColor
          : graphColor // ignore: cast_nullable_to_non_nullable
              as String,
      graphType: null == graphType
          ? _value.graphType
          : graphType // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
      mesaurementData: null == mesaurementData
          ? _value.mesaurementData
          : mesaurementData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurementDataCopyWith<$Res>
    implements $MeasurementDataCopyWith<$Res> {
  factory _$$_MeasurementDataCopyWith(
          _$_MeasurementData value, $Res Function(_$_MeasurementData) then) =
      __$$_MeasurementDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ioId,
      String itemId,
      String graphColor,
      String graphType,
      String uom,
      List<Map<String, dynamic>> mesaurementData});
}

/// @nodoc
class __$$_MeasurementDataCopyWithImpl<$Res>
    extends _$MeasurementDataCopyWithImpl<$Res, _$_MeasurementData>
    implements _$$_MeasurementDataCopyWith<$Res> {
  __$$_MeasurementDataCopyWithImpl(
      _$_MeasurementData _value, $Res Function(_$_MeasurementData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioId = null,
    Object? itemId = null,
    Object? graphColor = null,
    Object? graphType = null,
    Object? uom = null,
    Object? mesaurementData = null,
  }) {
    return _then(_$_MeasurementData(
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      graphColor: null == graphColor
          ? _value.graphColor
          : graphColor // ignore: cast_nullable_to_non_nullable
              as String,
      graphType: null == graphType
          ? _value.graphType
          : graphType // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
      mesaurementData: null == mesaurementData
          ? _value._mesaurementData
          : mesaurementData // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementData implements _MeasurementData {
  const _$_MeasurementData(
      {required this.ioId,
      required this.itemId,
      required this.graphColor,
      required this.graphType,
      required this.uom,
      required final List<Map<String, dynamic>> mesaurementData})
      : _mesaurementData = mesaurementData;

  factory _$_MeasurementData.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementDataFromJson(json);

  @override
  final String ioId;
  @override
  final String itemId;
  @override
  final String graphColor;
  @override
  final String graphType;
  @override
  final String uom;
  final List<Map<String, dynamic>> _mesaurementData;
  @override
  List<Map<String, dynamic>> get mesaurementData {
    if (_mesaurementData is EqualUnmodifiableListView) return _mesaurementData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mesaurementData);
  }

  @override
  String toString() {
    return 'MeasurementData(ioId: $ioId, itemId: $itemId, graphColor: $graphColor, graphType: $graphType, uom: $uom, mesaurementData: $mesaurementData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementData &&
            (identical(other.ioId, ioId) || other.ioId == ioId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.graphColor, graphColor) ||
                other.graphColor == graphColor) &&
            (identical(other.graphType, graphType) ||
                other.graphType == graphType) &&
            (identical(other.uom, uom) || other.uom == uom) &&
            const DeepCollectionEquality()
                .equals(other._mesaurementData, _mesaurementData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ioId, itemId, graphColor,
      graphType, uom, const DeepCollectionEquality().hash(_mesaurementData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementDataCopyWith<_$_MeasurementData> get copyWith =>
      __$$_MeasurementDataCopyWithImpl<_$_MeasurementData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementDataToJson(
      this,
    );
  }
}

abstract class _MeasurementData implements MeasurementData {
  const factory _MeasurementData(
          {required final String ioId,
          required final String itemId,
          required final String graphColor,
          required final String graphType,
          required final String uom,
          required final List<Map<String, dynamic>> mesaurementData}) =
      _$_MeasurementData;

  factory _MeasurementData.fromJson(Map<String, dynamic> json) =
      _$_MeasurementData.fromJson;

  @override
  String get ioId;
  @override
  String get itemId;
  @override
  String get graphColor;
  @override
  String get graphType;
  @override
  String get uom;
  @override
  List<Map<String, dynamic>> get mesaurementData;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementDataCopyWith<_$_MeasurementData> get copyWith =>
      throw _privateConstructorUsedError;
}

MeasurementPoint _$MeasurementPointFromJson(Map<String, dynamic> json) {
  return _MeasurementPoint.fromJson(json);
}

/// @nodoc
mixin _$MeasurementPoint {
  String get measurementDate => throw _privateConstructorUsedError;
  num get measurementValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementPointCopyWith<MeasurementPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementPointCopyWith<$Res> {
  factory $MeasurementPointCopyWith(
          MeasurementPoint value, $Res Function(MeasurementPoint) then) =
      _$MeasurementPointCopyWithImpl<$Res, MeasurementPoint>;
  @useResult
  $Res call({String measurementDate, num measurementValue});
}

/// @nodoc
class _$MeasurementPointCopyWithImpl<$Res, $Val extends MeasurementPoint>
    implements $MeasurementPointCopyWith<$Res> {
  _$MeasurementPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? measurementValue = null,
  }) {
    return _then(_value.copyWith(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as String,
      measurementValue: null == measurementValue
          ? _value.measurementValue
          : measurementValue // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurementPointCopyWith<$Res>
    implements $MeasurementPointCopyWith<$Res> {
  factory _$$_MeasurementPointCopyWith(
          _$_MeasurementPoint value, $Res Function(_$_MeasurementPoint) then) =
      __$$_MeasurementPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String measurementDate, num measurementValue});
}

/// @nodoc
class __$$_MeasurementPointCopyWithImpl<$Res>
    extends _$MeasurementPointCopyWithImpl<$Res, _$_MeasurementPoint>
    implements _$$_MeasurementPointCopyWith<$Res> {
  __$$_MeasurementPointCopyWithImpl(
      _$_MeasurementPoint _value, $Res Function(_$_MeasurementPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementDate = null,
    Object? measurementValue = null,
  }) {
    return _then(_$_MeasurementPoint(
      measurementDate: null == measurementDate
          ? _value.measurementDate
          : measurementDate // ignore: cast_nullable_to_non_nullable
              as String,
      measurementValue: null == measurementValue
          ? _value.measurementValue
          : measurementValue // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeasurementPoint implements _MeasurementPoint {
  const _$_MeasurementPoint(
      {required this.measurementDate, required this.measurementValue});

  factory _$_MeasurementPoint.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementPointFromJson(json);

  @override
  final String measurementDate;
  @override
  final num measurementValue;

  @override
  String toString() {
    return 'MeasurementPoint(measurementDate: $measurementDate, measurementValue: $measurementValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeasurementPoint &&
            (identical(other.measurementDate, measurementDate) ||
                other.measurementDate == measurementDate) &&
            (identical(other.measurementValue, measurementValue) ||
                other.measurementValue == measurementValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, measurementDate, measurementValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementPointCopyWith<_$_MeasurementPoint> get copyWith =>
      __$$_MeasurementPointCopyWithImpl<_$_MeasurementPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementPointToJson(
      this,
    );
  }
}

abstract class _MeasurementPoint implements MeasurementPoint {
  const factory _MeasurementPoint(
      {required final String measurementDate,
      required final num measurementValue}) = _$_MeasurementPoint;

  factory _MeasurementPoint.fromJson(Map<String, dynamic> json) =
      _$_MeasurementPoint.fromJson;

  @override
  String get measurementDate;
  @override
  num get measurementValue;
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementPointCopyWith<_$_MeasurementPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
