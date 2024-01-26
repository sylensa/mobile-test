// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Base _$BaseFromJson(Map<String, dynamic> json) {
  return _Base.fromJson(json);
}

/// @nodoc
mixin _$Base {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  UnitType? get unitType => throw _privateConstructorUsedError;
  SystemType? get systemType => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<Channel> get channels => throw _privateConstructorUsedError;
  List<IoGroup> get ioGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseCopyWith<Base> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseCopyWith<$Res> {
  factory $BaseCopyWith(Base value, $Res Function(Base) then) =
      _$BaseCopyWithImpl<$Res, Base>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String deviceName,
      String parentId,
      String farmId,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive,
      List<Channel> channels,
      List<IoGroup> ioGroups});

  $UnitTypeCopyWith<$Res>? get unitType;
  $SystemTypeCopyWith<$Res>? get systemType;
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$BaseCopyWithImpl<$Res, $Val extends Base>
    implements $BaseCopyWith<$Res> {
  _$BaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? deviceName = null,
    Object? parentId = null,
    Object? farmId = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
    Object? channels = null,
    Object? ioGroups = null,
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
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      ioGroups: null == ioGroups
          ? _value.ioGroups
          : ioGroups // ignore: cast_nullable_to_non_nullable
              as List<IoGroup>,
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
abstract class _$$_BaseCopyWith<$Res> implements $BaseCopyWith<$Res> {
  factory _$$_BaseCopyWith(_$_Base value, $Res Function(_$_Base) then) =
      __$$_BaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String deviceName,
      String parentId,
      String farmId,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive,
      List<Channel> channels,
      List<IoGroup> ioGroups});

  @override
  $UnitTypeCopyWith<$Res>? get unitType;
  @override
  $SystemTypeCopyWith<$Res>? get systemType;
  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$$_BaseCopyWithImpl<$Res> extends _$BaseCopyWithImpl<$Res, _$_Base>
    implements _$$_BaseCopyWith<$Res> {
  __$$_BaseCopyWithImpl(_$_Base _value, $Res Function(_$_Base) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? deviceName = null,
    Object? parentId = null,
    Object? farmId = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
    Object? channels = null,
    Object? ioGroups = null,
  }) {
    return _then(_$_Base(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
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
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      ioGroups: null == ioGroups
          ? _value._ioGroups
          : ioGroups // ignore: cast_nullable_to_non_nullable
              as List<IoGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Base implements _Base {
  const _$_Base(
      {required this.id,
      required this.deviceId,
      required this.deviceName,
      required this.parentId,
      required this.farmId,
      this.unitType,
      this.systemType,
      this.geolocation,
      this.isActive = true,
      final List<Channel> channels = const [],
      final List<IoGroup> ioGroups = const []})
      : _channels = channels,
        _ioGroups = ioGroups;

  factory _$_Base.fromJson(Map<String, dynamic> json) => _$$_BaseFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String deviceName;
  @override
  final String parentId;
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
  final List<Channel> _channels;
  @override
  @JsonKey()
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<IoGroup> _ioGroups;
  @override
  @JsonKey()
  List<IoGroup> get ioGroups {
    if (_ioGroups is EqualUnmodifiableListView) return _ioGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ioGroups);
  }

  @override
  String toString() {
    return 'Base(id: $id, deviceId: $deviceId, deviceName: $deviceName, parentId: $parentId, farmId: $farmId, unitType: $unitType, systemType: $systemType, geolocation: $geolocation, isActive: $isActive, channels: $channels, ioGroups: $ioGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Base &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._ioGroups, _ioGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      deviceName,
      parentId,
      farmId,
      unitType,
      systemType,
      geolocation,
      isActive,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_ioGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BaseCopyWith<_$_Base> get copyWith =>
      __$$_BaseCopyWithImpl<_$_Base>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseToJson(
      this,
    );
  }
}

abstract class _Base implements Base {
  const factory _Base(
      {required final String id,
      required final String deviceId,
      required final String deviceName,
      required final String parentId,
      required final String farmId,
      final UnitType? unitType,
      final SystemType? systemType,
      final Geolocation? geolocation,
      final bool isActive,
      final List<Channel> channels,
      final List<IoGroup> ioGroups}) = _$_Base;

  factory _Base.fromJson(Map<String, dynamic> json) = _$_Base.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String get deviceName;
  @override
  String get parentId;
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
  List<Channel> get channels;
  @override
  List<IoGroup> get ioGroups;
  @override
  @JsonKey(ignore: true)
  _$$_BaseCopyWith<_$_Base> get copyWith => throw _privateConstructorUsedError;
}
