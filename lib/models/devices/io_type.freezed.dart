// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'io_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IoType _$IoTypeFromJson(Map<String, dynamic> json) {
  return _IoType.fromJson(json);
}

/// @nodoc
mixin _$IoType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IoTypeCopyWith<IoType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IoTypeCopyWith<$Res> {
  factory $IoTypeCopyWith(IoType value, $Res Function(IoType) then) =
      _$IoTypeCopyWithImpl<$Res, IoType>;
  @useResult
  $Res call({int? id, String? name, String? description});
}

/// @nodoc
class _$IoTypeCopyWithImpl<$Res, $Val extends IoType>
    implements $IoTypeCopyWith<$Res> {
  _$IoTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IoTypeCopyWith<$Res> implements $IoTypeCopyWith<$Res> {
  factory _$$_IoTypeCopyWith(_$_IoType value, $Res Function(_$_IoType) then) =
      __$$_IoTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? description});
}

/// @nodoc
class __$$_IoTypeCopyWithImpl<$Res>
    extends _$IoTypeCopyWithImpl<$Res, _$_IoType>
    implements _$$_IoTypeCopyWith<$Res> {
  __$$_IoTypeCopyWithImpl(_$_IoType _value, $Res Function(_$_IoType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_IoType(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IoType with DiagnosticableTreeMixin implements _IoType {
  const _$_IoType({this.id, this.name, this.description});

  factory _$_IoType.fromJson(Map<String, dynamic> json) =>
      _$$_IoTypeFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IoType(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IoType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IoType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IoTypeCopyWith<_$_IoType> get copyWith =>
      __$$_IoTypeCopyWithImpl<_$_IoType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IoTypeToJson(
      this,
    );
  }
}

abstract class _IoType implements IoType {
  const factory _IoType(
      {final int? id,
      final String? name,
      final String? description}) = _$_IoType;

  factory _IoType.fromJson(Map<String, dynamic> json) = _$_IoType.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_IoTypeCopyWith<_$_IoType> get copyWith =>
      throw _privateConstructorUsedError;
}
