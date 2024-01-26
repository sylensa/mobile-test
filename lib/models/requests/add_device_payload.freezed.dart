// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddDevicePayload _$AddDevicePayloadFromJson(Map<String, dynamic> json) {
  return _AddDevicePayload.fromJson(json);
}

/// @nodoc
mixin _$AddDevicePayload {
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  int get enterpriseId => throw _privateConstructorUsedError;
  String get unitSystem => throw _privateConstructorUsedError;
  String? get windowsTimeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDevicePayloadCopyWith<AddDevicePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDevicePayloadCopyWith<$Res> {
  factory $AddDevicePayloadCopyWith(
          AddDevicePayload value, $Res Function(AddDevicePayload) then) =
      _$AddDevicePayloadCopyWithImpl<$Res, AddDevicePayload>;
  @useResult
  $Res call(
      {String deviceId,
      @JsonKey(includeIfNull: false) String? password,
      String farmId,
      int enterpriseId,
      String unitSystem,
      String? windowsTimeZone});
}

/// @nodoc
class _$AddDevicePayloadCopyWithImpl<$Res, $Val extends AddDevicePayload>
    implements $AddDevicePayloadCopyWith<$Res> {
  _$AddDevicePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? password = freezed,
    Object? farmId = null,
    Object? enterpriseId = null,
    Object? unitSystem = null,
    Object? windowsTimeZone = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      enterpriseId: null == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int,
      unitSystem: null == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as String,
      windowsTimeZone: freezed == windowsTimeZone
          ? _value.windowsTimeZone
          : windowsTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddDevicePayloadCopyWith<$Res>
    implements $AddDevicePayloadCopyWith<$Res> {
  factory _$$_AddDevicePayloadCopyWith(
          _$_AddDevicePayload value, $Res Function(_$_AddDevicePayload) then) =
      __$$_AddDevicePayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      @JsonKey(includeIfNull: false) String? password,
      String farmId,
      int enterpriseId,
      String unitSystem,
      String? windowsTimeZone});
}

/// @nodoc
class __$$_AddDevicePayloadCopyWithImpl<$Res>
    extends _$AddDevicePayloadCopyWithImpl<$Res, _$_AddDevicePayload>
    implements _$$_AddDevicePayloadCopyWith<$Res> {
  __$$_AddDevicePayloadCopyWithImpl(
      _$_AddDevicePayload _value, $Res Function(_$_AddDevicePayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? password = freezed,
    Object? farmId = null,
    Object? enterpriseId = null,
    Object? unitSystem = null,
    Object? windowsTimeZone = freezed,
  }) {
    return _then(_$_AddDevicePayload(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      enterpriseId: null == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int,
      unitSystem: null == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as String,
      windowsTimeZone: freezed == windowsTimeZone
          ? _value.windowsTimeZone
          : windowsTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddDevicePayload implements _AddDevicePayload {
  const _$_AddDevicePayload(
      {required this.deviceId,
      @JsonKey(includeIfNull: false) this.password,
      required this.farmId,
      required this.enterpriseId,
      required this.unitSystem,
      this.windowsTimeZone});

  factory _$_AddDevicePayload.fromJson(Map<String, dynamic> json) =>
      _$$_AddDevicePayloadFromJson(json);

  @override
  final String deviceId;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  final String farmId;
  @override
  final int enterpriseId;
  @override
  final String unitSystem;
  @override
  final String? windowsTimeZone;

  @override
  String toString() {
    return 'AddDevicePayload(deviceId: $deviceId, password: $password, farmId: $farmId, enterpriseId: $enterpriseId, unitSystem: $unitSystem, windowsTimeZone: $windowsTimeZone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDevicePayload &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.enterpriseId, enterpriseId) ||
                other.enterpriseId == enterpriseId) &&
            (identical(other.unitSystem, unitSystem) ||
                other.unitSystem == unitSystem) &&
            (identical(other.windowsTimeZone, windowsTimeZone) ||
                other.windowsTimeZone == windowsTimeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, password, farmId,
      enterpriseId, unitSystem, windowsTimeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDevicePayloadCopyWith<_$_AddDevicePayload> get copyWith =>
      __$$_AddDevicePayloadCopyWithImpl<_$_AddDevicePayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddDevicePayloadToJson(
      this,
    );
  }
}

abstract class _AddDevicePayload implements AddDevicePayload {
  const factory _AddDevicePayload(
      {required final String deviceId,
      @JsonKey(includeIfNull: false) final String? password,
      required final String farmId,
      required final int enterpriseId,
      required final String unitSystem,
      final String? windowsTimeZone}) = _$_AddDevicePayload;

  factory _AddDevicePayload.fromJson(Map<String, dynamic> json) =
      _$_AddDevicePayload.fromJson;

  @override
  String get deviceId;
  @override
  @JsonKey(includeIfNull: false)
  String? get password;
  @override
  String get farmId;
  @override
  int get enterpriseId;
  @override
  String get unitSystem;
  @override
  String? get windowsTimeZone;
  @override
  @JsonKey(ignore: true)
  _$$_AddDevicePayloadCopyWith<_$_AddDevicePayload> get copyWith =>
      throw _privateConstructorUsedError;
}
