// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StateDistrict _$StateDistrictFromJson(Map<String, dynamic> json) {
  return _StateDistrict.fromJson(json);
}

/// @nodoc
mixin _$StateDistrict {
  String get stateIsoCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get countryIsoCode => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateDistrictCopyWith<StateDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateDistrictCopyWith<$Res> {
  factory $StateDistrictCopyWith(
          StateDistrict value, $Res Function(StateDistrict) then) =
      _$StateDistrictCopyWithImpl<$Res, StateDistrict>;
  @useResult
  $Res call(
      {String stateIsoCode, String name, String? countryIsoCode, String? type});
}

/// @nodoc
class _$StateDistrictCopyWithImpl<$Res, $Val extends StateDistrict>
    implements $StateDistrictCopyWith<$Res> {
  _$StateDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateIsoCode = null,
    Object? name = null,
    Object? countryIsoCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      stateIsoCode: null == stateIsoCode
          ? _value.stateIsoCode
          : stateIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateDistrictCopyWith<$Res>
    implements $StateDistrictCopyWith<$Res> {
  factory _$$_StateDistrictCopyWith(
          _$_StateDistrict value, $Res Function(_$_StateDistrict) then) =
      __$$_StateDistrictCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stateIsoCode, String name, String? countryIsoCode, String? type});
}

/// @nodoc
class __$$_StateDistrictCopyWithImpl<$Res>
    extends _$StateDistrictCopyWithImpl<$Res, _$_StateDistrict>
    implements _$$_StateDistrictCopyWith<$Res> {
  __$$_StateDistrictCopyWithImpl(
      _$_StateDistrict _value, $Res Function(_$_StateDistrict) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateIsoCode = null,
    Object? name = null,
    Object? countryIsoCode = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_StateDistrict(
      stateIsoCode: null == stateIsoCode
          ? _value.stateIsoCode
          : stateIsoCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryIsoCode: freezed == countryIsoCode
          ? _value.countryIsoCode
          : countryIsoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StateDistrict with DiagnosticableTreeMixin implements _StateDistrict {
  const _$_StateDistrict(
      {required this.stateIsoCode,
      required this.name,
      this.countryIsoCode,
      this.type});

  factory _$_StateDistrict.fromJson(Map<String, dynamic> json) =>
      _$$_StateDistrictFromJson(json);

  @override
  final String stateIsoCode;
  @override
  final String name;
  @override
  final String? countryIsoCode;
  @override
  final String? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateDistrict(stateIsoCode: $stateIsoCode, name: $name, countryIsoCode: $countryIsoCode, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateDistrict'))
      ..add(DiagnosticsProperty('stateIsoCode', stateIsoCode))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('countryIsoCode', countryIsoCode))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateDistrict &&
            (identical(other.stateIsoCode, stateIsoCode) ||
                other.stateIsoCode == stateIsoCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryIsoCode, countryIsoCode) ||
                other.countryIsoCode == countryIsoCode) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stateIsoCode, name, countryIsoCode, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateDistrictCopyWith<_$_StateDistrict> get copyWith =>
      __$$_StateDistrictCopyWithImpl<_$_StateDistrict>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StateDistrictToJson(
      this,
    );
  }
}

abstract class _StateDistrict implements StateDistrict {
  const factory _StateDistrict(
      {required final String stateIsoCode,
      required final String name,
      final String? countryIsoCode,
      final String? type}) = _$_StateDistrict;

  factory _StateDistrict.fromJson(Map<String, dynamic> json) =
      _$_StateDistrict.fromJson;

  @override
  String get stateIsoCode;
  @override
  String get name;
  @override
  String? get countryIsoCode;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_StateDistrictCopyWith<_$_StateDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}
