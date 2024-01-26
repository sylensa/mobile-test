// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordPayload _$ChangePasswordPayloadFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordPayload.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordPayload {
  String get CurrentPassword => throw _privateConstructorUsedError;
  String get NewPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordPayloadCopyWith<ChangePasswordPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordPayloadCopyWith<$Res> {
  factory $ChangePasswordPayloadCopyWith(ChangePasswordPayload value,
          $Res Function(ChangePasswordPayload) then) =
      _$ChangePasswordPayloadCopyWithImpl<$Res, ChangePasswordPayload>;
  @useResult
  $Res call({String CurrentPassword, String NewPassword});
}

/// @nodoc
class _$ChangePasswordPayloadCopyWithImpl<$Res,
        $Val extends ChangePasswordPayload>
    implements $ChangePasswordPayloadCopyWith<$Res> {
  _$ChangePasswordPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CurrentPassword = null,
    Object? NewPassword = null,
  }) {
    return _then(_value.copyWith(
      CurrentPassword: null == CurrentPassword
          ? _value.CurrentPassword
          : CurrentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      NewPassword: null == NewPassword
          ? _value.NewPassword
          : NewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordPayloadCopyWith<$Res>
    implements $ChangePasswordPayloadCopyWith<$Res> {
  factory _$$_ChangePasswordPayloadCopyWith(_$_ChangePasswordPayload value,
          $Res Function(_$_ChangePasswordPayload) then) =
      __$$_ChangePasswordPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String CurrentPassword, String NewPassword});
}

/// @nodoc
class __$$_ChangePasswordPayloadCopyWithImpl<$Res>
    extends _$ChangePasswordPayloadCopyWithImpl<$Res, _$_ChangePasswordPayload>
    implements _$$_ChangePasswordPayloadCopyWith<$Res> {
  __$$_ChangePasswordPayloadCopyWithImpl(_$_ChangePasswordPayload _value,
      $Res Function(_$_ChangePasswordPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CurrentPassword = null,
    Object? NewPassword = null,
  }) {
    return _then(_$_ChangePasswordPayload(
      CurrentPassword: null == CurrentPassword
          ? _value.CurrentPassword
          : CurrentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      NewPassword: null == NewPassword
          ? _value.NewPassword
          : NewPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordPayload
    with DiagnosticableTreeMixin
    implements _ChangePasswordPayload {
  const _$_ChangePasswordPayload(
      {required this.CurrentPassword, required this.NewPassword});

  factory _$_ChangePasswordPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordPayloadFromJson(json);

  @override
  final String CurrentPassword;
  @override
  final String NewPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChangePasswordPayload(CurrentPassword: $CurrentPassword, NewPassword: $NewPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChangePasswordPayload'))
      ..add(DiagnosticsProperty('CurrentPassword', CurrentPassword))
      ..add(DiagnosticsProperty('NewPassword', NewPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordPayload &&
            (identical(other.CurrentPassword, CurrentPassword) ||
                other.CurrentPassword == CurrentPassword) &&
            (identical(other.NewPassword, NewPassword) ||
                other.NewPassword == NewPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, CurrentPassword, NewPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordPayloadCopyWith<_$_ChangePasswordPayload> get copyWith =>
      __$$_ChangePasswordPayloadCopyWithImpl<_$_ChangePasswordPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordPayloadToJson(
      this,
    );
  }
}

abstract class _ChangePasswordPayload implements ChangePasswordPayload {
  const factory _ChangePasswordPayload(
      {required final String CurrentPassword,
      required final String NewPassword}) = _$_ChangePasswordPayload;

  factory _ChangePasswordPayload.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordPayload.fromJson;

  @override
  String get CurrentPassword;
  @override
  String get NewPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordPayloadCopyWith<_$_ChangePasswordPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
