// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculated_data_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculatedDataPayload _$CalculatedDataPayloadFromJson(
    Map<String, dynamic> json) {
  return _CalculatedDataPayload.fromJson(json);
}

/// @nodoc
mixin _$CalculatedDataPayload {
  String get fromDate => throw _privateConstructorUsedError;
  String get toDate => throw _privateConstructorUsedError;
  String get ioId => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatedDataPayloadCopyWith<CalculatedDataPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatedDataPayloadCopyWith<$Res> {
  factory $CalculatedDataPayloadCopyWith(CalculatedDataPayload value,
          $Res Function(CalculatedDataPayload) then) =
      _$CalculatedDataPayloadCopyWithImpl<$Res, CalculatedDataPayload>;
  @useResult
  $Res call({String fromDate, String toDate, String ioId, String farmId});
}

/// @nodoc
class _$CalculatedDataPayloadCopyWithImpl<$Res,
        $Val extends CalculatedDataPayload>
    implements $CalculatedDataPayloadCopyWith<$Res> {
  _$CalculatedDataPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? ioId = null,
    Object? farmId = null,
  }) {
    return _then(_value.copyWith(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatedDataPayloadCopyWith<$Res>
    implements $CalculatedDataPayloadCopyWith<$Res> {
  factory _$$_CalculatedDataPayloadCopyWith(_$_CalculatedDataPayload value,
          $Res Function(_$_CalculatedDataPayload) then) =
      __$$_CalculatedDataPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fromDate, String toDate, String ioId, String farmId});
}

/// @nodoc
class __$$_CalculatedDataPayloadCopyWithImpl<$Res>
    extends _$CalculatedDataPayloadCopyWithImpl<$Res, _$_CalculatedDataPayload>
    implements _$$_CalculatedDataPayloadCopyWith<$Res> {
  __$$_CalculatedDataPayloadCopyWithImpl(_$_CalculatedDataPayload _value,
      $Res Function(_$_CalculatedDataPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? ioId = null,
    Object? farmId = null,
  }) {
    return _then(_$_CalculatedDataPayload(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculatedDataPayload implements _CalculatedDataPayload {
  const _$_CalculatedDataPayload(
      {required this.fromDate,
      required this.toDate,
      required this.ioId,
      required this.farmId});

  factory _$_CalculatedDataPayload.fromJson(Map<String, dynamic> json) =>
      _$$_CalculatedDataPayloadFromJson(json);

  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String ioId;
  @override
  final String farmId;

  @override
  String toString() {
    return 'CalculatedDataPayload(fromDate: $fromDate, toDate: $toDate, ioId: $ioId, farmId: $farmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatedDataPayload &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.ioId, ioId) || other.ioId == ioId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate, ioId, farmId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedDataPayloadCopyWith<_$_CalculatedDataPayload> get copyWith =>
      __$$_CalculatedDataPayloadCopyWithImpl<_$_CalculatedDataPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculatedDataPayloadToJson(
      this,
    );
  }
}

abstract class _CalculatedDataPayload implements CalculatedDataPayload {
  const factory _CalculatedDataPayload(
      {required final String fromDate,
      required final String toDate,
      required final String ioId,
      required final String farmId}) = _$_CalculatedDataPayload;

  factory _CalculatedDataPayload.fromJson(Map<String, dynamic> json) =
      _$_CalculatedDataPayload.fromJson;

  @override
  String get fromDate;
  @override
  String get toDate;
  @override
  String get ioId;
  @override
  String get farmId;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatedDataPayloadCopyWith<_$_CalculatedDataPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
