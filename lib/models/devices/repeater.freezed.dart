// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repeater.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repeater _$RepeaterFromJson(Map<String, dynamic> json) {
  return _Repeater.fromJson(json);
}

/// @nodoc
mixin _$Repeater {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  UnitType? get unitType => throw _privateConstructorUsedError;
  SystemType? get systemType => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepeaterCopyWith<Repeater> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeaterCopyWith<$Res> {
  factory $RepeaterCopyWith(Repeater value, $Res Function(Repeater) then) =
      _$RepeaterCopyWithImpl<$Res, Repeater>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String parentId,
      String deviceName,
      String farmId,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive});

  $UnitTypeCopyWith<$Res>? get unitType;
  $SystemTypeCopyWith<$Res>? get systemType;
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$RepeaterCopyWithImpl<$Res, $Val extends Repeater>
    implements $RepeaterCopyWith<$Res> {
  _$RepeaterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? parentId = null,
    Object? deviceName = null,
    Object? farmId = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as SystemType?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitTypeCopyWith<$Res>? get unitType {
    if (_value.unitType == null) {
      return null;
    }

    return $UnitTypeCopyWith<$Res>(_value.unitType!, (value) {
      return _then(_value.copyWith(unitType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SystemTypeCopyWith<$Res>? get systemType {
    if (_value.systemType == null) {
      return null;
    }

    return $SystemTypeCopyWith<$Res>(_value.systemType!, (value) {
      return _then(_value.copyWith(systemType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeolocationCopyWith<$Res>? get geolocation {
    if (_value.geolocation == null) {
      return null;
    }

    return $GeolocationCopyWith<$Res>(_value.geolocation!, (value) {
      return _then(_value.copyWith(geolocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RepeaterCopyWith<$Res> implements $RepeaterCopyWith<$Res> {
  factory _$$_RepeaterCopyWith(
          _$_Repeater value, $Res Function(_$_Repeater) then) =
      __$$_RepeaterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String parentId,
      String deviceName,
      String farmId,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive});

  @override
  $UnitTypeCopyWith<$Res>? get unitType;
  @override
  $SystemTypeCopyWith<$Res>? get systemType;
  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$$_RepeaterCopyWithImpl<$Res>
    extends _$RepeaterCopyWithImpl<$Res, _$_Repeater>
    implements _$$_RepeaterCopyWith<$Res> {
  __$$_RepeaterCopyWithImpl(
      _$_Repeater _value, $Res Function(_$_Repeater) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? parentId = null,
    Object? deviceName = null,
    Object? farmId = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
  }) {
    return _then(_$_Repeater(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      systemType: freezed == systemType
          ? _value.systemType
          : systemType // ignore: cast_nullable_to_non_nullable
              as SystemType?,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repeater implements _Repeater {
  const _$_Repeater(
      {required this.id,
      required this.deviceId,
      required this.parentId,
      required this.deviceName,
      required this.farmId,
      this.unitType,
      this.systemType,
      this.geolocation,
      this.isActive = true});

  factory _$_Repeater.fromJson(Map<String, dynamic> json) =>
      _$$_RepeaterFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String parentId;
  @override
  final String deviceName;
  @override
  final String farmId;
  @override
  final UnitType? unitType;
  @override
  final SystemType? systemType;
  @override
  final Geolocation? geolocation;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'Repeater(id: $id, deviceId: $deviceId, parentId: $parentId, deviceName: $deviceName, farmId: $farmId, unitType: $unitType, systemType: $systemType, geolocation: $geolocation, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repeater &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceId, parentId,
      deviceName, farmId, unitType, systemType, geolocation, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepeaterCopyWith<_$_Repeater> get copyWith =>
      __$$_RepeaterCopyWithImpl<_$_Repeater>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepeaterToJson(
      this,
    );
  }
}

abstract class _Repeater implements Repeater {
  const factory _Repeater(
      {required final String id,
      required final String deviceId,
      required final String parentId,
      required final String deviceName,
      required final String farmId,
      final UnitType? unitType,
      final SystemType? systemType,
      final Geolocation? geolocation,
      final bool isActive}) = _$_Repeater;

  factory _Repeater.fromJson(Map<String, dynamic> json) = _$_Repeater.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get parentId;
  @override
  String get deviceName;
  @override
  String get farmId;
  @override
  UnitType? get unitType;
  @override
  SystemType? get systemType;
  @override
  Geolocation? get geolocation;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_RepeaterCopyWith<_$_Repeater> get copyWith =>
      throw _privateConstructorUsedError;
}
