// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmitState {
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitStateCopyWith<SubmitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitStateCopyWith<$Res> {
  factory $SubmitStateCopyWith(
          SubmitState value, $Res Function(SubmitState) then) =
      _$SubmitStateCopyWithImpl<$Res, SubmitState>;
  @useResult
  $Res call({bool loading, bool success, String? error});
}

/// @nodoc
class _$SubmitStateCopyWithImpl<$Res, $Val extends SubmitState>
    implements $SubmitStateCopyWith<$Res> {
  _$SubmitStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SubmitStateCopyWith<$Res>
    implements $SubmitStateCopyWith<$Res> {
  factory _$$_SubmitStateCopyWith(
          _$_SubmitState value, $Res Function(_$_SubmitState) then) =
      __$$_SubmitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool success, String? error});
}

/// @nodoc
class __$$_SubmitStateCopyWithImpl<$Res>
    extends _$SubmitStateCopyWithImpl<$Res, _$_SubmitState>
    implements _$$_SubmitStateCopyWith<$Res> {
  __$$_SubmitStateCopyWithImpl(
      _$_SubmitState _value, $Res Function(_$_SubmitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? success = null,
    Object? error = freezed,
  }) {
    return _then(_$_SubmitState(
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

class _$_SubmitState extends _SubmitState with DiagnosticableTreeMixin {
  const _$_SubmitState({this.loading = false, this.success = false, this.error})
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
    return 'SubmitState(loading: $loading, success: $success, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitState'))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('success', success))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitStateCopyWith<_$_SubmitState> get copyWith =>
      __$$_SubmitStateCopyWithImpl<_$_SubmitState>(this, _$identity);
}

abstract class _SubmitState extends SubmitState {
  const factory _SubmitState(
      {final bool loading,
      final bool success,
      final String? error}) = _$_SubmitState;
  const _SubmitState._() : super._();

  @override
  bool get loading;
  @override
  bool get success;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitStateCopyWith<_$_SubmitState> get copyWith =>
      throw _privateConstructorUsedError;
}
