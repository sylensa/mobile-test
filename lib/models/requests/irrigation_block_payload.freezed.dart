// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'irrigation_block_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrrigationBlockPayload _$IrrigationBlockPayloadFromJson(
    Map<String, dynamic> json) {
  return _IrrigationBlockPayload.fromJson(json);
}

/// @nodoc
mixin _$IrrigationBlockPayload {
  String get irrigationBlockName => throw _privateConstructorUsedError;
  String get cropUnitId => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  double get irrigationBlockArea => throw _privateConstructorUsedError;
  int? get soilTypeId => throw _privateConstructorUsedError;
  String get flowRate => throw _privateConstructorUsedError;
  double get manualIrrigationRate => throw _privateConstructorUsedError;
  int? get cropId => throw _privateConstructorUsedError;
  int? get varietyId => throw _privateConstructorUsedError;
  int? get irrigationMethodId => throw _privateConstructorUsedError;
  IrrigationBlockData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrrigationBlockPayloadCopyWith<IrrigationBlockPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrrigationBlockPayloadCopyWith<$Res> {
  factory $IrrigationBlockPayloadCopyWith(IrrigationBlockPayload value,
          $Res Function(IrrigationBlockPayload) then) =
      _$IrrigationBlockPayloadCopyWithImpl<$Res, IrrigationBlockPayload>;
  @useResult
  $Res call(
      {String irrigationBlockName,
      String cropUnitId,
      String farmId,
      double irrigationBlockArea,
      int? soilTypeId,
      String flowRate,
      double manualIrrigationRate,
      int? cropId,
      int? varietyId,
      int? irrigationMethodId,
      IrrigationBlockData? data});

  $IrrigationBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$IrrigationBlockPayloadCopyWithImpl<$Res,
        $Val extends IrrigationBlockPayload>
    implements $IrrigationBlockPayloadCopyWith<$Res> {
  _$IrrigationBlockPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? irrigationBlockName = null,
    Object? cropUnitId = null,
    Object? farmId = null,
    Object? irrigationBlockArea = null,
    Object? soilTypeId = freezed,
    Object? flowRate = null,
    Object? manualIrrigationRate = null,
    Object? cropId = freezed,
    Object? varietyId = freezed,
    Object? irrigationMethodId = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      irrigationBlockName: null == irrigationBlockName
          ? _value.irrigationBlockName
          : irrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      irrigationBlockArea: null == irrigationBlockArea
          ? _value.irrigationBlockArea
          : irrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as double,
      soilTypeId: freezed == soilTypeId
          ? _value.soilTypeId
          : soilTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowRate: null == flowRate
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as String,
      manualIrrigationRate: null == manualIrrigationRate
          ? _value.manualIrrigationRate
          : manualIrrigationRate // ignore: cast_nullable_to_non_nullable
              as double,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IrrigationBlockData?,
    ) as $Val);
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
abstract class _$$_IrrigationBlockPayloadCopyWith<$Res>
    implements $IrrigationBlockPayloadCopyWith<$Res> {
  factory _$$_IrrigationBlockPayloadCopyWith(_$_IrrigationBlockPayload value,
          $Res Function(_$_IrrigationBlockPayload) then) =
      __$$_IrrigationBlockPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String irrigationBlockName,
      String cropUnitId,
      String farmId,
      double irrigationBlockArea,
      int? soilTypeId,
      String flowRate,
      double manualIrrigationRate,
      int? cropId,
      int? varietyId,
      int? irrigationMethodId,
      IrrigationBlockData? data});

  @override
  $IrrigationBlockDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_IrrigationBlockPayloadCopyWithImpl<$Res>
    extends _$IrrigationBlockPayloadCopyWithImpl<$Res,
        _$_IrrigationBlockPayload>
    implements _$$_IrrigationBlockPayloadCopyWith<$Res> {
  __$$_IrrigationBlockPayloadCopyWithImpl(_$_IrrigationBlockPayload _value,
      $Res Function(_$_IrrigationBlockPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? irrigationBlockName = null,
    Object? cropUnitId = null,
    Object? farmId = null,
    Object? irrigationBlockArea = null,
    Object? soilTypeId = freezed,
    Object? flowRate = null,
    Object? manualIrrigationRate = null,
    Object? cropId = freezed,
    Object? varietyId = freezed,
    Object? irrigationMethodId = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_IrrigationBlockPayload(
      irrigationBlockName: null == irrigationBlockName
          ? _value.irrigationBlockName
          : irrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      irrigationBlockArea: null == irrigationBlockArea
          ? _value.irrigationBlockArea
          : irrigationBlockArea // ignore: cast_nullable_to_non_nullable
              as double,
      soilTypeId: freezed == soilTypeId
          ? _value.soilTypeId
          : soilTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      flowRate: null == flowRate
          ? _value.flowRate
          : flowRate // ignore: cast_nullable_to_non_nullable
              as String,
      manualIrrigationRate: null == manualIrrigationRate
          ? _value.manualIrrigationRate
          : manualIrrigationRate // ignore: cast_nullable_to_non_nullable
              as double,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IrrigationBlockData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrrigationBlockPayload implements _IrrigationBlockPayload {
  const _$_IrrigationBlockPayload(
      {required this.irrigationBlockName,
      required this.cropUnitId,
      required this.farmId,
      required this.irrigationBlockArea,
      this.soilTypeId,
      required this.flowRate,
      required this.manualIrrigationRate,
      this.cropId,
      this.varietyId,
      this.irrigationMethodId,
      this.data});

  factory _$_IrrigationBlockPayload.fromJson(Map<String, dynamic> json) =>
      _$$_IrrigationBlockPayloadFromJson(json);

  @override
  final String irrigationBlockName;
  @override
  final String cropUnitId;
  @override
  final String farmId;
  @override
  final double irrigationBlockArea;
  @override
  final int? soilTypeId;
  @override
  final String flowRate;
  @override
  final double manualIrrigationRate;
  @override
  final int? cropId;
  @override
  final int? varietyId;
  @override
  final int? irrigationMethodId;
  @override
  final IrrigationBlockData? data;

  @override
  String toString() {
    return 'IrrigationBlockPayload(irrigationBlockName: $irrigationBlockName, cropUnitId: $cropUnitId, farmId: $farmId, irrigationBlockArea: $irrigationBlockArea, soilTypeId: $soilTypeId, flowRate: $flowRate, manualIrrigationRate: $manualIrrigationRate, cropId: $cropId, varietyId: $varietyId, irrigationMethodId: $irrigationMethodId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrrigationBlockPayload &&
            (identical(other.irrigationBlockName, irrigationBlockName) ||
                other.irrigationBlockName == irrigationBlockName) &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.irrigationBlockArea, irrigationBlockArea) ||
                other.irrigationBlockArea == irrigationBlockArea) &&
            (identical(other.soilTypeId, soilTypeId) ||
                other.soilTypeId == soilTypeId) &&
            (identical(other.flowRate, flowRate) ||
                other.flowRate == flowRate) &&
            (identical(other.manualIrrigationRate, manualIrrigationRate) ||
                other.manualIrrigationRate == manualIrrigationRate) &&
            (identical(other.cropId, cropId) || other.cropId == cropId) &&
            (identical(other.varietyId, varietyId) ||
                other.varietyId == varietyId) &&
            (identical(other.irrigationMethodId, irrigationMethodId) ||
                other.irrigationMethodId == irrigationMethodId) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      irrigationBlockName,
      cropUnitId,
      farmId,
      irrigationBlockArea,
      soilTypeId,
      flowRate,
      manualIrrigationRate,
      cropId,
      varietyId,
      irrigationMethodId,
      data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrrigationBlockPayloadCopyWith<_$_IrrigationBlockPayload> get copyWith =>
      __$$_IrrigationBlockPayloadCopyWithImpl<_$_IrrigationBlockPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrrigationBlockPayloadToJson(
      this,
    );
  }
}

abstract class _IrrigationBlockPayload implements IrrigationBlockPayload {
  const factory _IrrigationBlockPayload(
      {required final String irrigationBlockName,
      required final String cropUnitId,
      required final String farmId,
      required final double irrigationBlockArea,
      final int? soilTypeId,
      required final String flowRate,
      required final double manualIrrigationRate,
      final int? cropId,
      final int? varietyId,
      final int? irrigationMethodId,
      final IrrigationBlockData? data}) = _$_IrrigationBlockPayload;

  factory _IrrigationBlockPayload.fromJson(Map<String, dynamic> json) =
      _$_IrrigationBlockPayload.fromJson;

  @override
  String get irrigationBlockName;
  @override
  String get cropUnitId;
  @override
  String get farmId;
  @override
  double get irrigationBlockArea;
  @override
  int? get soilTypeId;
  @override
  String get flowRate;
  @override
  double get manualIrrigationRate;
  @override
  int? get cropId;
  @override
  int? get varietyId;
  @override
  int? get irrigationMethodId;
  @override
  IrrigationBlockData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_IrrigationBlockPayloadCopyWith<_$_IrrigationBlockPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
