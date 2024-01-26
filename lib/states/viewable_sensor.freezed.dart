// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewable_sensor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewableSensor {
  String get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get depthUom => throw _privateConstructorUsedError;
  String? get thingId => throw _privateConstructorUsedError;
  int? get ioTypeId => throw _privateConstructorUsedError;
  int? get ioDeviceTypeId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewableSensorCopyWith<ViewableSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewableSensorCopyWith<$Res> {
  factory $ViewableSensorCopyWith(
          ViewableSensor value, $Res Function(ViewableSensor) then) =
      _$ViewableSensorCopyWithImpl<$Res, ViewableSensor>;
  @useResult
  $Res call(
      {String id,
      String? label,
      int? depth,
      String? depthUom,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId});
}

/// @nodoc
class _$ViewableSensorCopyWithImpl<$Res, $Val extends ViewableSensor>
    implements $ViewableSensorCopyWith<$Res> {
  _$ViewableSensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewableSensorCopyWith<$Res>
    implements $ViewableSensorCopyWith<$Res> {
  factory _$$_ViewableSensorCopyWith(
          _$_ViewableSensor value, $Res Function(_$_ViewableSensor) then) =
      __$$_ViewableSensorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      int? depth,
      String? depthUom,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId});
}

/// @nodoc
class __$$_ViewableSensorCopyWithImpl<$Res>
    extends _$ViewableSensorCopyWithImpl<$Res, _$_ViewableSensor>
    implements _$$_ViewableSensorCopyWith<$Res> {
  __$$_ViewableSensorCopyWithImpl(
      _$_ViewableSensor _value, $Res Function(_$_ViewableSensor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
  }) {
    return _then(_$_ViewableSensor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ViewableSensor
    with DiagnosticableTreeMixin
    implements _ViewableSensor {
  const _$_ViewableSensor(
      {required this.id,
      this.label,
      this.depth,
      this.depthUom,
      this.thingId,
      this.ioTypeId,
      this.ioDeviceTypeId});

  @override
  final String id;
  @override
  final String? label;
  @override
  final int? depth;
  @override
  final String? depthUom;
  @override
  final String? thingId;
  @override
  final int? ioTypeId;
  @override
  final int? ioDeviceTypeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewableSensor(id: $id, label: $label, depth: $depth, depthUom: $depthUom, thingId: $thingId, ioTypeId: $ioTypeId, ioDeviceTypeId: $ioDeviceTypeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewableSensor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('depth', depth))
      ..add(DiagnosticsProperty('depthUom', depthUom))
      ..add(DiagnosticsProperty('thingId', thingId))
      ..add(DiagnosticsProperty('ioTypeId', ioTypeId))
      ..add(DiagnosticsProperty('ioDeviceTypeId', ioDeviceTypeId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewableSensor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.depthUom, depthUom) ||
                other.depthUom == depthUom) &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.ioTypeId, ioTypeId) ||
                other.ioTypeId == ioTypeId) &&
            (identical(other.ioDeviceTypeId, ioDeviceTypeId) ||
                other.ioDeviceTypeId == ioDeviceTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, depth, depthUom,
      thingId, ioTypeId, ioDeviceTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewableSensorCopyWith<_$_ViewableSensor> get copyWith =>
      __$$_ViewableSensorCopyWithImpl<_$_ViewableSensor>(this, _$identity);
}

abstract class _ViewableSensor implements ViewableSensor {
  const factory _ViewableSensor(
      {required final String id,
      final String? label,
      final int? depth,
      final String? depthUom,
      final String? thingId,
      final int? ioTypeId,
      final int? ioDeviceTypeId}) = _$_ViewableSensor;

  @override
  String get id;
  @override
  String? get label;
  @override
  int? get depth;
  @override
  String? get depthUom;
  @override
  String? get thingId;
  @override
  int? get ioTypeId;
  @override
  int? get ioDeviceTypeId;
  @override
  @JsonKey(ignore: true)
  _$$_ViewableSensorCopyWith<_$_ViewableSensor> get copyWith =>
      throw _privateConstructorUsedError;
}
