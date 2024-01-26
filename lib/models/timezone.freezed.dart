// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timezone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Timezone _$TimezoneFromJson(Map<String, dynamic> json) {
  return _Timezone.fromJson(json);
}

/// @nodoc
mixin _$Timezone {
  String get displayName => throw _privateConstructorUsedError;
  String? get windowsId => throw _privateConstructorUsedError;
  String get ianaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimezoneCopyWith<Timezone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimezoneCopyWith<$Res> {
  factory $TimezoneCopyWith(Timezone value, $Res Function(Timezone) then) =
      _$TimezoneCopyWithImpl<$Res, Timezone>;
  @useResult
  $Res call({String displayName, String? windowsId, String ianaId});
}

/// @nodoc
class _$TimezoneCopyWithImpl<$Res, $Val extends Timezone>
    implements $TimezoneCopyWith<$Res> {
  _$TimezoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? windowsId = freezed,
    Object? ianaId = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      windowsId: freezed == windowsId
          ? _value.windowsId
          : windowsId // ignore: cast_nullable_to_non_nullable
              as String?,
      ianaId: null == ianaId
          ? _value.ianaId
          : ianaId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimezoneCopyWith<$Res> implements $TimezoneCopyWith<$Res> {
  factory _$$_TimezoneCopyWith(
          _$_Timezone value, $Res Function(_$_Timezone) then) =
      __$$_TimezoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String displayName, String? windowsId, String ianaId});
}

/// @nodoc
class __$$_TimezoneCopyWithImpl<$Res>
    extends _$TimezoneCopyWithImpl<$Res, _$_Timezone>
    implements _$$_TimezoneCopyWith<$Res> {
  __$$_TimezoneCopyWithImpl(
      _$_Timezone _value, $Res Function(_$_Timezone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? windowsId = freezed,
    Object? ianaId = null,
  }) {
    return _then(_$_Timezone(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      windowsId: freezed == windowsId
          ? _value.windowsId
          : windowsId // ignore: cast_nullable_to_non_nullable
              as String?,
      ianaId: null == ianaId
          ? _value.ianaId
          : ianaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timezone with DiagnosticableTreeMixin implements _Timezone {
  const _$_Timezone(
      {required this.displayName, this.windowsId, required this.ianaId});

  factory _$_Timezone.fromJson(Map<String, dynamic> json) =>
      _$$_TimezoneFromJson(json);

  @override
  final String displayName;
  @override
  final String? windowsId;
  @override
  final String ianaId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Timezone(displayName: $displayName, windowsId: $windowsId, ianaId: $ianaId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Timezone'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('windowsId', windowsId))
      ..add(DiagnosticsProperty('ianaId', ianaId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timezone &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.windowsId, windowsId) ||
                other.windowsId == windowsId) &&
            (identical(other.ianaId, ianaId) || other.ianaId == ianaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, displayName, windowsId, ianaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimezoneCopyWith<_$_Timezone> get copyWith =>
      __$$_TimezoneCopyWithImpl<_$_Timezone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimezoneToJson(
      this,
    );
  }
}

abstract class _Timezone implements Timezone {
  const factory _Timezone(
      {required final String displayName,
      final String? windowsId,
      required final String ianaId}) = _$_Timezone;

  factory _Timezone.fromJson(Map<String, dynamic> json) = _$_Timezone.fromJson;

  @override
  String get displayName;
  @override
  String? get windowsId;
  @override
  String get ianaId;
  @override
  @JsonKey(ignore: true)
  _$$_TimezoneCopyWith<_$_Timezone> get copyWith =>
      throw _privateConstructorUsedError;
}
