// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm_tree_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FarmTreeResponse _$FarmTreeResponseFromJson(Map<String, dynamic> json) {
  return _FarmTreeResponse.fromJson(json);
}

/// @nodoc
mixin _$FarmTreeResponse {
  String get thingId => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;
  List<IrrigationBlock> get irrigationBlocks =>
      throw _privateConstructorUsedError;
  List<CropUnit> get cropUnits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmTreeResponseCopyWith<FarmTreeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmTreeResponseCopyWith<$Res> {
  factory $FarmTreeResponseCopyWith(
          FarmTreeResponse value, $Res Function(FarmTreeResponse) then) =
      _$FarmTreeResponseCopyWithImpl<$Res, FarmTreeResponse>;
  @useResult
  $Res call(
      {String thingId,
      String farmId,
      int companyId,
      List<IrrigationBlock> irrigationBlocks,
      List<CropUnit> cropUnits});
}

/// @nodoc
class _$FarmTreeResponseCopyWithImpl<$Res, $Val extends FarmTreeResponse>
    implements $FarmTreeResponseCopyWith<$Res> {
  _$FarmTreeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thingId = null,
    Object? farmId = null,
    Object? companyId = null,
    Object? irrigationBlocks = null,
    Object? cropUnits = null,
  }) {
    return _then(_value.copyWith(
      thingId: null == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      irrigationBlocks: null == irrigationBlocks
          ? _value.irrigationBlocks
          : irrigationBlocks // ignore: cast_nullable_to_non_nullable
              as List<IrrigationBlock>,
      cropUnits: null == cropUnits
          ? _value.cropUnits
          : cropUnits // ignore: cast_nullable_to_non_nullable
              as List<CropUnit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FarmTreeResponseCopyWith<$Res>
    implements $FarmTreeResponseCopyWith<$Res> {
  factory _$$_FarmTreeResponseCopyWith(
          _$_FarmTreeResponse value, $Res Function(_$_FarmTreeResponse) then) =
      __$$_FarmTreeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String thingId,
      String farmId,
      int companyId,
      List<IrrigationBlock> irrigationBlocks,
      List<CropUnit> cropUnits});
}

/// @nodoc
class __$$_FarmTreeResponseCopyWithImpl<$Res>
    extends _$FarmTreeResponseCopyWithImpl<$Res, _$_FarmTreeResponse>
    implements _$$_FarmTreeResponseCopyWith<$Res> {
  __$$_FarmTreeResponseCopyWithImpl(
      _$_FarmTreeResponse _value, $Res Function(_$_FarmTreeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thingId = null,
    Object? farmId = null,
    Object? companyId = null,
    Object? irrigationBlocks = null,
    Object? cropUnits = null,
  }) {
    return _then(_$_FarmTreeResponse(
      thingId: null == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      irrigationBlocks: null == irrigationBlocks
          ? _value._irrigationBlocks
          : irrigationBlocks // ignore: cast_nullable_to_non_nullable
              as List<IrrigationBlock>,
      cropUnits: null == cropUnits
          ? _value._cropUnits
          : cropUnits // ignore: cast_nullable_to_non_nullable
              as List<CropUnit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FarmTreeResponse
    with DiagnosticableTreeMixin
    implements _FarmTreeResponse {
  const _$_FarmTreeResponse(
      {required this.thingId,
      required this.farmId,
      required this.companyId,
      required final List<IrrigationBlock> irrigationBlocks,
      required final List<CropUnit> cropUnits})
      : _irrigationBlocks = irrigationBlocks,
        _cropUnits = cropUnits;

  factory _$_FarmTreeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FarmTreeResponseFromJson(json);

  @override
  final String thingId;
  @override
  final String farmId;
  @override
  final int companyId;
  final List<IrrigationBlock> _irrigationBlocks;
  @override
  List<IrrigationBlock> get irrigationBlocks {
    if (_irrigationBlocks is EqualUnmodifiableListView)
      return _irrigationBlocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_irrigationBlocks);
  }

  final List<CropUnit> _cropUnits;
  @override
  List<CropUnit> get cropUnits {
    if (_cropUnits is EqualUnmodifiableListView) return _cropUnits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cropUnits);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmTreeResponse(thingId: $thingId, farmId: $farmId, companyId: $companyId, irrigationBlocks: $irrigationBlocks, cropUnits: $cropUnits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FarmTreeResponse'))
      ..add(DiagnosticsProperty('thingId', thingId))
      ..add(DiagnosticsProperty('farmId', farmId))
      ..add(DiagnosticsProperty('companyId', companyId))
      ..add(DiagnosticsProperty('irrigationBlocks', irrigationBlocks))
      ..add(DiagnosticsProperty('cropUnits', cropUnits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FarmTreeResponse &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            const DeepCollectionEquality()
                .equals(other._irrigationBlocks, _irrigationBlocks) &&
            const DeepCollectionEquality()
                .equals(other._cropUnits, _cropUnits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thingId,
      farmId,
      companyId,
      const DeepCollectionEquality().hash(_irrigationBlocks),
      const DeepCollectionEquality().hash(_cropUnits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FarmTreeResponseCopyWith<_$_FarmTreeResponse> get copyWith =>
      __$$_FarmTreeResponseCopyWithImpl<_$_FarmTreeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmTreeResponseToJson(
      this,
    );
  }
}

abstract class _FarmTreeResponse implements FarmTreeResponse {
  const factory _FarmTreeResponse(
      {required final String thingId,
      required final String farmId,
      required final int companyId,
      required final List<IrrigationBlock> irrigationBlocks,
      required final List<CropUnit> cropUnits}) = _$_FarmTreeResponse;

  factory _FarmTreeResponse.fromJson(Map<String, dynamic> json) =
      _$_FarmTreeResponse.fromJson;

  @override
  String get thingId;
  @override
  String get farmId;
  @override
  int get companyId;
  @override
  List<IrrigationBlock> get irrigationBlocks;
  @override
  List<CropUnit> get cropUnits;
  @override
  @JsonKey(ignore: true)
  _$$_FarmTreeResponseCopyWith<_$_FarmTreeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
