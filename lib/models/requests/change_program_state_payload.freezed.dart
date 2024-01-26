// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_program_state_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeProgramStatePayload _$ChangeProgramStatePayloadFromJson(
    Map<String, dynamic> json) {
  return _ChangeProgramStatePayload.fromJson(json);
}

/// @nodoc
mixin _$ChangeProgramStatePayload {
  String get programId => throw _privateConstructorUsedError;
  String get deviceUuid => throw _privateConstructorUsedError;
  String get cropUnitId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get state => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get skipShiftWithId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeProgramStatePayloadCopyWith<ChangeProgramStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeProgramStatePayloadCopyWith<$Res> {
  factory $ChangeProgramStatePayloadCopyWith(ChangeProgramStatePayload value,
          $Res Function(ChangeProgramStatePayload) then) =
      _$ChangeProgramStatePayloadCopyWithImpl<$Res, ChangeProgramStatePayload>;
  @useResult
  $Res call(
      {String programId,
      String deviceUuid,
      String cropUnitId,
      @JsonKey(includeIfNull: false) int? state,
      @JsonKey(includeIfNull: false) int? skipShiftWithId});
}

/// @nodoc
class _$ChangeProgramStatePayloadCopyWithImpl<$Res,
        $Val extends ChangeProgramStatePayload>
    implements $ChangeProgramStatePayloadCopyWith<$Res> {
  _$ChangeProgramStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? deviceUuid = null,
    Object? cropUnitId = null,
    Object? state = freezed,
    Object? skipShiftWithId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      skipShiftWithId: freezed == skipShiftWithId
          ? _value.skipShiftWithId
          : skipShiftWithId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeProgramStatePayloadCopyWith<$Res>
    implements $ChangeProgramStatePayloadCopyWith<$Res> {
  factory _$$_ChangeProgramStatePayloadCopyWith(
          _$_ChangeProgramStatePayload value,
          $Res Function(_$_ChangeProgramStatePayload) then) =
      __$$_ChangeProgramStatePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String programId,
      String deviceUuid,
      String cropUnitId,
      @JsonKey(includeIfNull: false) int? state,
      @JsonKey(includeIfNull: false) int? skipShiftWithId});
}

/// @nodoc
class __$$_ChangeProgramStatePayloadCopyWithImpl<$Res>
    extends _$ChangeProgramStatePayloadCopyWithImpl<$Res,
        _$_ChangeProgramStatePayload>
    implements _$$_ChangeProgramStatePayloadCopyWith<$Res> {
  __$$_ChangeProgramStatePayloadCopyWithImpl(
      _$_ChangeProgramStatePayload _value,
      $Res Function(_$_ChangeProgramStatePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? deviceUuid = null,
    Object? cropUnitId = null,
    Object? state = freezed,
    Object? skipShiftWithId = freezed,
  }) {
    return _then(_$_ChangeProgramStatePayload(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      skipShiftWithId: freezed == skipShiftWithId
          ? _value.skipShiftWithId
          : skipShiftWithId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangeProgramStatePayload implements _ChangeProgramStatePayload {
  const _$_ChangeProgramStatePayload(
      {required this.programId,
      required this.deviceUuid,
      required this.cropUnitId,
      @JsonKey(includeIfNull: false) this.state,
      @JsonKey(includeIfNull: false) this.skipShiftWithId});

  factory _$_ChangeProgramStatePayload.fromJson(Map<String, dynamic> json) =>
      _$$_ChangeProgramStatePayloadFromJson(json);

  @override
  final String programId;
  @override
  final String deviceUuid;
  @override
  final String cropUnitId;
  @override
  @JsonKey(includeIfNull: false)
  final int? state;
  @override
  @JsonKey(includeIfNull: false)
  final int? skipShiftWithId;

  @override
  String toString() {
    return 'ChangeProgramStatePayload(programId: $programId, deviceUuid: $deviceUuid, cropUnitId: $cropUnitId, state: $state, skipShiftWithId: $skipShiftWithId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeProgramStatePayload &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid) &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.skipShiftWithId, skipShiftWithId) ||
                other.skipShiftWithId == skipShiftWithId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, programId, deviceUuid, cropUnitId, state, skipShiftWithId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeProgramStatePayloadCopyWith<_$_ChangeProgramStatePayload>
      get copyWith => __$$_ChangeProgramStatePayloadCopyWithImpl<
          _$_ChangeProgramStatePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangeProgramStatePayloadToJson(
      this,
    );
  }
}

abstract class _ChangeProgramStatePayload implements ChangeProgramStatePayload {
  const factory _ChangeProgramStatePayload(
          {required final String programId,
          required final String deviceUuid,
          required final String cropUnitId,
          @JsonKey(includeIfNull: false) final int? state,
          @JsonKey(includeIfNull: false) final int? skipShiftWithId}) =
      _$_ChangeProgramStatePayload;

  factory _ChangeProgramStatePayload.fromJson(Map<String, dynamic> json) =
      _$_ChangeProgramStatePayload.fromJson;

  @override
  String get programId;
  @override
  String get deviceUuid;
  @override
  String get cropUnitId;
  @override
  @JsonKey(includeIfNull: false)
  int? get state;
  @override
  @JsonKey(includeIfNull: false)
  int? get skipShiftWithId;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeProgramStatePayloadCopyWith<_$_ChangeProgramStatePayload>
      get copyWith => throw _privateConstructorUsedError;
}
