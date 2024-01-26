// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_device_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddDeviceState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDeviceStateCopyWith<AddDeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDeviceStateCopyWith<$Res> {
  factory $AddDeviceStateCopyWith(
          AddDeviceState value, $Res Function(AddDeviceState) then) =
      _$AddDeviceStateCopyWithImpl<$Res, AddDeviceState>;
  @useResult
  $Res call({bool loading, bool success, String? error});
}

/// @nodoc
class _$AddDeviceStateCopyWithImpl<$Res, $Val extends AddDeviceState>
    implements $AddDeviceStateCopyWith<$Res> {
  _$AddDeviceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddDeviceStateCopyWith<$Res>
    implements $AddDeviceStateCopyWith<$Res> {
  factory _$$_AddDeviceStateCopyWith(
          _$_AddDeviceState value, $Res Function(_$_AddDeviceState) then) =
      __$$_AddDeviceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool success, String? error});
}

/// @nodoc
class __$$_AddDeviceStateCopyWithImpl<$Res>
    extends _$AddDeviceStateCopyWithImpl<$Res, _$_AddDeviceState>
    implements _$$_AddDeviceStateCopyWith<$Res> {
  __$$_AddDeviceStateCopyWithImpl(
      _$_AddDeviceState _value, $Res Function(_$_AddDeviceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_$_AddDeviceState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddDeviceState extends _AddDeviceState with DiagnosticableTreeMixin {
  const _$_AddDeviceState(
      {this.loading = false, this.success = false, this.error})
      : super._();

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddDeviceState(loading: $loading, success: $success, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddDeviceState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDeviceState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDeviceStateCopyWith<_$_AddDeviceState> get copyWith =>
      __$$_AddDeviceStateCopyWithImpl<_$_AddDeviceState>(this, _$identity);
}

abstract class _AddDeviceState extends AddDeviceState {
  const factory _AddDeviceState(
      {final bool loading,
      final bool success,
      final String? error}) = _$_AddDeviceState;
  const _AddDeviceState._() : super._();

  @override
  bool get loading;
  @override
  bool get success;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddDeviceStateCopyWith<_$_AddDeviceState> get copyWith =>
      throw _privateConstructorUsedError;
}
