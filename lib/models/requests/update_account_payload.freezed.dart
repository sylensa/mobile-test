// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_account_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateAccountPayload _$UpdateAccountPayloadFromJson(Map<String, dynamic> json) {
  return _UpdateAccountPayload.fromJson(json);
}

/// @nodoc
mixin _$UpdateAccountPayload {
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAccountPayloadCopyWith<UpdateAccountPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountPayloadCopyWith<$Res> {
  factory $UpdateAccountPayloadCopyWith(UpdateAccountPayload value,
          $Res Function(UpdateAccountPayload) then) =
      _$UpdateAccountPayloadCopyWithImpl<$Res, UpdateAccountPayload>;
  @useResult
  $Res call(
      {String email, String firstName, String lastName, String phoneNumber});
}

/// @nodoc
class _$UpdateAccountPayloadCopyWithImpl<$Res,
        $Val extends UpdateAccountPayload>
    implements $UpdateAccountPayloadCopyWith<$Res> {
  _$UpdateAccountPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAccountPayloadCopyWith<$Res>
    implements $UpdateAccountPayloadCopyWith<$Res> {
  factory _$$_UpdateAccountPayloadCopyWith(_$_UpdateAccountPayload value,
          $Res Function(_$_UpdateAccountPayload) then) =
      __$$_UpdateAccountPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String firstName, String lastName, String phoneNumber});
}

/// @nodoc
class __$$_UpdateAccountPayloadCopyWithImpl<$Res>
    extends _$UpdateAccountPayloadCopyWithImpl<$Res, _$_UpdateAccountPayload>
    implements _$$_UpdateAccountPayloadCopyWith<$Res> {
  __$$_UpdateAccountPayloadCopyWithImpl(_$_UpdateAccountPayload _value,
      $Res Function(_$_UpdateAccountPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_UpdateAccountPayload(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAccountPayload
    with DiagnosticableTreeMixin
    implements _UpdateAccountPayload {
  const _$_UpdateAccountPayload(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber});

  factory _$_UpdateAccountPayload.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAccountPayloadFromJson(json);

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateAccountPayload(email: $email, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateAccountPayload'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccountPayload &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, firstName, lastName, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountPayloadCopyWith<_$_UpdateAccountPayload> get copyWith =>
      __$$_UpdateAccountPayloadCopyWithImpl<_$_UpdateAccountPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAccountPayloadToJson(
      this,
    );
  }
}

abstract class _UpdateAccountPayload implements UpdateAccountPayload {
  const factory _UpdateAccountPayload(
      {required final String email,
      required final String firstName,
      required final String lastName,
      required final String phoneNumber}) = _$_UpdateAccountPayload;

  factory _UpdateAccountPayload.fromJson(Map<String, dynamic> json) =
      _$_UpdateAccountPayload.fromJson;

  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountPayloadCopyWith<_$_UpdateAccountPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
