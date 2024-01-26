// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FarmDashboardResponse _$FarmDashboardResponseFromJson(
    Map<String, dynamic> json) {
  return _FarmDashboardResponse.fromJson(json);
}

/// @nodoc
mixin _$FarmDashboardResponse {
  List<DashboardCropUnit> get cropUnits => throw _privateConstructorUsedError;
  List<IrrigationBlock> get unconnectedIrrigationBlocks =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmDashboardResponseCopyWith<FarmDashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmDashboardResponseCopyWith<$Res> {
  factory $FarmDashboardResponseCopyWith(FarmDashboardResponse value,
          $Res Function(FarmDashboardResponse) then) =
      _$FarmDashboardResponseCopyWithImpl<$Res, FarmDashboardResponse>;
  @useResult
  $Res call(
      {List<DashboardCropUnit> cropUnits,
      List<IrrigationBlock> unconnectedIrrigationBlocks});
}

/// @nodoc
class _$FarmDashboardResponseCopyWithImpl<$Res,
        $Val extends FarmDashboardResponse>
    implements $FarmDashboardResponseCopyWith<$Res> {
  _$FarmDashboardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropUnits = null,
    Object? unconnectedIrrigationBlocks = null,
  }) {
    return _then(_value.copyWith(
      cropUnits: null == cropUnits
          ? _value.cropUnits
          : cropUnits // ignore: cast_nullable_to_non_nullable
              as List<DashboardCropUnit>,
      unconnectedIrrigationBlocks: null == unconnectedIrrigationBlocks
          ? _value.unconnectedIrrigationBlocks
          : unconnectedIrrigationBlocks // ignore: cast_nullable_to_non_nullable
              as List<IrrigationBlock>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FarmDashboardResponseCopyWith<$Res>
    implements $FarmDashboardResponseCopyWith<$Res> {
  factory _$$_FarmDashboardResponseCopyWith(_$_FarmDashboardResponse value,
          $Res Function(_$_FarmDashboardResponse) then) =
      __$$_FarmDashboardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DashboardCropUnit> cropUnits,
      List<IrrigationBlock> unconnectedIrrigationBlocks});
}

/// @nodoc
class __$$_FarmDashboardResponseCopyWithImpl<$Res>
    extends _$FarmDashboardResponseCopyWithImpl<$Res, _$_FarmDashboardResponse>
    implements _$$_FarmDashboardResponseCopyWith<$Res> {
  __$$_FarmDashboardResponseCopyWithImpl(_$_FarmDashboardResponse _value,
      $Res Function(_$_FarmDashboardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropUnits = null,
    Object? unconnectedIrrigationBlocks = null,
  }) {
    return _then(_$_FarmDashboardResponse(
      cropUnits: null == cropUnits
          ? _value._cropUnits
          : cropUnits // ignore: cast_nullable_to_non_nullable
              as List<DashboardCropUnit>,
      unconnectedIrrigationBlocks: null == unconnectedIrrigationBlocks
          ? _value._unconnectedIrrigationBlocks
          : unconnectedIrrigationBlocks // ignore: cast_nullable_to_non_nullable
              as List<IrrigationBlock>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FarmDashboardResponse
    with DiagnosticableTreeMixin
    implements _FarmDashboardResponse {
  const _$_FarmDashboardResponse(
      {required final List<DashboardCropUnit> cropUnits,
      final List<IrrigationBlock> unconnectedIrrigationBlocks = const []})
      : _cropUnits = cropUnits,
        _unconnectedIrrigationBlocks = unconnectedIrrigationBlocks;

  factory _$_FarmDashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FarmDashboardResponseFromJson(json);

  final List<DashboardCropUnit> _cropUnits;
  @override
  List<DashboardCropUnit> get cropUnits {
    if (_cropUnits is EqualUnmodifiableListView) return _cropUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cropUnits);
  }

  final List<IrrigationBlock> _unconnectedIrrigationBlocks;
  @override
  @JsonKey()
  List<IrrigationBlock> get unconnectedIrrigationBlocks {
    if (_unconnectedIrrigationBlocks is EqualUnmodifiableListView)
      return _unconnectedIrrigationBlocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unconnectedIrrigationBlocks);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmDashboardResponse(cropUnits: $cropUnits, unconnectedIrrigationBlocks: $unconnectedIrrigationBlocks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FarmDashboardResponse'))
      ..add(DiagnosticsProperty('cropUnits', cropUnits))
      ..add(DiagnosticsProperty(
          'unconnectedIrrigationBlocks', unconnectedIrrigationBlocks));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FarmDashboardResponse &&
            const DeepCollectionEquality()
                .equals(other._cropUnits, _cropUnits) &&
            const DeepCollectionEquality().equals(
                other._unconnectedIrrigationBlocks,
                _unconnectedIrrigationBlocks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cropUnits),
      const DeepCollectionEquality().hash(_unconnectedIrrigationBlocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FarmDashboardResponseCopyWith<_$_FarmDashboardResponse> get copyWith =>
      __$$_FarmDashboardResponseCopyWithImpl<_$_FarmDashboardResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmDashboardResponseToJson(
      this,
    );
  }
}

abstract class _FarmDashboardResponse implements FarmDashboardResponse {
  const factory _FarmDashboardResponse(
          {required final List<DashboardCropUnit> cropUnits,
          final List<IrrigationBlock> unconnectedIrrigationBlocks}) =
      _$_FarmDashboardResponse;

  factory _FarmDashboardResponse.fromJson(Map<String, dynamic> json) =
      _$_FarmDashboardResponse.fromJson;

  @override
  List<DashboardCropUnit> get cropUnits;
  @override
  List<IrrigationBlock> get unconnectedIrrigationBlocks;
  @override
  @JsonKey(ignore: true)
  _$$_FarmDashboardResponseCopyWith<_$_FarmDashboardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
