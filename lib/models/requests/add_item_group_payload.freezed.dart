// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_item_group_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddItemGroupPayload _$AddItemGroupPayloadFromJson(Map<String, dynamic> json) {
  return _AddItemGroupPayload.fromJson(json);
}

/// @nodoc
mixin _$AddItemGroupPayload {
  String get deviceUuid => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get thingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddItemGroupPayloadCopyWith<AddItemGroupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddItemGroupPayloadCopyWith<$Res> {
  factory $AddItemGroupPayloadCopyWith(
          AddItemGroupPayload value, $Res Function(AddItemGroupPayload) then) =
      _$AddItemGroupPayloadCopyWithImpl<$Res, AddItemGroupPayload>;
  @useResult
  $Res call({String deviceUuid, String label, String? thingId});
}

/// @nodoc
class _$AddItemGroupPayloadCopyWithImpl<$Res, $Val extends AddItemGroupPayload>
    implements $AddItemGroupPayloadCopyWith<$Res> {
  _$AddItemGroupPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceUuid = null,
    Object? label = null,
    Object? thingId = freezed,
  }) {
    return _then(_value.copyWith(
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddItemGroupPayloadCopyWith<$Res>
    implements $AddItemGroupPayloadCopyWith<$Res> {
  factory _$$_AddItemGroupPayloadCopyWith(_$_AddItemGroupPayload value,
          $Res Function(_$_AddItemGroupPayload) then) =
      __$$_AddItemGroupPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceUuid, String label, String? thingId});
}

/// @nodoc
class __$$_AddItemGroupPayloadCopyWithImpl<$Res>
    extends _$AddItemGroupPayloadCopyWithImpl<$Res, _$_AddItemGroupPayload>
    implements _$$_AddItemGroupPayloadCopyWith<$Res> {
  __$$_AddItemGroupPayloadCopyWithImpl(_$_AddItemGroupPayload _value,
      $Res Function(_$_AddItemGroupPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceUuid = null,
    Object? label = null,
    Object? thingId = freezed,
  }) {
    return _then(_$_AddItemGroupPayload(
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      thingId: freezed == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddItemGroupPayload
    with DiagnosticableTreeMixin
    implements _AddItemGroupPayload {
  const _$_AddItemGroupPayload(
      {required this.deviceUuid, required this.label, this.thingId});

  factory _$_AddItemGroupPayload.fromJson(Map<String, dynamic> json) =>
      _$$_AddItemGroupPayloadFromJson(json);

  @override
  final String deviceUuid;
  @override
  final String label;
  @override
  final String? thingId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddItemGroupPayload(deviceUuid: $deviceUuid, label: $label, thingId: $thingId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddItemGroupPayload'))
      ..add(DiagnosticsProperty('deviceUuid', deviceUuid))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('thingId', thingId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddItemGroupPayload &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.thingId, thingId) || other.thingId == thingId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceUuid, label, thingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddItemGroupPayloadCopyWith<_$_AddItemGroupPayload> get copyWith =>
      __$$_AddItemGroupPayloadCopyWithImpl<_$_AddItemGroupPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddItemGroupPayloadToJson(
      this,
    );
  }
}

abstract class _AddItemGroupPayload implements AddItemGroupPayload {
  const factory _AddItemGroupPayload(
      {required final String deviceUuid,
      required final String label,
      final String? thingId}) = _$_AddItemGroupPayload;

  factory _AddItemGroupPayload.fromJson(Map<String, dynamic> json) =
      _$_AddItemGroupPayload.fromJson;

  @override
  String get deviceUuid;
  @override
  String get label;
  @override
  String? get thingId;
  @override
  @JsonKey(ignore: true)
  _$$_AddItemGroupPayloadCopyWith<_$_AddItemGroupPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
