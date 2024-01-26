// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewable_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewableDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get ioTypeId => throw _privateConstructorUsedError;
  int? get ioDeviceTypeId => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get depthUom => throw _privateConstructorUsedError;
  num? get offset => throw _privateConstructorUsedError;
  num? get multiplier => throw _privateConstructorUsedError;
  String? get thingId => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  bool get canBeAssignedToIrrigationBlock => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  bool get isIoGroup => throw _privateConstructorUsedError;
  bool get displayChildrenInDetails => throw _privateConstructorUsedError;
  bool get isExpandable => throw _privateConstructorUsedError;
  List<Threshold> get thresholds => throw _privateConstructorUsedError;
  List<ViewableDevice> get children => throw _privateConstructorUsedError;
  Map<String, List<ViewableSensor>>? get sensors =>
      throw _privateConstructorUsedError;
  bool get isClickable => throw _privateConstructorUsedError;
  num get pulseVolume => throw _privateConstructorUsedError;
  num get coverageArea => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewableDeviceCopyWith<ViewableDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewableDeviceCopyWith<$Res> {
  factory $ViewableDeviceCopyWith(
          ViewableDevice value, $Res Function(ViewableDevice) then) =
      _$ViewableDeviceCopyWithImpl<$Res, ViewableDevice>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? type,
      int? ioTypeId,
      int? ioDeviceTypeId,
      int? depth,
      String? depthUom,
      num? offset,
      num? multiplier,
      String? thingId,
      String category,
      bool canBeAssignedToIrrigationBlock,
      String icon,
      bool isActive,
      bool isIoGroup,
      bool displayChildrenInDetails,
      bool isExpandable,
      List<Threshold> thresholds,
      List<ViewableDevice> children,
      Map<String, List<ViewableSensor>>? sensors,
      bool isClickable,
      num pulseVolume,
      num coverageArea,
      Geolocation? geolocation});

  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$ViewableDeviceCopyWithImpl<$Res, $Val extends ViewableDevice>
    implements $ViewableDeviceCopyWith<$Res> {
  _$ViewableDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? offset = freezed,
    Object? multiplier = freezed,
    Object? thingId = freezed,
    Object? category = null,
    Object? canBeAssignedToIrrigationBlock = null,
    Object? icon = null,
    Object? isActive = null,
    Object? isIoGroup = null,
    Object? displayChildrenInDetails = null,
    Object? isExpandable = null,
    Object? thresholds = null,
    Object? children = null,
    Object? sensors = freezed,
    Object? isClickable = null,
    Object? pulseVolume = null,
    Object? coverageArea = null,
    Object? geolocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      canBeAssignedToIrrigationBlock: null == canBeAssignedToIrrigationBlock
          ? _value.canBeAssignedToIrrigationBlock
          : canBeAssignedToIrrigationBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isIoGroup: null == isIoGroup
          ? _value.isIoGroup
          : isIoGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      displayChildrenInDetails: null == displayChildrenInDetails
          ? _value.displayChildrenInDetails
          : displayChildrenInDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpandable: null == isExpandable
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      thresholds: null == thresholds
          ? _value.thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as List<Threshold>,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ViewableDevice>,
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewableSensor>>?,
      isClickable: null == isClickable
          ? _value.isClickable
          : isClickable // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_ViewableDeviceCopyWith<$Res>
    implements $ViewableDeviceCopyWith<$Res> {
  factory _$$_ViewableDeviceCopyWith(
          _$_ViewableDevice value, $Res Function(_$_ViewableDevice) then) =
      __$$_ViewableDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? type,
      int? ioTypeId,
      int? ioDeviceTypeId,
      int? depth,
      String? depthUom,
      num? offset,
      num? multiplier,
      String? thingId,
      String category,
      bool canBeAssignedToIrrigationBlock,
      String icon,
      bool isActive,
      bool isIoGroup,
      bool displayChildrenInDetails,
      bool isExpandable,
      List<Threshold> thresholds,
      List<ViewableDevice> children,
      Map<String, List<ViewableSensor>>? sensors,
      bool isClickable,
      num pulseVolume,
      num coverageArea,
      Geolocation? geolocation});

  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$$_ViewableDeviceCopyWithImpl<$Res>
    extends _$ViewableDeviceCopyWithImpl<$Res, _$_ViewableDevice>
    implements _$$_ViewableDeviceCopyWith<$Res> {
  __$$_ViewableDeviceCopyWithImpl(
      _$_ViewableDevice _value, $Res Function(_$_ViewableDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? offset = freezed,
    Object? multiplier = freezed,
    Object? thingId = freezed,
    Object? category = null,
    Object? canBeAssignedToIrrigationBlock = null,
    Object? icon = null,
    Object? isActive = null,
    Object? isIoGroup = null,
    Object? displayChildrenInDetails = null,
    Object? isExpandable = null,
    Object? thresholds = null,
    Object? children = null,
    Object? sensors = freezed,
    Object? isClickable = null,
    Object? pulseVolume = null,
    Object? coverageArea = null,
    Object? geolocation = freezed,
  }) {
    return _then(_$_ViewableDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as num?,
      multiplier: freezed == multiplier
          ? _value.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as num?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      canBeAssignedToIrrigationBlock: null == canBeAssignedToIrrigationBlock
          ? _value.canBeAssignedToIrrigationBlock
          : canBeAssignedToIrrigationBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isIoGroup: null == isIoGroup
          ? _value.isIoGroup
          : isIoGroup // ignore: cast_nullable_to_non_nullable
              as bool,
      displayChildrenInDetails: null == displayChildrenInDetails
          ? _value.displayChildrenInDetails
          : displayChildrenInDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpandable: null == isExpandable
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
      thresholds: null == thresholds
          ? _value._thresholds
          : thresholds // ignore: cast_nullable_to_non_nullable
              as List<Threshold>,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ViewableDevice>,
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ViewableSensor>>?,
      isClickable: null == isClickable
          ? _value.isClickable
          : isClickable // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_ViewableDevice extends _ViewableDevice with DiagnosticableTreeMixin {
  const _$_ViewableDevice(
      {required this.id,
      required this.name,
      this.type,
      this.ioTypeId,
      this.ioDeviceTypeId,
      this.depth,
      this.depthUom,
      this.offset,
      this.multiplier,
      this.thingId,
      this.category = 'channel',
      this.canBeAssignedToIrrigationBlock = false,
      required this.icon,
      required this.isActive,
      this.isIoGroup = false,
      this.displayChildrenInDetails = false,
      this.isExpandable = true,
      final List<Threshold> thresholds = const [],
      final List<ViewableDevice> children = const [],
      final Map<String, List<ViewableSensor>>? sensors,
      this.isClickable = true,
      this.pulseVolume = 0,
      this.coverageArea = 0,
      this.geolocation})
      : _thresholds = thresholds,
        _children = children,
        _sensors = sensors,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String? type;
  @override
  final int? ioTypeId;
  @override
  final int? ioDeviceTypeId;
  @override
  final int? depth;
  @override
  final String? depthUom;
  @override
  final num? offset;
  @override
  final num? multiplier;
  @override
  final String? thingId;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final bool canBeAssignedToIrrigationBlock;
  @override
  final String icon;
  @override
  final bool isActive;
  @override
  @JsonKey()
  final bool isIoGroup;
  @override
  @JsonKey()
  final bool displayChildrenInDetails;
  @override
  @JsonKey()
  final bool isExpandable;
  final List<Threshold> _thresholds;
  @override
  @JsonKey()
  List<Threshold> get thresholds {
    if (_thresholds is EqualUnmodifiableListView) return _thresholds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thresholds);
  }

  final List<ViewableDevice> _children;
  @override
  @JsonKey()
  List<ViewableDevice> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
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
  final bool isClickable;
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
    return 'ViewableDevice(id: $id, name: $name, type: $type, ioTypeId: $ioTypeId, ioDeviceTypeId: $ioDeviceTypeId, depth: $depth, depthUom: $depthUom, offset: $offset, multiplier: $multiplier, thingId: $thingId, category: $category, canBeAssignedToIrrigationBlock: $canBeAssignedToIrrigationBlock, icon: $icon, isActive: $isActive, isIoGroup: $isIoGroup, displayChildrenInDetails: $displayChildrenInDetails, isExpandable: $isExpandable, thresholds: $thresholds, children: $children, sensors: $sensors, isClickable: $isClickable, pulseVolume: $pulseVolume, coverageArea: $coverageArea, geolocation: $geolocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewableDevice'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('ioTypeId', ioTypeId))
      ..add(DiagnosticsProperty('ioDeviceTypeId', ioDeviceTypeId))
      ..add(DiagnosticsProperty('depth', depth))
      ..add(DiagnosticsProperty('depthUom', depthUom))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('multiplier', multiplier))
      ..add(DiagnosticsProperty('thingId', thingId))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty(
          'canBeAssignedToIrrigationBlock', canBeAssignedToIrrigationBlock))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('isIoGroup', isIoGroup))
      ..add(DiagnosticsProperty(
          'displayChildrenInDetails', displayChildrenInDetails))
      ..add(DiagnosticsProperty('isExpandable', isExpandable))
      ..add(DiagnosticsProperty('thresholds', thresholds))
      ..add(DiagnosticsProperty('children', children))
      ..add(DiagnosticsProperty('sensors', sensors))
      ..add(DiagnosticsProperty('isClickable', isClickable))
      ..add(DiagnosticsProperty('pulseVolume', pulseVolume))
      ..add(DiagnosticsProperty('coverageArea', coverageArea))
      ..add(DiagnosticsProperty('geolocation', geolocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewableDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ioTypeId, ioTypeId) ||
                other.ioTypeId == ioTypeId) &&
            (identical(other.ioDeviceTypeId, ioDeviceTypeId) ||
                other.ioDeviceTypeId == ioDeviceTypeId) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.depthUom, depthUom) ||
                other.depthUom == depthUom) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier) &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.canBeAssignedToIrrigationBlock,
                    canBeAssignedToIrrigationBlock) ||
                other.canBeAssignedToIrrigationBlock ==
                    canBeAssignedToIrrigationBlock) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isIoGroup, isIoGroup) ||
                other.isIoGroup == isIoGroup) &&
            (identical(
                    other.displayChildrenInDetails, displayChildrenInDetails) ||
                other.displayChildrenInDetails == displayChildrenInDetails) &&
            (identical(other.isExpandable, isExpandable) ||
                other.isExpandable == isExpandable) &&
            const DeepCollectionEquality()
                .equals(other._thresholds, _thresholds) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality().equals(other._sensors, _sensors) &&
            (identical(other.isClickable, isClickable) ||
                other.isClickable == isClickable) &&
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
        id,
        name,
        type,
        ioTypeId,
        ioDeviceTypeId,
        depth,
        depthUom,
        offset,
        multiplier,
        thingId,
        category,
        canBeAssignedToIrrigationBlock,
        icon,
        isActive,
        isIoGroup,
        displayChildrenInDetails,
        isExpandable,
        const DeepCollectionEquality().hash(_thresholds),
        const DeepCollectionEquality().hash(_children),
        const DeepCollectionEquality().hash(_sensors),
        isClickable,
        pulseVolume,
        coverageArea,
        geolocation
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewableDeviceCopyWith<_$_ViewableDevice> get copyWith =>
      __$$_ViewableDeviceCopyWithImpl<_$_ViewableDevice>(this, _$identity);
}

abstract class _ViewableDevice extends ViewableDevice {
  const factory _ViewableDevice(
      {required final String id,
      required final String name,
      final String? type,
      final int? ioTypeId,
      final int? ioDeviceTypeId,
      final int? depth,
      final String? depthUom,
      final num? offset,
      final num? multiplier,
      final String? thingId,
      final String category,
      final bool canBeAssignedToIrrigationBlock,
      required final String icon,
      required final bool isActive,
      final bool isIoGroup,
      final bool displayChildrenInDetails,
      final bool isExpandable,
      final List<Threshold> thresholds,
      final List<ViewableDevice> children,
      final Map<String, List<ViewableSensor>>? sensors,
      final bool isClickable,
      final num pulseVolume,
      final num coverageArea,
      final Geolocation? geolocation}) = _$_ViewableDevice;
  const _ViewableDevice._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String? get type;
  @override
  int? get ioTypeId;
  @override
  int? get ioDeviceTypeId;
  @override
  int? get depth;
  @override
  String? get depthUom;
  @override
  num? get offset;
  @override
  num? get multiplier;
  @override
  String? get thingId;
  @override
  String get category;
  @override
  bool get canBeAssignedToIrrigationBlock;
  @override
  String get icon;
  @override
  bool get isActive;
  @override
  bool get isIoGroup;
  @override
  bool get displayChildrenInDetails;
  @override
  bool get isExpandable;
  @override
  List<Threshold> get thresholds;
  @override
  List<ViewableDevice> get children;
  @override
  Map<String, List<ViewableSensor>>? get sensors;
  @override
  bool get isClickable;
  @override
  num get pulseVolume;
  @override
  num get coverageArea;
  @override
  Geolocation? get geolocation;
  @override
  @JsonKey(ignore: true)
  _$$_ViewableDeviceCopyWith<_$_ViewableDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
