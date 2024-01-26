// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'system_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemType _$SystemTypeFromJson(Map<String, dynamic> json) {
  return _SystemType.fromJson(json);
}

/// @nodoc
mixin _$SystemType {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemTypeCopyWith<SystemType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemTypeCopyWith<$Res> {
  factory $SystemTypeCopyWith(
          SystemType value, $Res Function(SystemType) then) =
      _$SystemTypeCopyWithImpl<$Res, SystemType>;
  @useResult
  $Res call({int id, String key, String icon});
}

/// @nodoc
class _$SystemTypeCopyWithImpl<$Res, $Val extends SystemType>
    implements $SystemTypeCopyWith<$Res> {
  _$SystemTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SystemTypeCopyWith<$Res>
    implements $SystemTypeCopyWith<$Res> {
  factory _$$_SystemTypeCopyWith(
          _$_SystemType value, $Res Function(_$_SystemType) then) =
      __$$_SystemTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key, String icon});
}

/// @nodoc
class __$$_SystemTypeCopyWithImpl<$Res>
    extends _$SystemTypeCopyWithImpl<$Res, _$_SystemType>
    implements _$$_SystemTypeCopyWith<$Res> {
  __$$_SystemTypeCopyWithImpl(
      _$_SystemType _value, $Res Function(_$_SystemType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? icon = null,
  }) {
    return _then(_$_SystemType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SystemType with DiagnosticableTreeMixin implements _SystemType {
  const _$_SystemType(
      {required this.id, required this.key, required this.icon});

  factory _$_SystemType.fromJson(Map<String, dynamic> json) =>
      _$$_SystemTypeFromJson(json);

  @override
  final int id;
  @override
  final String key;
  @override
  final String icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SystemType(id: $id, key: $key, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SystemType'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SystemTypeCopyWith<_$_SystemType> get copyWith =>
      __$$_SystemTypeCopyWithImpl<_$_SystemType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemTypeToJson(
      this,
    );
  }
}

abstract class _SystemType implements SystemType {
  const factory _SystemType(
      {required final int id,
      required final String key,
      required final String icon}) = _$_SystemType;

  factory _SystemType.fromJson(Map<String, dynamic> json) =
      _$_SystemType.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SystemTypeCopyWith<_$_SystemType> get copyWith =>
      throw _privateConstructorUsedError;
}
