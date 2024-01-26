// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceDetailsState {
  String get deviceId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  String? get selectedIrrigationBlockName => throw _privateConstructorUsedError;
  String? get selectedIrrigationBlockId => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool get canBeAssignedToIrrigationBlock => throw _privateConstructorUsedError;
  String get depthUom => throw _privateConstructorUsedError;
  List<ViewableDevice>? get children => throw _privateConstructorUsedError;
  Map<String, List<ViewableSensor>>? get sensors =>
      throw _privateConstructorUsedError;
  num? get offset => throw _privateConstructorUsedError;
  num? get multiplier => throw _privateConstructorUsedError;
  List<Threshold> get thresholds => throw _privateConstructorUsedError;
  bool get fetchingDevice => throw _privateConstructorUsedError;
  String? get fetchDeviceError => throw _privateConstructorUsedError;
  bool get updatingDevice => throw _privateConstructorUsedError;
  String? get updateDeviceError => throw _privateConstructorUsedError;
  num get pulseVolume => throw _privateConstructorUsedError;
  num get coverageArea => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDetailsStateCopyWith<DeviceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDetailsStateCopyWith<$Res> {
  factory $DeviceDetailsStateCopyWith(
          DeviceDetailsState value, $Res Function(DeviceDetailsState) then) =
      _$DeviceDetailsStateCopyWithImpl<$Res, DeviceDetailsState>;
  @useResult
  $Res call(
      {String deviceId,
      String deviceName,
      String? selectedIrrigationBlockName,
      String? selectedIrrigationBlockId,
      int? depth,
      String? type,
      bool canBeAssignedToIrrigationBlock,
      String depthUom,
      List<ViewableDevice>? children,
      Map<String, List<ViewableSensor>>? sensors,
      num? offset,
      num? multiplier,
      List<Threshold> thresholds,
      bool fetchingDevice,
      String? fetchDeviceError,
      bool updatingDevice,
      String? updateDeviceError,
      num pulseVolume,
      num coverageArea,
      Geolocation? geolocation});

  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$DeviceDetailsStateCopyWithImpl<$Res, $Val extends DeviceDetailsState>
    implements $DeviceDetailsStateCopyWith<$Res> {
  _$DeviceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? selectedIrrigationBlockName = freezed,
    Object? selectedIrrigationBlockId = freezed,
    Object? depth = freezed,
    Object? type = freezed,
    Object? canBeAssignedToIrrigationBlock = null,
    Object? depthUom = null,
    Object? children = freezed,
    Object? sensors = freezed,
    Object? offset = freezed,
    Object? multiplier = freezed,
    Object? thresholds = null,
    Object? fetchingDevice = null,
    Object? fetchDeviceError = freezed,
    Object? updatingDevice = null,
    Object? updateDeviceError = freezed,
    Object? pulseVolume = null,
    Object? coverageArea = null,
    Object? geolocation = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIrrigationBlockName: freezed == selectedIrrigationBlockName
          ? _value.selectedIrrigationBlockName
          : selectedIrrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedIrrigationBlockId: freezed == selectedIrrigationBlockId
          ? _value.selectedIrrigationBlockId
          : selectedIrrigationBlockId // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeAssignedToIrrigationBlock: null == canBeAssignedToIrrigationBlock
          ? _value.canBeAssignedToIrrigationBlock
          : canBeAssignedToIrrigationBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      depthUom: null == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ViewableDevice>?,
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewableSensor>>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num?,
      thresholds: null == thresholds
          ? _value.thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as List<Threshold>,
      fetchingDevice: null == fetchingDevice
          ? _value.fetchingDevice
          : fetchingDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchDeviceError: freezed == fetchDeviceError
          ? _value.fetchDeviceError
          : fetchDeviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      updatingDevice: null == updatingDevice
          ? _value.updatingDevice
          : updatingDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      updateDeviceError: freezed == updateDeviceError
          ? _value.updateDeviceError
          : updateDeviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      pulseVolume: null == pulseVolume
          ? _value.pulseVolume
          : pulseVolume // ignore: cast_nullable_to_non_nullable
              as num,
      coverageArea: null == coverageArea
          ? _value.coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as num,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
    ) as $Val);
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
abstract class _$$_DeviceDetailsStateCopyWith<$Res>
    implements $DeviceDetailsStateCopyWith<$Res> {
  factory _$$_DeviceDetailsStateCopyWith(_$_DeviceDetailsState value,
          $Res Function(_$_DeviceDetailsState) then) =
      __$$_DeviceDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deviceId,
      String deviceName,
      String? selectedIrrigationBlockName,
      String? selectedIrrigationBlockId,
      int? depth,
      String? type,
      bool canBeAssignedToIrrigationBlock,
      String depthUom,
      List<ViewableDevice>? children,
      Map<String, List<ViewableSensor>>? sensors,
      num? offset,
      num? multiplier,
      List<Threshold> thresholds,
      bool fetchingDevice,
      String? fetchDeviceError,
      bool updatingDevice,
      String? updateDeviceError,
      num pulseVolume,
      num coverageArea,
      Geolocation? geolocation});

  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$$_DeviceDetailsStateCopyWithImpl<$Res>
    extends _$DeviceDetailsStateCopyWithImpl<$Res, _$_DeviceDetailsState>
    implements _$$_DeviceDetailsStateCopyWith<$Res> {
  __$$_DeviceDetailsStateCopyWithImpl(
      _$_DeviceDetailsState _value, $Res Function(_$_DeviceDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceName = null,
    Object? selectedIrrigationBlockName = freezed,
    Object? selectedIrrigationBlockId = freezed,
    Object? depth = freezed,
    Object? type = freezed,
    Object? canBeAssignedToIrrigationBlock = null,
    Object? depthUom = null,
    Object? children = freezed,
    Object? sensors = freezed,
    Object? offset = freezed,
    Object? multiplier = freezed,
    Object? thresholds = null,
    Object? fetchingDevice = null,
    Object? fetchDeviceError = freezed,
    Object? updatingDevice = null,
    Object? updateDeviceError = freezed,
    Object? pulseVolume = null,
    Object? coverageArea = null,
    Object? geolocation = freezed,
  }) {
    return _then(_$_DeviceDetailsState(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: null == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIrrigationBlockName: freezed == selectedIrrigationBlockName
          ? _value.selectedIrrigationBlockName
          : selectedIrrigationBlockName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedIrrigationBlockId: freezed == selectedIrrigationBlockId
          ? _value.selectedIrrigationBlockId
          : selectedIrrigationBlockId // ignore: cast_nullable_to_non_nullable
              as String?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      canBeAssignedToIrrigationBlock: null == canBeAssignedToIrrigationBlock
          ? _value.canBeAssignedToIrrigationBlock
          : canBeAssignedToIrrigationBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      depthUom: null == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ViewableDevice>?,
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewableSensor>>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num?,
      thresholds: null == thresholds
          ? _value._thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as List<Threshold>,
      fetchingDevice: null == fetchingDevice
          ? _value.fetchingDevice
          : fetchingDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchDeviceError: freezed == fetchDeviceError
          ? _value.fetchDeviceError
          : fetchDeviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      updatingDevice: null == updatingDevice
          ? _value.updatingDevice
          : updatingDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      updateDeviceError: freezed == updateDeviceError
          ? _value.updateDeviceError
          : updateDeviceError // ignore: cast_nullable_to_non_nullable
              as String?,
      pulseVolume: null == pulseVolume
          ? _value.pulseVolume
          : pulseVolume // ignore: cast_nullable_to_non_nullable
              as num,
      coverageArea: null == coverageArea
          ? _value.coverageArea
          : coverageArea // ignore: cast_nullable_to_non_nullable
              as num,
      geolocation: freezed == geolocation
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
    ));
  }
}

/// @nodoc

class _$_DeviceDetailsState
    with DiagnosticableTreeMixin
    implements _DeviceDetailsState {
  const _$_DeviceDetailsState(
      {required this.deviceId,
      this.deviceName = '',
      this.selectedIrrigationBlockName = 'Unassigned',
      this.selectedIrrigationBlockId,
      this.depth,
      this.type,
      this.canBeAssignedToIrrigationBlock = false,
      this.depthUom = '',
      final List<ViewableDevice>? children,
      final Map<String, List<ViewableSensor>>? sensors,
      this.offset = 0,
      this.multiplier = 1,
      final List<Threshold> thresholds = const [],
      this.fetchingDevice = false,
      this.fetchDeviceError = null,
      this.updatingDevice = false,
      this.updateDeviceError = null,
      this.pulseVolume = 0,
      this.coverageArea = 0,
      this.geolocation})
      : _children = children,
        _sensors = sensors,
        _thresholds = thresholds;

  @override
  final String deviceId;
  @override
  @JsonKey()
  final String deviceName;
  @override
  @JsonKey()
  final String? selectedIrrigationBlockName;
  @override
  final String? selectedIrrigationBlockId;
  @override
  final int? depth;
  @override
  final String? type;
  @override
  @JsonKey()
  final bool canBeAssignedToIrrigationBlock;
  @override
  @JsonKey()
  final String depthUom;
  final List<ViewableDevice>? _children;
  @override
  List<ViewableDevice>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<ViewableSensor>>? _sensors;
  @override
  Map<String, List<ViewableSensor>>? get sensors {
    final value = _sensors;
    if (value == null) return null;
    if (_sensors is EqualUnmodifiableMapView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final num? offset;
  @override
  @JsonKey()
  final num? multiplier;
  final List<Threshold> _thresholds;
  @override
  @JsonKey()
  List<Threshold> get thresholds {
    if (_thresholds is EqualUnmodifiableListView) return _thresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thresholds);
  }

  @override
  @JsonKey()
  final bool fetchingDevice;
  @override
  @JsonKey()
  final String? fetchDeviceError;
  @override
  @JsonKey()
  final bool updatingDevice;
  @override
  @JsonKey()
  final String? updateDeviceError;
  @override
  @JsonKey()
  final num pulseVolume;
  @override
  @JsonKey()
  final num coverageArea;
  @override
  final Geolocation? geolocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeviceDetailsState(deviceId: $deviceId, deviceName: $deviceName, selectedIrrigationBlockName: $selectedIrrigationBlockName, selectedIrrigationBlockId: $selectedIrrigationBlockId, depth: $depth, type: $type, canBeAssignedToIrrigationBlock: $canBeAssignedToIrrigationBlock, depthUom: $depthUom, children: $children, sensors: $sensors, offset: $offset, multiplier: $multiplier, thresholds: $thresholds, fetchingDevice: $fetchingDevice, fetchDeviceError: $fetchDeviceError, updatingDevice: $updatingDevice, updateDeviceError: $updateDeviceError, pulseVolume: $pulseVolume, coverageArea: $coverageArea, geolocation: $geolocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceDetailsState'))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('deviceName', deviceName))
      ..add(DiagnosticsProperty(
          'selectedIrrigationBlockName', selectedIrrigationBlockName))
      ..add(DiagnosticsProperty(
          'selectedIrrigationBlockId', selectedIrrigationBlockId))
      ..add(DiagnosticsProperty('depth', depth))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty(
          'canBeAssignedToIrrigationBlock', canBeAssignedToIrrigationBlock))
      ..add(DiagnosticsProperty('depthUom', depthUom))
      ..add(DiagnosticsProperty('children', children))
      ..add(DiagnosticsProperty('sensors', sensors))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('multiplier', multiplier))
      ..add(DiagnosticsProperty('thresholds', thresholds))
      ..add(DiagnosticsProperty('fetchingDevice', fetchingDevice))
      ..add(DiagnosticsProperty('fetchDeviceError', fetchDeviceError))
      ..add(DiagnosticsProperty('updatingDevice', updatingDevice))
      ..add(DiagnosticsProperty('updateDeviceError', updateDeviceError))
      ..add(DiagnosticsProperty('pulseVolume', pulseVolume))
      ..add(DiagnosticsProperty('coverageArea', coverageArea))
      ..add(DiagnosticsProperty('geolocation', geolocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceDetailsState &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.selectedIrrigationBlockName,
                    selectedIrrigationBlockName) ||
                other.selectedIrrigationBlockName ==
                    selectedIrrigationBlockName) &&
            (identical(other.selectedIrrigationBlockId,
                    selectedIrrigationBlockId) ||
                other.selectedIrrigationBlockId == selectedIrrigationBlockId) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.canBeAssignedToIrrigationBlock,
                    canBeAssignedToIrrigationBlock) ||
                other.canBeAssignedToIrrigationBlock ==
                    canBeAssignedToIrrigationBlock) &&
            (identical(other.depthUom, depthUom) ||
                other.depthUom == depthUom) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other._sensors, _sensors) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            const DeepCollectionEquality()
                .equals(other._thresholds, _thresholds) &&
            (identical(other.fetchingDevice, fetchingDevice) ||
                other.fetchingDevice == fetchingDevice) &&
            (identical(other.fetchDeviceError, fetchDeviceError) ||
                other.fetchDeviceError == fetchDeviceError) &&
            (identical(other.updatingDevice, updatingDevice) ||
                other.updatingDevice == updatingDevice) &&
            (identical(other.updateDeviceError, updateDeviceError) ||
                other.updateDeviceError == updateDeviceError) &&
            (identical(other.pulseVolume, pulseVolume) ||
                other.pulseVolume == pulseVolume) &&
            (identical(other.coverageArea, coverageArea) ||
                other.coverageArea == coverageArea) &&
            (identical(other.geolocation, geolocation) ||
                other.geolocation == geolocation));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        deviceId,
        deviceName,
        selectedIrrigationBlockName,
        selectedIrrigationBlockId,
        depth,
        type,
        canBeAssignedToIrrigationBlock,
        depthUom,
        const DeepCollectionEquality().hash(_children),
        const DeepCollectionEquality().hash(_sensors),
        offset,
        multiplier,
        const DeepCollectionEquality().hash(_thresholds),
        fetchingDevice,
        fetchDeviceError,
        updatingDevice,
        updateDeviceError,
        pulseVolume,
        coverageArea,
        geolocation
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceDetailsStateCopyWith<_$_DeviceDetailsState> get copyWith =>
      __$$_DeviceDetailsStateCopyWithImpl<_$_DeviceDetailsState>(
          this, _$identity);
}

abstract class _DeviceDetailsState implements DeviceDetailsState {
  const factory _DeviceDetailsState(
      {required final String deviceId,
      final String deviceName,
      final String? selectedIrrigationBlockName,
      final String? selectedIrrigationBlockId,
      final int? depth,
      final String? type,
      final bool canBeAssignedToIrrigationBlock,
      final String depthUom,
      final List<ViewableDevice>? children,
      final Map<String, List<ViewableSensor>>? sensors,
      final num? offset,
      final num? multiplier,
      final List<Threshold> thresholds,
      final bool fetchingDevice,
      final String? fetchDeviceError,
      final bool updatingDevice,
      final String? updateDeviceError,
      final num pulseVolume,
      final num coverageArea,
      final Geolocation? geolocation}) = _$_DeviceDetailsState;

  @override
  String get deviceId;
  @override
  String get deviceName;
  @override
  String? get selectedIrrigationBlockName;
  @override
  String? get selectedIrrigationBlockId;
  @override
  int? get depth;
  @override
  String? get type;
  @override
  bool get canBeAssignedToIrrigationBlock;
  @override
  String get depthUom;
  @override
  List<ViewableDevice>? get children;
  @override
  Map<String, List<ViewableSensor>>? get sensors;
  @override
  num? get offset;
  @override
  num? get multiplier;
  @override
  List<Threshold> get thresholds;
  @override
  bool get fetchingDevice;
  @override
  String? get fetchDeviceError;
  @override
  bool get updatingDevice;
  @override
  String? get updateDeviceError;
  @override
  num get pulseVolume;
  @override
  num get coverageArea;
  @override
  Geolocation? get geolocation;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceDetailsStateCopyWith<_$_DeviceDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
