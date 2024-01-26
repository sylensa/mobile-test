// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlarmsResponse _$AlarmsResponseFromJson(Map<String, dynamic> json) {
  return _AlarmsResponse.fromJson(json);
}

/// @nodoc
mixin _$AlarmsResponse {
  List<Alarm> get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmsResponseCopyWith<AlarmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmsResponseCopyWith<$Res> {
  factory $AlarmsResponseCopyWith(
          AlarmsResponse value, $Res Function(AlarmsResponse) then) =
      _$AlarmsResponseCopyWithImpl<$Res, AlarmsResponse>;
  @useResult
  $Res call({List<Alarm> value});
}

/// @nodoc
class _$AlarmsResponseCopyWithImpl<$Res, $Val extends AlarmsResponse>
    implements $AlarmsResponseCopyWith<$Res> {
  _$AlarmsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Alarm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlarmsResponseCopyWith<$Res>
    implements $AlarmsResponseCopyWith<$Res> {
  factory _$$_AlarmsResponseCopyWith(
          _$_AlarmsResponse value, $Res Function(_$_AlarmsResponse) then) =
      __$$_AlarmsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Alarm> value});
}

/// @nodoc
class __$$_AlarmsResponseCopyWithImpl<$Res>
    extends _$AlarmsResponseCopyWithImpl<$Res, _$_AlarmsResponse>
    implements _$$_AlarmsResponseCopyWith<$Res> {
  __$$_AlarmsResponseCopyWithImpl(
      _$_AlarmsResponse _value, $Res Function(_$_AlarmsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AlarmsResponse(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Alarm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlarmsResponse
    with DiagnosticableTreeMixin
    implements _AlarmsResponse {
  const _$_AlarmsResponse({required final List<Alarm> value}) : _value = value;

  factory _$_AlarmsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AlarmsResponseFromJson(json);

  final List<Alarm> _value;
  @override
  List<Alarm> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AlarmsResponse(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AlarmsResponse'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmsResponse &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmsResponseCopyWith<_$_AlarmsResponse> get copyWith =>
      __$$_AlarmsResponseCopyWithImpl<_$_AlarmsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlarmsResponseToJson(
      this,
    );
  }
}

abstract class _AlarmsResponse implements AlarmsResponse {
  const factory _AlarmsResponse({required final List<Alarm> value}) =
      _$_AlarmsResponse;

  factory _AlarmsResponse.fromJson(Map<String, dynamic> json) =
      _$_AlarmsResponse.fromJson;

  @override
  List<Alarm> get value;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmsResponseCopyWith<_$_AlarmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
