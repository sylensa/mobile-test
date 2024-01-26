// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitType _$UnitTypeFromJson(Map<String, dynamic> json) {
  return _UnitType.fromJson(json);
}

/// @nodoc
mixin _$UnitType {
  String get key => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitTypeCopyWith<UnitType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitTypeCopyWith<$Res> {
  factory $UnitTypeCopyWith(UnitType value, $Res Function(UnitType) then) =
      _$UnitTypeCopyWithImpl<$Res, UnitType>;
  @useResult
  $Res call({String key, int id});
}

/// @nodoc
class _$UnitTypeCopyWithImpl<$Res, $Val extends UnitType>
    implements $UnitTypeCopyWith<$Res> {
  _$UnitTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitTypeCopyWith<$Res> implements $UnitTypeCopyWith<$Res> {
  factory _$$_UnitTypeCopyWith(
          _$_UnitType value, $Res Function(_$_UnitType) then) =
      __$$_UnitTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int id});
}

/// @nodoc
class __$$_UnitTypeCopyWithImpl<$Res>
    extends _$UnitTypeCopyWithImpl<$Res, _$_UnitType>
    implements _$$_UnitTypeCopyWith<$Res> {
  __$$_UnitTypeCopyWithImpl(
      _$_UnitType _value, $Res Function(_$_UnitType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? id = null,
  }) {
    return _then(_$_UnitType(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitType with DiagnosticableTreeMixin implements _UnitType {
  const _$_UnitType({required this.key, required this.id});

  factory _$_UnitType.fromJson(Map<String, dynamic> json) =>
      _$$_UnitTypeFromJson(json);

  @override
  final String key;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitType(key: $key, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitType'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitType &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitTypeCopyWith<_$_UnitType> get copyWith =>
      __$$_UnitTypeCopyWithImpl<_$_UnitType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitTypeToJson(
      this,
    );
  }
}

abstract class _UnitType implements UnitType {
  const factory _UnitType({required final String key, required final int id}) =
      _$_UnitType;

  factory _UnitType.fromJson(Map<String, dynamic> json) = _$_UnitType.fromJson;

  @override
  String get key;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_UnitTypeCopyWith<_$_UnitType> get copyWith =>
      throw _privateConstructorUsedError;
}
