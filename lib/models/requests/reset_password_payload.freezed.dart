// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPasswordPayload _$ResetPasswordPayloadFromJson(Map<String, dynamic> json) {
  return _ResetPasswordPayload.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordPayload {
  String get UserId => throw _privateConstructorUsedError;
  String get Subject => throw _privateConstructorUsedError;
  String get Body => throw _privateConstructorUsedError;
  String get CallbackUrlFormatString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordPayloadCopyWith<ResetPasswordPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordPayloadCopyWith<$Res> {
  factory $ResetPasswordPayloadCopyWith(ResetPasswordPayload value,
          $Res Function(ResetPasswordPayload) then) =
      _$ResetPasswordPayloadCopyWithImpl<$Res, ResetPasswordPayload>;
  @useResult
  $Res call(
      {String UserId,
      String Subject,
      String Body,
      String CallbackUrlFormatString});
}

/// @nodoc
class _$ResetPasswordPayloadCopyWithImpl<$Res,
        $Val extends ResetPasswordPayload>
    implements $ResetPasswordPayloadCopyWith<$Res> {
  _$ResetPasswordPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? UserId = null,
    Object? Subject = null,
    Object? Body = null,
    Object? CallbackUrlFormatString = null,
  }) {
    return _then(_value.copyWith(
      UserId: null == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as String,
      Subject: null == Subject
          ? _value.Subject
          : Subject // ignore: cast_nullable_to_non_nullable
              as String,
      Body: null == Body
          ? _value.Body
          : Body // ignore: cast_nullable_to_non_nullable
              as String,
      CallbackUrlFormatString: null == CallbackUrlFormatString
          ? _value.CallbackUrlFormatString
          : CallbackUrlFormatString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordPayloadCopyWith<$Res>
    implements $ResetPasswordPayloadCopyWith<$Res> {
  factory _$$_ResetPasswordPayloadCopyWith(_$_ResetPasswordPayload value,
          $Res Function(_$_ResetPasswordPayload) then) =
      __$$_ResetPasswordPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String UserId,
      String Subject,
      String Body,
      String CallbackUrlFormatString});
}

/// @nodoc
class __$$_ResetPasswordPayloadCopyWithImpl<$Res>
    extends _$ResetPasswordPayloadCopyWithImpl<$Res, _$_ResetPasswordPayload>
    implements _$$_ResetPasswordPayloadCopyWith<$Res> {
  __$$_ResetPasswordPayloadCopyWithImpl(_$_ResetPasswordPayload _value,
      $Res Function(_$_ResetPasswordPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? UserId = null,
    Object? Subject = null,
    Object? Body = null,
    Object? CallbackUrlFormatString = null,
  }) {
    return _then(_$_ResetPasswordPayload(
      UserId: null == UserId
          ? _value.UserId
          : UserId // ignore: cast_nullable_to_non_nullable
              as String,
      Subject: null == Subject
          ? _value.Subject
          : Subject // ignore: cast_nullable_to_non_nullable
              as String,
      Body: null == Body
          ? _value.Body
          : Body // ignore: cast_nullable_to_non_nullable
              as String,
      CallbackUrlFormatString: null == CallbackUrlFormatString
          ? _value.CallbackUrlFormatString
          : CallbackUrlFormatString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPasswordPayload implements _ResetPasswordPayload {
  const _$_ResetPasswordPayload(
      {required this.UserId,
      this.Subject = 'NetBeat VX - reset password',
      this.Body =
          'Please use the link below to reset your password. <a href=\"{callbackUrl}\">LINK</a> </br> </br> *Notice - in case you have entered email address only, the password for all users under this e-mail will be reset',
      this.CallbackUrlFormatString =
          ''});

  factory _$_ResetPasswordPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPasswordPayloadFromJson(json);

  @override
  final String UserId;
  @override
  @JsonKey()
  final String Subject;
  @override
  @JsonKey()
  final String Body;
  @override
  @JsonKey()
  final String CallbackUrlFormatString;

  @override
  String toString() {
    return 'ResetPasswordPayload(UserId: $UserId, Subject: $Subject, Body: $Body, CallbackUrlFormatString: $CallbackUrlFormatString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordPayload &&
            (identical(other.UserId, UserId) || other.UserId == UserId) &&
            (identical(other.Subject, Subject) || other.Subject == Subject) &&
            (identical(other.Body, Body) || other.Body == Body) &&
            (identical(
                    other.CallbackUrlFormatString, CallbackUrlFormatString) ||
                other.CallbackUrlFormatString == CallbackUrlFormatString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, UserId, Subject, Body, CallbackUrlFormatString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordPayloadCopyWith<_$_ResetPasswordPayload> get copyWith =>
      __$$_ResetPasswordPayloadCopyWithImpl<_$_ResetPasswordPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPasswordPayloadToJson(
      this,
    );
  }
}

abstract class _ResetPasswordPayload implements ResetPasswordPayload {
  const factory _ResetPasswordPayload(
      {required final String UserId,
      final String Subject,
      final String Body,
      final String CallbackUrlFormatString}) = _$_ResetPasswordPayload;

  factory _ResetPasswordPayload.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordPayload.fromJson;

  @override
  String get UserId;
  @override
  String get Subject;
  @override
  String get Body;
  @override
  String get CallbackUrlFormatString;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordPayloadCopyWith<_$_ResetPasswordPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
