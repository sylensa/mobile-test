// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_item_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddItemPayload _$AddItemPayloadFromJson(Map<String, dynamic> json) {
  return _AddItemPayload.fromJson(json);
}

/// @nodoc
mixin _$AddItemPayload {
  String get channelUuid => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get thingId => throw _privateConstructorUsedError;
  int? get ioTypeId => throw _privateConstructorUsedError;
  int? get ioDeviceTypeId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddItemPayloadCopyWith<AddItemPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemPayloadCopyWith<$Res> {
  factory $AddItemPayloadCopyWith(
          AddItemPayload value, $Res Function(AddItemPayload) then) =
      _$AddItemPayloadCopyWithImpl<$Res, AddItemPayload>;
  @useResult
  $Res call(
      {String channelUuid,
      String label,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId,
      int order});
}

/// @nodoc
class _$AddItemPayloadCopyWithImpl<$Res, $Val extends AddItemPayload>
    implements $AddItemPayloadCopyWith<$Res> {
  _$AddItemPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelUuid = null,
    Object? label = null,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      channelUuid: null == channelUuid
          ? _value.channelUuid
          : channelUuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddItemPayloadCopyWith<$Res>
    implements $AddItemPayloadCopyWith<$Res> {
  factory _$$_AddItemPayloadCopyWith(
          _$_AddItemPayload value, $Res Function(_$_AddItemPayload) then) =
      __$$_AddItemPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String channelUuid,
      String label,
      String? thingId,
      int? ioTypeId,
      int? ioDeviceTypeId,
      int order});
}

/// @nodoc
class __$$_AddItemPayloadCopyWithImpl<$Res>
    extends _$AddItemPayloadCopyWithImpl<$Res, _$_AddItemPayload>
    implements _$$_AddItemPayloadCopyWith<$Res> {
  __$$_AddItemPayloadCopyWithImpl(
      _$_AddItemPayload _value, $Res Function(_$_AddItemPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelUuid = null,
    Object? label = null,
    Object? thingId = freezed,
    Object? ioTypeId = freezed,
    Object? ioDeviceTypeId = freezed,
    Object? order = null,
  }) {
    return _then(_$_AddItemPayload(
      channelUuid: null == channelUuid
          ? _value.channelUuid
          : channelUuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddItemPayload implements _AddItemPayload {
  const _$_AddItemPayload(
      {required this.channelUuid,
      required this.label,
      this.thingId,
      this.ioTypeId,
      this.ioDeviceTypeId,
      this.order = 1});

  factory _$_AddItemPayload.fromJson(Map<String, dynamic> json) =>
      _$$_AddItemPayloadFromJson(json);

  @override
  final String channelUuid;
  @override
  final String label;
  @override
  final String? thingId;
  @override
  final int? ioTypeId;
  @override
  final int? ioDeviceTypeId;
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'AddItemPayload(channelUuid: $channelUuid, label: $label, thingId: $thingId, ioTypeId: $ioTypeId, ioDeviceTypeId: $ioDeviceTypeId, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemPayload &&
            (identical(other.channelUuid, channelUuid) ||
                other.channelUuid == channelUuid) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.ioTypeId, ioTypeId) ||
                other.ioTypeId == ioTypeId) &&
            (identical(other.ioDeviceTypeId, ioDeviceTypeId) ||
                other.ioDeviceTypeId == ioDeviceTypeId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelUuid, label, thingId,
      ioTypeId, ioDeviceTypeId, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemPayloadCopyWith<_$_AddItemPayload> get copyWith =>
      __$$_AddItemPayloadCopyWithImpl<_$_AddItemPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddItemPayloadToJson(
      this,
    );
  }
}

abstract class _AddItemPayload implements AddItemPayload {
  const factory _AddItemPayload(
      {required final String channelUuid,
      required final String label,
      final String? thingId,
      final int? ioTypeId,
      final int? ioDeviceTypeId,
      final int order}) = _$_AddItemPayload;

  factory _AddItemPayload.fromJson(Map<String, dynamic> json) =
      _$_AddItemPayload.fromJson;

  @override
  String get channelUuid;
  @override
  String get label;
  @override
  String? get thingId;
  @override
  int? get ioTypeId;
  @override
  int? get ioDeviceTypeId;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemPayloadCopyWith<_$_AddItemPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
