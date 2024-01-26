// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'irrigation_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrrigationMethod _$IrrigationMethodFromJson(Map<String, dynamic> json) {
  return _IrrigationMethod.fromJson(json);
}

/// @nodoc
mixin _$IrrigationMethod {
  int get irrigationMethodId => throw _privateConstructorUsedError;
  String get irrigationMethodName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrrigationMethodCopyWith<IrrigationMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrrigationMethodCopyWith<$Res> {
  factory $IrrigationMethodCopyWith(
          IrrigationMethod value, $Res Function(IrrigationMethod) then) =
      _$IrrigationMethodCopyWithImpl<$Res, IrrigationMethod>;
  @useResult
  $Res call(
      {int irrigationMethodId, String irrigationMethodName, bool isActive});
}

/// @nodoc
class _$IrrigationMethodCopyWithImpl<$Res, $Val extends IrrigationMethod>
    implements $IrrigationMethodCopyWith<$Res> {
  _$IrrigationMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? irrigationMethodId = null,
    Object? irrigationMethodName = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      irrigationMethodId: null == irrigationMethodId
          ? _value.irrigationMethodId
          : irrigationMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      irrigationMethodName: null == irrigationMethodName
          ? _value.irrigationMethodName
          : irrigationMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IrrigationMethodCopyWith<$Res>
    implements $IrrigationMethodCopyWith<$Res> {
  factory _$$_IrrigationMethodCopyWith(
          _$_IrrigationMethod value, $Res Function(_$_IrrigationMethod) then) =
      __$$_IrrigationMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int irrigationMethodId, String irrigationMethodName, bool isActive});
}

/// @nodoc
class __$$_IrrigationMethodCopyWithImpl<$Res>
    extends _$IrrigationMethodCopyWithImpl<$Res, _$_IrrigationMethod>
    implements _$$_IrrigationMethodCopyWith<$Res> {
  __$$_IrrigationMethodCopyWithImpl(
      _$_IrrigationMethod _value, $Res Function(_$_IrrigationMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? irrigationMethodId = null,
    Object? irrigationMethodName = null,
    Object? isActive = null,
  }) {
    return _then(_$_IrrigationMethod(
      irrigationMethodId: null == irrigationMethodId
          ? _value.irrigationMethodId
          : irrigationMethodId // ignore: cast_nullable_to_non_nullable
              as int,
      irrigationMethodName: null == irrigationMethodName
          ? _value.irrigationMethodName
          : irrigationMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IrrigationMethod
    with DiagnosticableTreeMixin
    implements _IrrigationMethod {
  const _$_IrrigationMethod(
      {required this.irrigationMethodId,
      required this.irrigationMethodName,
      required this.isActive});

  factory _$_IrrigationMethod.fromJson(Map<String, dynamic> json) =>
      _$$_IrrigationMethodFromJson(json);

  @override
  final int irrigationMethodId;
  @override
  final String irrigationMethodName;
  @override
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IrrigationMethod(irrigationMethodId: $irrigationMethodId, irrigationMethodName: $irrigationMethodName, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IrrigationMethod'))
      ..add(DiagnosticsProperty('irrigationMethodId', irrigationMethodId))
      ..add(DiagnosticsProperty('irrigationMethodName', irrigationMethodName))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IrrigationMethod &&
            (identical(other.irrigationMethodId, irrigationMethodId) ||
                other.irrigationMethodId == irrigationMethodId) &&
            (identical(other.irrigationMethodName, irrigationMethodName) ||
                other.irrigationMethodName == irrigationMethodName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, irrigationMethodId, irrigationMethodName, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IrrigationMethodCopyWith<_$_IrrigationMethod> get copyWith =>
      __$$_IrrigationMethodCopyWithImpl<_$_IrrigationMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IrrigationMethodToJson(
      this,
    );
  }
}

abstract class _IrrigationMethod implements IrrigationMethod {
  const factory _IrrigationMethod(
      {required final int irrigationMethodId,
      required final String irrigationMethodName,
      required final bool isActive}) = _$_IrrigationMethod;

  factory _IrrigationMethod.fromJson(Map<String, dynamic> json) =
      _$_IrrigationMethod.fromJson;

  @override
  int get irrigationMethodId;
  @override
  String get irrigationMethodName;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_IrrigationMethodCopyWith<_$_IrrigationMethod> get copyWith =>
      throw _privateConstructorUsedError;
}
