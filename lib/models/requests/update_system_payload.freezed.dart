// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_system_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateSystemPayload _$UpdateSystemPayloadFromJson(Map<String, dynamic> json) {
  return _UpdateSystemPayload.fromJson(json);
}

/// @nodoc
mixin _$UpdateSystemPayload {
  String get culture => throw _privateConstructorUsedError;
  String get unitsSystem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateSystemPayloadCopyWith<UpdateSystemPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSystemPayloadCopyWith<$Res> {
  factory $UpdateSystemPayloadCopyWith(
          UpdateSystemPayload value, $Res Function(UpdateSystemPayload) then) =
      _$UpdateSystemPayloadCopyWithImpl<$Res, UpdateSystemPayload>;
  @useResult
  $Res call({String culture, String unitsSystem});
}

/// @nodoc
class _$UpdateSystemPayloadCopyWithImpl<$Res, $Val extends UpdateSystemPayload>
    implements $UpdateSystemPayloadCopyWith<$Res> {
  _$UpdateSystemPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? culture = null,
    Object? unitsSystem = null,
  }) {
    return _then(_value.copyWith(
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      unitsSystem: null == unitsSystem
          ? _value.unitsSystem
          : unitsSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateSystemPayloadCopyWith<$Res>
    implements $UpdateSystemPayloadCopyWith<$Res> {
  factory _$$_UpdateSystemPayloadCopyWith(_$_UpdateSystemPayload value,
          $Res Function(_$_UpdateSystemPayload) then) =
      __$$_UpdateSystemPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String culture, String unitsSystem});
}

/// @nodoc
class __$$_UpdateSystemPayloadCopyWithImpl<$Res>
    extends _$UpdateSystemPayloadCopyWithImpl<$Res, _$_UpdateSystemPayload>
    implements _$$_UpdateSystemPayloadCopyWith<$Res> {
  __$$_UpdateSystemPayloadCopyWithImpl(_$_UpdateSystemPayload _value,
      $Res Function(_$_UpdateSystemPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? culture = null,
    Object? unitsSystem = null,
  }) {
    return _then(_$_UpdateSystemPayload(
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      unitsSystem: null == unitsSystem
          ? _value.unitsSystem
          : unitsSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateSystemPayload
    with DiagnosticableTreeMixin
    implements _UpdateSystemPayload {
  const _$_UpdateSystemPayload(
      {required this.culture, required this.unitsSystem});

  factory _$_UpdateSystemPayload.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSystemPayloadFromJson(json);

  @override
  final String culture;
  @override
  final String unitsSystem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateSystemPayload(culture: $culture, unitsSystem: $unitsSystem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateSystemPayload'))
      ..add(DiagnosticsProperty('culture', culture))
      ..add(DiagnosticsProperty('unitsSystem', unitsSystem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSystemPayload &&
            (identical(other.culture, culture) || other.culture == culture) &&
            (identical(other.unitsSystem, unitsSystem) ||
                other.unitsSystem == unitsSystem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, culture, unitsSystem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateSystemPayloadCopyWith<_$_UpdateSystemPayload> get copyWith =>
      __$$_UpdateSystemPayloadCopyWithImpl<_$_UpdateSystemPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateSystemPayloadToJson(
      this,
    );
  }
}

abstract class _UpdateSystemPayload implements UpdateSystemPayload {
  const factory _UpdateSystemPayload(
      {required final String culture,
      required final String unitsSystem}) = _$_UpdateSystemPayload;

  factory _UpdateSystemPayload.fromJson(Map<String, dynamic> json) =
      _$_UpdateSystemPayload.fromJson;

  @override
  String get culture;
  @override
  String get unitsSystem;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateSystemPayloadCopyWith<_$_UpdateSystemPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
