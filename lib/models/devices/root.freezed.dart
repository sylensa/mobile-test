// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Root _$RootFromJson(Map<String, dynamic> json) {
  return _Root.fromJson(json);
}

/// @nodoc
mixin _$Root {
  String get id => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  UnitType? get unitType => throw _privateConstructorUsedError;
  SystemType? get systemType => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdDateUtc => throw _privateConstructorUsedError;
  List<Channel> get channels => throw _privateConstructorUsedError;
  List<IoGroup> get ioGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RootCopyWith<Root> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootCopyWith<$Res> {
  factory $RootCopyWith(Root value, $Res Function(Root) then) =
      _$RootCopyWithImpl<$Res, Root>;
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String? parentId,
      String farmId,
      String deviceName,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive,
      String createdDateUtc,
      List<Channel> channels,
      List<IoGroup> ioGroups});

  $UnitTypeCopyWith<$Res>? get unitType;
  $SystemTypeCopyWith<$Res>? get systemType;
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$RootCopyWithImpl<$Res, $Val extends Root>
    implements $RootCopyWith<$Res> {
  _$RootCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? parentId = freezed,
    Object? farmId = null,
    Object? deviceName = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
    Object? createdDateUtc = null,
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
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
      createdDateUtc: null == createdDateUtc
          ? _value.createdDateUtc
          : createdDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RootCopyWith<$Res> implements $RootCopyWith<$Res> {
  factory _$$_RootCopyWith(_$_Root value, $Res Function(_$_Root) then) =
      __$$_RootCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String deviceId,
      String? parentId,
      String farmId,
      String deviceName,
      UnitType? unitType,
      SystemType? systemType,
      Geolocation? geolocation,
      bool isActive,
      String createdDateUtc,
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
class __$$_RootCopyWithImpl<$Res> extends _$RootCopyWithImpl<$Res, _$_Root>
    implements _$$_RootCopyWith<$Res> {
  __$$_RootCopyWithImpl(_$_Root _value, $Res Function(_$_Root) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceId = null,
    Object? parentId = freezed,
    Object? farmId = null,
    Object? deviceName = null,
    Object? unitType = freezed,
    Object? systemType = freezed,
    Object? geolocation = freezed,
    Object? isActive = null,
    Object? createdDateUtc = null,
    Object? channels = null,
    Object? ioGroups = null,
  }) {
    return _then(_$_Root(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
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
      createdDateUtc: null == createdDateUtc
          ? _value.createdDateUtc
          : createdDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Root with DiagnosticableTreeMixin implements _Root {
  const _$_Root(
      {required this.id,
      required this.deviceId,
      this.parentId,
      required this.farmId,
      required this.deviceName,
      this.unitType,
      this.systemType,
      this.geolocation,
      required this.isActive,
      required this.createdDateUtc,
      final List<Channel> channels = const [],
      final List<IoGroup> ioGroups = const []})
      : _channels = channels,
        _ioGroups = ioGroups;

  factory _$_Root.fromJson(Map<String, dynamic> json) => _$$_RootFromJson(json);

  @override
  final String id;
  @override
  final String deviceId;
  @override
  final String? parentId;
  @override
  final String farmId;
  @override
  final String deviceName;
  @override
  final UnitType? unitType;
  @override
  final SystemType? systemType;
  @override
  final Geolocation? geolocation;
  @override
  final bool isActive;
  @override
  final String createdDateUtc;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Root(id: $id, deviceId: $deviceId, parentId: $parentId, farmId: $farmId, deviceName: $deviceName, unitType: $unitType, systemType: $systemType, geolocation: $geolocation, isActive: $isActive, createdDateUtc: $createdDateUtc, channels: $channels, ioGroups: $ioGroups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Root'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('parentId', parentId))
      ..add(DiagnosticsProperty('farmId', farmId))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty('unitType', unitType))
      ..add(DiagnosticsProperty('systemType', systemType))
      ..add(DiagnosticsProperty('geolocation', geolocation))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('createdDateUtc', createdDateUtc))
      ..add(DiagnosticsProperty('channels', channels))
      ..add(DiagnosticsProperty('ioGroups', ioGroups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Root &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.systemType, systemType) ||
                other.systemType == systemType) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdDateUtc, createdDateUtc) ||
                other.createdDateUtc == createdDateUtc) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._ioGroups, _ioGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      deviceId,
      parentId,
      farmId,
      deviceName,
      unitType,
      systemType,
      geolocation,
      isActive,
      createdDateUtc,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_ioGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootCopyWith<_$_Root> get copyWith =>
      __$$_RootCopyWithImpl<_$_Root>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RootToJson(
      this,
    );
  }
}

abstract class _Root implements Root {
  const factory _Root(
      {required final String id,
      required final String deviceId,
      final String? parentId,
      required final String farmId,
      required final String deviceName,
      final UnitType? unitType,
      final SystemType? systemType,
      final Geolocation? geolocation,
      required final bool isActive,
      required final String createdDateUtc,
      final List<Channel> channels,
      final List<IoGroup> ioGroups}) = _$_Root;

  factory _Root.fromJson(Map<String, dynamic> json) = _$_Root.fromJson;

  @override
  String get id;
  @override
  String get deviceId;
  @override
  String? get parentId;
  @override
  String get farmId;
  @override
  String get deviceName;
  @override
  UnitType? get unitType;
  @override
  SystemType? get systemType;
  @override
  Geolocation? get geolocation;
  @override
  bool get isActive;
  @override
  String get createdDateUtc;
  @override
  List<Channel> get channels;
  @override
  List<IoGroup> get ioGroups;
  @override
  @JsonKey(ignore: true)
  _$$_RootCopyWith<_$_Root> get copyWith => throw _privateConstructorUsedError;
}
