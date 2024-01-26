// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateField _$UpdateFieldFromJson(Map<String, dynamic> json) {
  return _UpdateField.fromJson(json);
}

/// @nodoc
mixin _$UpdateField {
  String get op => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFieldCopyWith<UpdateField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFieldCopyWith<$Res> {
  factory $UpdateFieldCopyWith(
          UpdateField value, $Res Function(UpdateField) then) =
      _$UpdateFieldCopyWithImpl<$Res, UpdateField>;
  @useResult
  $Res call({String op, String path, String value});
}

/// @nodoc
class _$UpdateFieldCopyWithImpl<$Res, $Val extends UpdateField>
    implements $UpdateFieldCopyWith<$Res> {
  _$UpdateFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? path = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateFieldCopyWith<$Res>
    implements $UpdateFieldCopyWith<$Res> {
  factory _$$_UpdateFieldCopyWith(
          _$_UpdateField value, $Res Function(_$_UpdateField) then) =
      __$$_UpdateFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String op, String path, String value});
}

/// @nodoc
class __$$_UpdateFieldCopyWithImpl<$Res>
    extends _$UpdateFieldCopyWithImpl<$Res, _$_UpdateField>
    implements _$$_UpdateFieldCopyWith<$Res> {
  __$$_UpdateFieldCopyWithImpl(
      _$_UpdateField _value, $Res Function(_$_UpdateField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? path = null,
    Object? value = null,
  }) {
    return _then(_$_UpdateField(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateField implements _UpdateField {
  const _$_UpdateField(
      {this.op = 'replace', required this.path, required this.value});

  factory _$_UpdateField.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateFieldFromJson(json);

  @override
  @JsonKey()
  final String op;
  @override
  final String path;
  @override
  final String value;

  @override
  String toString() {
    return 'UpdateField(op: $op, path: $path, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateField &&
            (identical(other.op, op) || other.op == op) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, op, path, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFieldCopyWith<_$_UpdateField> get copyWith =>
      __$$_UpdateFieldCopyWithImpl<_$_UpdateField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFieldToJson(
      this,
    );
  }
}

abstract class _UpdateField implements UpdateField {
  const factory _UpdateField(
      {final String op,
      required final String path,
      required final String value}) = _$_UpdateField;

  factory _UpdateField.fromJson(Map<String, dynamic> json) =
      _$_UpdateField.fromJson;

  @override
  String get op;
  @override
  String get path;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFieldCopyWith<_$_UpdateField> get copyWith =>
      throw _privateConstructorUsedError;
}
