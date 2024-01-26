// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorRequest _$SensorRequestFromJson(Map<String, dynamic> json) {
  return _SensorRequest.fromJson(json);
}

/// @nodoc
mixin _$SensorRequest {
  String get sensorId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorRequestCopyWith<SensorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorRequestCopyWith<$Res> {
  factory $SensorRequestCopyWith(
          SensorRequest value, $Res Function(SensorRequest) then) =
      _$SensorRequestCopyWithImpl<$Res, SensorRequest>;
  @useResult
  $Res call({String sensorId, @JsonKey(includeIfNull: false) int? depth});
}

/// @nodoc
class _$SensorRequestCopyWithImpl<$Res, $Val extends SensorRequest>
    implements $SensorRequestCopyWith<$Res> {
  _$SensorRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorRequestCopyWith<$Res>
    implements $SensorRequestCopyWith<$Res> {
  factory _$$_SensorRequestCopyWith(
          _$_SensorRequest value, $Res Function(_$_SensorRequest) then) =
      __$$_SensorRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sensorId, @JsonKey(includeIfNull: false) int? depth});
}

/// @nodoc
class __$$_SensorRequestCopyWithImpl<$Res>
    extends _$SensorRequestCopyWithImpl<$Res, _$_SensorRequest>
    implements _$$_SensorRequestCopyWith<$Res> {
  __$$_SensorRequestCopyWithImpl(
      _$_SensorRequest _value, $Res Function(_$_SensorRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorId = null,
    Object? depth = freezed,
  }) {
    return _then(_$_SensorRequest(
      sensorId: null == sensorId
          ? _value.sensorId
          : sensorId // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SensorRequest with DiagnosticableTreeMixin implements _SensorRequest {
  const _$_SensorRequest(
      {required this.sensorId, @JsonKey(includeIfNull: false) this.depth});

  factory _$_SensorRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SensorRequestFromJson(json);

  @override
  final String sensorId;
  @override
  @JsonKey(includeIfNull: false)
  final int? depth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SensorRequest(sensorId: $sensorId, depth: $depth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SensorRequest'))
      ..add(DiagnosticsProperty('sensorId', sensorId))
      ..add(DiagnosticsProperty('depth', depth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SensorRequest &&
            (identical(other.sensorId, sensorId) ||
                other.sensorId == sensorId) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sensorId, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorRequestCopyWith<_$_SensorRequest> get copyWith =>
      __$$_SensorRequestCopyWithImpl<_$_SensorRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SensorRequestToJson(
      this,
    );
  }
}

abstract class _SensorRequest implements SensorRequest {
  const factory _SensorRequest(
      {required final String sensorId,
      @JsonKey(includeIfNull: false) final int? depth}) = _$_SensorRequest;

  factory _SensorRequest.fromJson(Map<String, dynamic> json) =
      _$_SensorRequest.fromJson;

  @override
  String get sensorId;
  @override
  @JsonKey(includeIfNull: false)
  int? get depth;
  @override
  @JsonKey(ignore: true)
  _$$_SensorRequestCopyWith<_$_SensorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
