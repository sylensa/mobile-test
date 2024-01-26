// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemGroup _$ItemGroupFromJson(Map<String, dynamic> json) {
  return _ItemGroup.fromJson(json);
}

/// @nodoc
mixin _$ItemGroup {
  String get id => throw _privateConstructorUsedError;
  String? get deviceUuid => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemGroupCopyWith<ItemGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemGroupCopyWith<$Res> {
  factory $ItemGroupCopyWith(ItemGroup value, $Res Function(ItemGroup) then) =
      _$ItemGroupCopyWithImpl<$Res, ItemGroup>;
  @useResult
  $Res call({String id, String? deviceUuid, List<Item> items});
}

/// @nodoc
class _$ItemGroupCopyWithImpl<$Res, $Val extends ItemGroup>
    implements $ItemGroupCopyWith<$Res> {
  _$ItemGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceUuid = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: freezed == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemGroupCopyWith<$Res> implements $ItemGroupCopyWith<$Res> {
  factory _$$_ItemGroupCopyWith(
          _$_ItemGroup value, $Res Function(_$_ItemGroup) then) =
      __$$_ItemGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? deviceUuid, List<Item> items});
}

/// @nodoc
class __$$_ItemGroupCopyWithImpl<$Res>
    extends _$ItemGroupCopyWithImpl<$Res, _$_ItemGroup>
    implements _$$_ItemGroupCopyWith<$Res> {
  __$$_ItemGroupCopyWithImpl(
      _$_ItemGroup _value, $Res Function(_$_ItemGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceUuid = freezed,
    Object? items = null,
  }) {
    return _then(_$_ItemGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: freezed == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemGroup implements _ItemGroup {
  const _$_ItemGroup(
      {required this.id, this.deviceUuid, final List<Item> items = const []})
      : _items = items;

  factory _$_ItemGroup.fromJson(Map<String, dynamic> json) =>
      _$$_ItemGroupFromJson(json);

  @override
  final String id;
  @override
  final String? deviceUuid;
  final List<Item> _items;
  @override
  @JsonKey()
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemGroup(id: $id, deviceUuid: $deviceUuid, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, deviceUuid, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemGroupCopyWith<_$_ItemGroup> get copyWith =>
      __$$_ItemGroupCopyWithImpl<_$_ItemGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemGroupToJson(
      this,
    );
  }
}

abstract class _ItemGroup implements ItemGroup {
  const factory _ItemGroup(
      {required final String id,
      final String? deviceUuid,
      final List<Item> items}) = _$_ItemGroup;

  factory _ItemGroup.fromJson(Map<String, dynamic> json) =
      _$_ItemGroup.fromJson;

  @override
  String get id;
  @override
  String? get deviceUuid;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemGroupCopyWith<_$_ItemGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String get itemGroupId => throw _privateConstructorUsedError;
  String? get channelUuid => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get thingId => throw _privateConstructorUsedError;
  int? get ioTypeId => throw _privateConstructorUsedError;
  int? get ioDeviceTypeId => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String id,
      String itemGroupId,
      String? channelUuid,
      String? label,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId,
      bool? isActive});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemGroupId = null,
    Object? channelUuid = freezed,
    Object? label = freezed,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemGroupId: null == itemGroupId
          ? _value.itemGroupId
          : itemGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      channelUuid: freezed == channelUuid
          ? _value.channelUuid
          : channelUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String itemGroupId,
      String? channelUuid,
      String? label,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId,
      bool? isActive});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? itemGroupId = null,
    Object? channelUuid = freezed,
    Object? label = freezed,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$_Item(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemGroupId: null == itemGroupId
          ? _value.itemGroupId
          : itemGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      channelUuid: freezed == channelUuid
          ? _value.channelUuid
          : channelUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
      ioTypeId: freezed == ioTypeId
          ? _value.ioTypeId
          : ioTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      ioDeviceTypeId: freezed == ioDeviceTypeId
          ? _value.ioDeviceTypeId
          : ioDeviceTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.id,
      required this.itemGroupId,
      this.channelUuid,
      this.label,
      this.thingId,
      this.ioTypeId,
      this.ioDeviceTypeId,
      this.isActive});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String id;
  @override
  final String itemGroupId;
  @override
  final String? channelUuid;
  @override
  final String? label;
  @override
  final String? thingId;
  @override
  final int? ioTypeId;
  @override
  final int? ioDeviceTypeId;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'Item(id: $id, itemGroupId: $itemGroupId, channelUuid: $channelUuid, label: $label, thingId: $thingId, ioTypeId: $ioTypeId, ioDeviceTypeId: $ioDeviceTypeId, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemGroupId, itemGroupId) ||
                other.itemGroupId == itemGroupId) &&
            (identical(other.channelUuid, channelUuid) ||
                other.channelUuid == channelUuid) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.ioTypeId, ioTypeId) ||
                other.ioTypeId == ioTypeId) &&
            (identical(other.ioDeviceTypeId, ioDeviceTypeId) ||
                other.ioDeviceTypeId == ioDeviceTypeId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, itemGroupId, channelUuid,
      label, thingId, ioTypeId, ioDeviceTypeId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String id,
      required final String itemGroupId,
      final String? channelUuid,
      final String? label,
      final String? thingId,
      final int? ioTypeId,
      final int? ioDeviceTypeId,
      final bool? isActive}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id;
  @override
  String get itemGroupId;
  @override
  String? get channelUuid;
  @override
  String? get label;
  @override
  String? get thingId;
  @override
  int? get ioTypeId;
  @override
  int? get ioDeviceTypeId;
  @override
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
