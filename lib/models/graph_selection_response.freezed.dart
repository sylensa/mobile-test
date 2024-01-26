// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_selection_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphSelectionResponse _$GraphSelectionResponseFromJson(
    Map<String, dynamic> json) {
  return _GraphSelectionResponse.fromJson(json);
}

/// @nodoc
mixin _$GraphSelectionResponse {
  List<GraphIrrigationBlock> get graphSelectionData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphSelectionResponseCopyWith<GraphSelectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphSelectionResponseCopyWith<$Res> {
  factory $GraphSelectionResponseCopyWith(GraphSelectionResponse value,
          $Res Function(GraphSelectionResponse) then) =
      _$GraphSelectionResponseCopyWithImpl<$Res, GraphSelectionResponse>;
  @useResult
  $Res call({List<GraphIrrigationBlock> graphSelectionData});
}

/// @nodoc
class _$GraphSelectionResponseCopyWithImpl<$Res,
        $Val extends GraphSelectionResponse>
    implements $GraphSelectionResponseCopyWith<$Res> {
  _$GraphSelectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphSelectionData = null,
  }) {
    return _then(_value.copyWith(
      graphSelectionData: null == graphSelectionData
          ? _value.graphSelectionData
          : graphSelectionData // ignore: cast_nullable_to_non_nullable
              as List<GraphIrrigationBlock>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphSelectionResponseCopyWith<$Res>
    implements $GraphSelectionResponseCopyWith<$Res> {
  factory _$$_GraphSelectionResponseCopyWith(_$_GraphSelectionResponse value,
          $Res Function(_$_GraphSelectionResponse) then) =
      __$$_GraphSelectionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GraphIrrigationBlock> graphSelectionData});
}

/// @nodoc
class __$$_GraphSelectionResponseCopyWithImpl<$Res>
    extends _$GraphSelectionResponseCopyWithImpl<$Res,
        _$_GraphSelectionResponse>
    implements _$$_GraphSelectionResponseCopyWith<$Res> {
  __$$_GraphSelectionResponseCopyWithImpl(_$_GraphSelectionResponse _value,
      $Res Function(_$_GraphSelectionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graphSelectionData = null,
  }) {
    return _then(_$_GraphSelectionResponse(
      graphSelectionData: null == graphSelectionData
          ? _value._graphSelectionData
          : graphSelectionData // ignore: cast_nullable_to_non_nullable
              as List<GraphIrrigationBlock>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphSelectionResponse implements _GraphSelectionResponse {
  const _$_GraphSelectionResponse(
      {required final List<GraphIrrigationBlock> graphSelectionData})
      : _graphSelectionData = graphSelectionData;

  factory _$_GraphSelectionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GraphSelectionResponseFromJson(json);

  final List<GraphIrrigationBlock> _graphSelectionData;
  @override
  List<GraphIrrigationBlock> get graphSelectionData {
    if (_graphSelectionData is EqualUnmodifiableListView)
      return _graphSelectionData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_graphSelectionData);
  }

  @override
  String toString() {
    return 'GraphSelectionResponse(graphSelectionData: $graphSelectionData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphSelectionResponse &&
            const DeepCollectionEquality()
                .equals(other._graphSelectionData, _graphSelectionData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_graphSelectionData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphSelectionResponseCopyWith<_$_GraphSelectionResponse> get copyWith =>
      __$$_GraphSelectionResponseCopyWithImpl<_$_GraphSelectionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphSelectionResponseToJson(
      this,
    );
  }
}

abstract class _GraphSelectionResponse implements GraphSelectionResponse {
  const factory _GraphSelectionResponse(
          {required final List<GraphIrrigationBlock> graphSelectionData}) =
      _$_GraphSelectionResponse;

  factory _GraphSelectionResponse.fromJson(Map<String, dynamic> json) =
      _$_GraphSelectionResponse.fromJson;

  @override
  List<GraphIrrigationBlock> get graphSelectionData;
  @override
  @JsonKey(ignore: true)
  _$$_GraphSelectionResponseCopyWith<_$_GraphSelectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphIrrigationBlock _$GraphIrrigationBlockFromJson(Map<String, dynamic> json) {
  return _GraphIrrigationBlock.fromJson(json);
}

/// @nodoc
mixin _$GraphIrrigationBlock {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get cropUnitId => throw _privateConstructorUsedError;
  List<GraphDevice>? get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphIrrigationBlockCopyWith<GraphIrrigationBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphIrrigationBlockCopyWith<$Res> {
  factory $GraphIrrigationBlockCopyWith(GraphIrrigationBlock value,
          $Res Function(GraphIrrigationBlock) then) =
      _$GraphIrrigationBlockCopyWithImpl<$Res, GraphIrrigationBlock>;
  @useResult
  $Res call(
      {String id, String name, String? cropUnitId, List<GraphDevice>? devices});
}

/// @nodoc
class _$GraphIrrigationBlockCopyWithImpl<$Res,
        $Val extends GraphIrrigationBlock>
    implements $GraphIrrigationBlockCopyWith<$Res> {
  _$GraphIrrigationBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cropUnitId = freezed,
    Object? devices = freezed,
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
      cropUnitId: freezed == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      devices: freezed == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<GraphDevice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphIrrigationBlockCopyWith<$Res>
    implements $GraphIrrigationBlockCopyWith<$Res> {
  factory _$$_GraphIrrigationBlockCopyWith(_$_GraphIrrigationBlock value,
          $Res Function(_$_GraphIrrigationBlock) then) =
      __$$_GraphIrrigationBlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String? cropUnitId, List<GraphDevice>? devices});
}

/// @nodoc
class __$$_GraphIrrigationBlockCopyWithImpl<$Res>
    extends _$GraphIrrigationBlockCopyWithImpl<$Res, _$_GraphIrrigationBlock>
    implements _$$_GraphIrrigationBlockCopyWith<$Res> {
  __$$_GraphIrrigationBlockCopyWithImpl(_$_GraphIrrigationBlock _value,
      $Res Function(_$_GraphIrrigationBlock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cropUnitId = freezed,
    Object? devices = freezed,
  }) {
    return _then(_$_GraphIrrigationBlock(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: freezed == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String?,
      devices: freezed == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<GraphDevice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphIrrigationBlock extends _GraphIrrigationBlock {
  const _$_GraphIrrigationBlock(
      {required this.id,
      required this.name,
      this.cropUnitId,
      final List<GraphDevice>? devices})
      : _devices = devices,
        super._();

  factory _$_GraphIrrigationBlock.fromJson(Map<String, dynamic> json) =>
      _$$_GraphIrrigationBlockFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? cropUnitId;
  final List<GraphDevice>? _devices;
  @override
  List<GraphDevice>? get devices {
    final value = _devices;
    if (value == null) return null;
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GraphIrrigationBlock(id: $id, name: $name, cropUnitId: $cropUnitId, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphIrrigationBlock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cropUnitId,
      const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphIrrigationBlockCopyWith<_$_GraphIrrigationBlock> get copyWith =>
      __$$_GraphIrrigationBlockCopyWithImpl<_$_GraphIrrigationBlock>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphIrrigationBlockToJson(
      this,
    );
  }
}

abstract class _GraphIrrigationBlock extends GraphIrrigationBlock {
  const factory _GraphIrrigationBlock(
      {required final String id,
      required final String name,
      final String? cropUnitId,
      final List<GraphDevice>? devices}) = _$_GraphIrrigationBlock;
  const _GraphIrrigationBlock._() : super._();

  factory _GraphIrrigationBlock.fromJson(Map<String, dynamic> json) =
      _$_GraphIrrigationBlock.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get cropUnitId;
  @override
  List<GraphDevice>? get devices;
  @override
  @JsonKey(ignore: true)
  _$$_GraphIrrigationBlockCopyWith<_$_GraphIrrigationBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphDevice _$GraphDeviceFromJson(Map<String, dynamic> json) {
  return _GraphDevice.fromJson(json);
}

/// @nodoc
mixin _$GraphDevice {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<GraphIoGroup>? get ioGroups => throw _privateConstructorUsedError;
  List<GraphSensor>? get ios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphDeviceCopyWith<GraphDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphDeviceCopyWith<$Res> {
  factory $GraphDeviceCopyWith(
          GraphDevice value, $Res Function(GraphDevice) then) =
      _$GraphDeviceCopyWithImpl<$Res, GraphDevice>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<GraphIoGroup>? ioGroups,
      List<GraphSensor>? ios});
}

/// @nodoc
class _$GraphDeviceCopyWithImpl<$Res, $Val extends GraphDevice>
    implements $GraphDeviceCopyWith<$Res> {
  _$GraphDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ioGroups = freezed,
    Object? ios = freezed,
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
      ioGroups: freezed == ioGroups
          ? _value.ioGroups
          : ioGroups // ignore: cast_nullable_to_non_nullable
              as List<GraphIoGroup>?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<GraphSensor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphDeviceCopyWith<$Res>
    implements $GraphDeviceCopyWith<$Res> {
  factory _$$_GraphDeviceCopyWith(
          _$_GraphDevice value, $Res Function(_$_GraphDevice) then) =
      __$$_GraphDeviceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<GraphIoGroup>? ioGroups,
      List<GraphSensor>? ios});
}

/// @nodoc
class __$$_GraphDeviceCopyWithImpl<$Res>
    extends _$GraphDeviceCopyWithImpl<$Res, _$_GraphDevice>
    implements _$$_GraphDeviceCopyWith<$Res> {
  __$$_GraphDeviceCopyWithImpl(
      _$_GraphDevice _value, $Res Function(_$_GraphDevice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ioGroups = freezed,
    Object? ios = freezed,
  }) {
    return _then(_$_GraphDevice(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ioGroups: freezed == ioGroups
          ? _value._ioGroups
          : ioGroups // ignore: cast_nullable_to_non_nullable
              as List<GraphIoGroup>?,
      ios: freezed == ios
          ? _value._ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<GraphSensor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphDevice extends _GraphDevice {
  const _$_GraphDevice(
      {required this.id,
      required this.name,
      final List<GraphIoGroup>? ioGroups,
      final List<GraphSensor>? ios})
      : _ioGroups = ioGroups,
        _ios = ios,
        super._();

  factory _$_GraphDevice.fromJson(Map<String, dynamic> json) =>
      _$$_GraphDeviceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<GraphIoGroup>? _ioGroups;
  @override
  List<GraphIoGroup>? get ioGroups {
    final value = _ioGroups;
    if (value == null) return null;
    if (_ioGroups is EqualUnmodifiableListView) return _ioGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GraphSensor>? _ios;
  @override
  List<GraphSensor>? get ios {
    final value = _ios;
    if (value == null) return null;
    if (_ios is EqualUnmodifiableListView) return _ios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GraphDevice(id: $id, name: $name, ioGroups: $ioGroups, ios: $ios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphDevice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ioGroups, _ioGroups) &&
            const DeepCollectionEquality().equals(other._ios, _ios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_ioGroups),
      const DeepCollectionEquality().hash(_ios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphDeviceCopyWith<_$_GraphDevice> get copyWith =>
      __$$_GraphDeviceCopyWithImpl<_$_GraphDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphDeviceToJson(
      this,
    );
  }
}

abstract class _GraphDevice extends GraphDevice {
  const factory _GraphDevice(
      {required final String id,
      required final String name,
      final List<GraphIoGroup>? ioGroups,
      final List<GraphSensor>? ios}) = _$_GraphDevice;
  const _GraphDevice._() : super._();

  factory _GraphDevice.fromJson(Map<String, dynamic> json) =
      _$_GraphDevice.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<GraphIoGroup>? get ioGroups;
  @override
  List<GraphSensor>? get ios;
  @override
  @JsonKey(ignore: true)
  _$$_GraphDeviceCopyWith<_$_GraphDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphIoGroup _$GraphIoGroupFromJson(Map<String, dynamic> json) {
  return _GraphIoGroup.fromJson(json);
}

/// @nodoc
mixin _$GraphIoGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<GraphSensor>? get ios => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphIoGroupCopyWith<GraphIoGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphIoGroupCopyWith<$Res> {
  factory $GraphIoGroupCopyWith(
          GraphIoGroup value, $Res Function(GraphIoGroup) then) =
      _$GraphIoGroupCopyWithImpl<$Res, GraphIoGroup>;
  @useResult
  $Res call({String id, String name, List<GraphSensor>? ios});
}

/// @nodoc
class _$GraphIoGroupCopyWithImpl<$Res, $Val extends GraphIoGroup>
    implements $GraphIoGroupCopyWith<$Res> {
  _$GraphIoGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ios = freezed,
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
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<GraphSensor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphIoGroupCopyWith<$Res>
    implements $GraphIoGroupCopyWith<$Res> {
  factory _$$_GraphIoGroupCopyWith(
          _$_GraphIoGroup value, $Res Function(_$_GraphIoGroup) then) =
      __$$_GraphIoGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<GraphSensor>? ios});
}

/// @nodoc
class __$$_GraphIoGroupCopyWithImpl<$Res>
    extends _$GraphIoGroupCopyWithImpl<$Res, _$_GraphIoGroup>
    implements _$$_GraphIoGroupCopyWith<$Res> {
  __$$_GraphIoGroupCopyWithImpl(
      _$_GraphIoGroup _value, $Res Function(_$_GraphIoGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ios = freezed,
  }) {
    return _then(_$_GraphIoGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ios: freezed == ios
          ? _value._ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<GraphSensor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphIoGroup extends _GraphIoGroup {
  const _$_GraphIoGroup(
      {required this.id, required this.name, final List<GraphSensor>? ios})
      : _ios = ios,
        super._();

  factory _$_GraphIoGroup.fromJson(Map<String, dynamic> json) =>
      _$$_GraphIoGroupFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<GraphSensor>? _ios;
  @override
  List<GraphSensor>? get ios {
    final value = _ios;
    if (value == null) return null;
    if (_ios is EqualUnmodifiableListView) return _ios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GraphIoGroup(id: $id, name: $name, ios: $ios)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphIoGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._ios, _ios));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_ios));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphIoGroupCopyWith<_$_GraphIoGroup> get copyWith =>
      __$$_GraphIoGroupCopyWithImpl<_$_GraphIoGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphIoGroupToJson(
      this,
    );
  }
}

abstract class _GraphIoGroup extends GraphIoGroup {
  const factory _GraphIoGroup(
      {required final String id,
      required final String name,
      final List<GraphSensor>? ios}) = _$_GraphIoGroup;
  const _GraphIoGroup._() : super._();

  factory _GraphIoGroup.fromJson(Map<String, dynamic> json) =
      _$_GraphIoGroup.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<GraphSensor>? get ios;
  @override
  @JsonKey(ignore: true)
  _$$_GraphIoGroupCopyWith<_$_GraphIoGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphSensor _$GraphSensorFromJson(Map<String, dynamic> json) {
  return _GraphSensor.fromJson(json);
}

/// @nodoc
mixin _$GraphSensor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get depthUom => throw _privateConstructorUsedError;
  String? get portNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphSensorCopyWith<GraphSensor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphSensorCopyWith<$Res> {
  factory $GraphSensorCopyWith(
          GraphSensor value, $Res Function(GraphSensor) then) =
      _$GraphSensorCopyWithImpl<$Res, GraphSensor>;
  @useResult
  $Res call(
      {String id,
      String name,
      int? depth,
      String? depthUom,
      String? portNumber});
}

/// @nodoc
class _$GraphSensorCopyWithImpl<$Res, $Val extends GraphSensor>
    implements $GraphSensorCopyWith<$Res> {
  _$GraphSensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? portNumber = freezed,
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
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      portNumber: freezed == portNumber
          ? _value.portNumber
          : portNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphSensorCopyWith<$Res>
    implements $GraphSensorCopyWith<$Res> {
  factory _$$_GraphSensorCopyWith(
          _$_GraphSensor value, $Res Function(_$_GraphSensor) then) =
      __$$_GraphSensorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int? depth,
      String? depthUom,
      String? portNumber});
}

/// @nodoc
class __$$_GraphSensorCopyWithImpl<$Res>
    extends _$GraphSensorCopyWithImpl<$Res, _$_GraphSensor>
    implements _$$_GraphSensorCopyWith<$Res> {
  __$$_GraphSensorCopyWithImpl(
      _$_GraphSensor _value, $Res Function(_$_GraphSensor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? depth = freezed,
    Object? depthUom = freezed,
    Object? portNumber = freezed,
  }) {
    return _then(_$_GraphSensor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthUom: freezed == depthUom
          ? _value.depthUom
          : depthUom // ignore: cast_nullable_to_non_nullable
              as String?,
      portNumber: freezed == portNumber
          ? _value.portNumber
          : portNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphSensor implements _GraphSensor {
  const _$_GraphSensor(
      {required this.id,
      required this.name,
      this.depth,
      this.depthUom,
      this.portNumber});

  factory _$_GraphSensor.fromJson(Map<String, dynamic> json) =>
      _$$_GraphSensorFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int? depth;
  @override
  final String? depthUom;
  @override
  final String? portNumber;

  @override
  String toString() {
    return 'GraphSensor(id: $id, name: $name, depth: $depth, depthUom: $depthUom, portNumber: $portNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphSensor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.depthUom, depthUom) ||
                other.depthUom == depthUom) &&
            (identical(other.portNumber, portNumber) ||
                other.portNumber == portNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, depth, depthUom, portNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphSensorCopyWith<_$_GraphSensor> get copyWith =>
      __$$_GraphSensorCopyWithImpl<_$_GraphSensor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphSensorToJson(
      this,
    );
  }
}

abstract class _GraphSensor implements GraphSensor {
  const factory _GraphSensor(
      {required final String id,
      required final String name,
      final int? depth,
      final String? depthUom,
      final String? portNumber}) = _$_GraphSensor;

  factory _GraphSensor.fromJson(Map<String, dynamic> json) =
      _$_GraphSensor.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get depth;
  @override
  String? get depthUom;
  @override
  String? get portNumber;
  @override
  @JsonKey(ignore: true)
  _$$_GraphSensorCopyWith<_$_GraphSensor> get copyWith =>
      throw _privateConstructorUsedError;
}
