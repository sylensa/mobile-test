// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphPoint _$GraphPointFromJson(Map<String, dynamic> json) {
  return _GraphPoint.fromJson(json);
}

/// @nodoc
mixin _$GraphPoint {
  String get date => throw _privateConstructorUsedError;
  num get calcMetric => throw _privateConstructorUsedError;
  num get calcImperial => throw _privateConstructorUsedError;
  String get graphType => throw _privateConstructorUsedError;
  num get metricValue => throw _privateConstructorUsedError;
  num get imperialValue => throw _privateConstructorUsedError;
  String get metricUom => throw _privateConstructorUsedError;
  String get imperialUom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphPointCopyWith<GraphPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphPointCopyWith<$Res> {
  factory $GraphPointCopyWith(
          GraphPoint value, $Res Function(GraphPoint) then) =
      _$GraphPointCopyWithImpl<$Res, GraphPoint>;
  @useResult
  $Res call(
      {String date,
      num calcMetric,
      num calcImperial,
      String graphType,
      num metricValue,
      num imperialValue,
      String metricUom,
      String imperialUom});
}

/// @nodoc
class _$GraphPointCopyWithImpl<$Res, $Val extends GraphPoint>
    implements $GraphPointCopyWith<$Res> {
  _$GraphPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? calcMetric = null,
    Object? calcImperial = null,
    Object? graphType = null,
    Object? metricValue = null,
    Object? imperialValue = null,
    Object? metricUom = null,
    Object? imperialUom = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      calcMetric: null == calcMetric
          ? _value.calcMetric
          : calcMetric // ignore: cast_nullable_to_non_nullable
              as num,
      calcImperial: null == calcImperial
          ? _value.calcImperial
          : calcImperial // ignore: cast_nullable_to_non_nullable
              as num,
      graphType: null == graphType
          ? _value.graphType
          : graphType // ignore: cast_nullable_to_non_nullable
              as String,
      metricValue: null == metricValue
          ? _value.metricValue
          : metricValue // ignore: cast_nullable_to_non_nullable
              as num,
      imperialValue: null == imperialValue
          ? _value.imperialValue
          : imperialValue // ignore: cast_nullable_to_non_nullable
              as num,
      metricUom: null == metricUom
          ? _value.metricUom
          : metricUom // ignore: cast_nullable_to_non_nullable
              as String,
      imperialUom: null == imperialUom
          ? _value.imperialUom
          : imperialUom // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphPointCopyWith<$Res>
    implements $GraphPointCopyWith<$Res> {
  factory _$$_GraphPointCopyWith(
          _$_GraphPoint value, $Res Function(_$_GraphPoint) then) =
      __$$_GraphPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      num calcMetric,
      num calcImperial,
      String graphType,
      num metricValue,
      num imperialValue,
      String metricUom,
      String imperialUom});
}

/// @nodoc
class __$$_GraphPointCopyWithImpl<$Res>
    extends _$GraphPointCopyWithImpl<$Res, _$_GraphPoint>
    implements _$$_GraphPointCopyWith<$Res> {
  __$$_GraphPointCopyWithImpl(
      _$_GraphPoint _value, $Res Function(_$_GraphPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? calcMetric = null,
    Object? calcImperial = null,
    Object? graphType = null,
    Object? metricValue = null,
    Object? imperialValue = null,
    Object? metricUom = null,
    Object? imperialUom = null,
  }) {
    return _then(_$_GraphPoint(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      calcMetric: null == calcMetric
          ? _value.calcMetric
          : calcMetric // ignore: cast_nullable_to_non_nullable
              as num,
      calcImperial: null == calcImperial
          ? _value.calcImperial
          : calcImperial // ignore: cast_nullable_to_non_nullable
              as num,
      graphType: null == graphType
          ? _value.graphType
          : graphType // ignore: cast_nullable_to_non_nullable
              as String,
      metricValue: null == metricValue
          ? _value.metricValue
          : metricValue // ignore: cast_nullable_to_non_nullable
              as num,
      imperialValue: null == imperialValue
          ? _value.imperialValue
          : imperialValue // ignore: cast_nullable_to_non_nullable
              as num,
      metricUom: null == metricUom
          ? _value.metricUom
          : metricUom // ignore: cast_nullable_to_non_nullable
              as String,
      imperialUom: null == imperialUom
          ? _value.imperialUom
          : imperialUom // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphPoint implements _GraphPoint {
  const _$_GraphPoint(
      {required this.date,
      required this.calcMetric,
      required this.calcImperial,
      required this.graphType,
      required this.metricValue,
      required this.imperialValue,
      this.metricUom = '',
      this.imperialUom = ''});

  factory _$_GraphPoint.fromJson(Map<String, dynamic> json) =>
      _$$_GraphPointFromJson(json);

  @override
  final String date;
  @override
  final num calcMetric;
  @override
  final num calcImperial;
  @override
  final String graphType;
  @override
  final num metricValue;
  @override
  final num imperialValue;
  @override
  @JsonKey()
  final String metricUom;
  @override
  @JsonKey()
  final String imperialUom;

  @override
  String toString() {
    return 'GraphPoint(date: $date, calcMetric: $calcMetric, calcImperial: $calcImperial, graphType: $graphType, metricValue: $metricValue, imperialValue: $imperialValue, metricUom: $metricUom, imperialUom: $imperialUom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphPoint &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.calcMetric, calcMetric) ||
                other.calcMetric == calcMetric) &&
            (identical(other.calcImperial, calcImperial) ||
                other.calcImperial == calcImperial) &&
            (identical(other.graphType, graphType) ||
                other.graphType == graphType) &&
            (identical(other.metricValue, metricValue) ||
                other.metricValue == metricValue) &&
            (identical(other.imperialValue, imperialValue) ||
                other.imperialValue == imperialValue) &&
            (identical(other.metricUom, metricUom) ||
                other.metricUom == metricUom) &&
            (identical(other.imperialUom, imperialUom) ||
                other.imperialUom == imperialUom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, calcMetric, calcImperial,
      graphType, metricValue, imperialValue, metricUom, imperialUom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphPointCopyWith<_$_GraphPoint> get copyWith =>
      __$$_GraphPointCopyWithImpl<_$_GraphPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphPointToJson(
      this,
    );
  }
}

abstract class _GraphPoint implements GraphPoint {
  const factory _GraphPoint(
      {required final String date,
      required final num calcMetric,
      required final num calcImperial,
      required final String graphType,
      required final num metricValue,
      required final num imperialValue,
      final String metricUom,
      final String imperialUom}) = _$_GraphPoint;

  factory _GraphPoint.fromJson(Map<String, dynamic> json) =
      _$_GraphPoint.fromJson;

  @override
  String get date;
  @override
  num get calcMetric;
  @override
  num get calcImperial;
  @override
  String get graphType;
  @override
  num get metricValue;
  @override
  num get imperialValue;
  @override
  String get metricUom;
  @override
  String get imperialUom;
  @override
  @JsonKey(ignore: true)
  _$$_GraphPointCopyWith<_$_GraphPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
