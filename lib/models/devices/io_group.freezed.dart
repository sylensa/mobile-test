// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'io_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IoGroup _$IoGroupFromJson(Map<String, dynamic> json) {
  return _IoGroup.fromJson(json);
}

/// @nodoc
mixin _$IoGroup {
  String get ioGroupId => throw _privateConstructorUsedError;
  String? get unitId => throw _privateConstructorUsedError;
  IoType? get ioType => throw _privateConstructorUsedError;
  String? get channelId => throw _privateConstructorUsedError;
  List<IO>? get ios => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  IoDeviceType get ioDeviceType => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoGroupCopyWith<IoGroup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoGroupCopyWith<$Res> {
  factory $IoGroupCopyWith(IoGroup value, $Res Function(IoGroup) then) =
      _$IoGroupCopyWithImpl<$Res, IoGroup>;
  @useResult
  $Res call(
      {String ioGroupId,
      String? unitId,
      IoType? ioType,
      String? channelId,
      List<IO>? ios,
      String? name,
      IoDeviceType ioDeviceType,
      bool isActive,
      List<Item>? items,
      String farmId});

  $IoTypeCopyWith<$Res>? get ioType;
  $IoDeviceTypeCopyWith<$Res> get ioDeviceType;
}

/// @nodoc
class _$IoGroupCopyWithImpl<$Res, $Val extends IoGroup>
    implements $IoGroupCopyWith<$Res> {
  _$IoGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioGroupId = null,
    Object? unitId = freezed,
    Object? ioType = freezed,
    Object? channelId = freezed,
    Object? ios = freezed,
    Object? name = freezed,
    Object? ioDeviceType = null,
    Object? isActive = null,
    Object? items = freezed,
    Object? farmId = null,
  }) {
    return _then(_value.copyWith(
      ioGroupId: null == ioGroupId
          ? _value.ioGroupId
          : ioGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioType: freezed == ioType
          ? _value.ioType
          : ioType // ignore: cast_nullable_to_non_nullable
              as IoType?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<IO>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ioDeviceType: null == ioDeviceType
          ? _value.ioDeviceType
          : ioDeviceType // ignore: cast_nullable_to_non_nullable
              as IoDeviceType,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IoTypeCopyWith<$Res>? get ioType {
    if (_value.ioType == null) {
      return null;
    }

    return $IoTypeCopyWith<$Res>(_value.ioType!, (value) {
      return _then(_value.copyWith(ioType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IoDeviceTypeCopyWith<$Res> get ioDeviceType {
    return $IoDeviceTypeCopyWith<$Res>(_value.ioDeviceType, (value) {
      return _then(_value.copyWith(ioDeviceType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IoGroupCopyWith<$Res> implements $IoGroupCopyWith<$Res> {
  factory _$$_IoGroupCopyWith(
          _$_IoGroup value, $Res Function(_$_IoGroup) then) =
      __$$_IoGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String ioGroupId,
      String? unitId,
      IoType? ioType,
      String? channelId,
      List<IO>? ios,
      String? name,
      IoDeviceType ioDeviceType,
      bool isActive,
      List<Item>? items,
      String farmId});

  @override
  $IoTypeCopyWith<$Res>? get ioType;
  @override
  $IoDeviceTypeCopyWith<$Res> get ioDeviceType;
}

/// @nodoc
class __$$_IoGroupCopyWithImpl<$Res>
    extends _$IoGroupCopyWithImpl<$Res, _$_IoGroup>
    implements _$$_IoGroupCopyWith<$Res> {
  __$$_IoGroupCopyWithImpl(_$_IoGroup _value, $Res Function(_$_IoGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioGroupId = null,
    Object? unitId = freezed,
    Object? ioType = freezed,
    Object? channelId = freezed,
    Object? ios = freezed,
    Object? name = freezed,
    Object? ioDeviceType = null,
    Object? isActive = null,
    Object? items = freezed,
    Object? farmId = null,
  }) {
    return _then(_$_IoGroup(
      ioGroupId: null == ioGroupId
          ? _value.ioGroupId
          : ioGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioType: freezed == ioType
          ? _value.ioType
          : ioType // ignore: cast_nullable_to_non_nullable
              as IoType?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      ios: freezed == ios
          ? _value._ios
          : ios // ignore: cast_nullable_to_non_nullable
              as List<IO>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ioDeviceType: null == ioDeviceType
          ? _value.ioDeviceType
          : ioDeviceType // ignore: cast_nullable_to_non_nullable
              as IoDeviceType,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IoGroup with DiagnosticableTreeMixin implements _IoGroup {
  const _$_IoGroup(
      {required this.ioGroupId,
      this.unitId,
      this.ioType,
      this.channelId,
      final List<IO>? ios,
      this.name,
      required this.ioDeviceType,
      this.isActive = false,
      final List<Item>? items,
      required this.farmId})
      : _ios = ios,
        _items = items;

  factory _$_IoGroup.fromJson(Map<String, dynamic> json) =>
      _$$_IoGroupFromJson(json);

  @override
  final String ioGroupId;
  @override
  final String? unitId;
  @override
  final IoType? ioType;
  @override
  final String? channelId;
  final List<IO>? _ios;
  @override
  List<IO>? get ios {
    final value = _ios;
    if (value == null) return null;
    if (_ios is EqualUnmodifiableListView) return _ios;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? name;
  @override
  final IoDeviceType ioDeviceType;
  @override
  @JsonKey()
  final bool isActive;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String farmId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IoGroup(ioGroupId: $ioGroupId, unitId: $unitId, ioType: $ioType, channelId: $channelId, ios: $ios, name: $name, ioDeviceType: $ioDeviceType, isActive: $isActive, items: $items, farmId: $farmId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IoGroup'))
      ..add(DiagnosticsProperty('ioGroupId', ioGroupId))
      ..add(DiagnosticsProperty('unitId', unitId))
      ..add(DiagnosticsProperty('ioType', ioType))
      ..add(DiagnosticsProperty('channelId', channelId))
      ..add(DiagnosticsProperty('ios', ios))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('ioDeviceType', ioDeviceType))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('farmId', farmId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoGroup &&
            (identical(other.ioGroupId, ioGroupId) ||
                other.ioGroupId == ioGroupId) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.ioType, ioType) || other.ioType == ioType) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            const DeepCollectionEquality().equals(other._ios, _ios) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ioDeviceType, ioDeviceType) ||
                other.ioDeviceType == ioDeviceType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.farmId, farmId) || other.farmId == farmId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ioGroupId,
      unitId,
      ioType,
      channelId,
      const DeepCollectionEquality().hash(_ios),
      name,
      ioDeviceType,
      isActive,
      const DeepCollectionEquality().hash(_items),
      farmId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IoGroupCopyWith<_$_IoGroup> get copyWith =>
      __$$_IoGroupCopyWithImpl<_$_IoGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IoGroupToJson(
      this,
    );
  }
}

abstract class _IoGroup implements IoGroup {
  const factory _IoGroup(
      {required final String ioGroupId,
      final String? unitId,
      final IoType? ioType,
      final String? channelId,
      final List<IO>? ios,
      final String? name,
      required final IoDeviceType ioDeviceType,
      final bool isActive,
      final List<Item>? items,
      required final String farmId}) = _$_IoGroup;

  factory _IoGroup.fromJson(Map<String, dynamic> json) = _$_IoGroup.fromJson;

  @override
  String get ioGroupId;
  @override
  String? get unitId;
  @override
  IoType? get ioType;
  @override
  String? get channelId;
  @override
  List<IO>? get ios;
  @override
  String? get name;
  @override
  IoDeviceType get ioDeviceType;
  @override
  bool get isActive;
  @override
  List<Item>? get items;
  @override
  String get farmId;
  @override
  @JsonKey(ignore: true)
  _$$_IoGroupCopyWith<_$_IoGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
