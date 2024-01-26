// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variety.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variety _$VarietyFromJson(Map<String, dynamic> json) {
  return _Variety.fromJson(json);
}

/// @nodoc
mixin _$Variety {
  int get varietyId => throw _privateConstructorUsedError;
  String get varietyName => throw _privateConstructorUsedError;
  int get cropId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VarietyCopyWith<Variety> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarietyCopyWith<$Res> {
  factory $VarietyCopyWith(Variety value, $Res Function(Variety) then) =
      _$VarietyCopyWithImpl<$Res, Variety>;
  @useResult
  $Res call({int varietyId, String varietyName, int cropId});
}

/// @nodoc
class _$VarietyCopyWithImpl<$Res, $Val extends Variety>
    implements $VarietyCopyWith<$Res> {
  _$VarietyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varietyId = null,
    Object? varietyName = null,
    Object? cropId = null,
  }) {
    return _then(_value.copyWith(
      varietyId: null == varietyId
          ? _value.varietyId
          : varietyId // ignore: cast_nullable_to_non_nullable
              as int,
      varietyName: null == varietyName
          ? _value.varietyName
          : varietyName // ignore: cast_nullable_to_non_nullable
              as String,
      cropId: null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VarietyCopyWith<$Res> implements $VarietyCopyWith<$Res> {
  factory _$$_VarietyCopyWith(
          _$_Variety value, $Res Function(_$_Variety) then) =
      __$$_VarietyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int varietyId, String varietyName, int cropId});
}

/// @nodoc
class __$$_VarietyCopyWithImpl<$Res>
    extends _$VarietyCopyWithImpl<$Res, _$_Variety>
    implements _$$_VarietyCopyWith<$Res> {
  __$$_VarietyCopyWithImpl(_$_Variety _value, $Res Function(_$_Variety) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varietyId = null,
    Object? varietyName = null,
    Object? cropId = null,
  }) {
    return _then(_$_Variety(
      varietyId: null == varietyId
          ? _value.varietyId
          : varietyId // ignore: cast_nullable_to_non_nullable
              as int,
      varietyName: null == varietyName
          ? _value.varietyName
          : varietyName // ignore: cast_nullable_to_non_nullable
              as String,
      cropId: null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variety with DiagnosticableTreeMixin implements _Variety {
  const _$_Variety(
      {required this.varietyId,
      required this.varietyName,
      required this.cropId});

  factory _$_Variety.fromJson(Map<String, dynamic> json) =>
      _$$_VarietyFromJson(json);

  @override
  final int varietyId;
  @override
  final String varietyName;
  @override
  final int cropId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Variety(varietyId: $varietyId, varietyName: $varietyName, cropId: $cropId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Variety'))
      ..add(DiagnosticsProperty('varietyId', varietyId))
      ..add(DiagnosticsProperty('varietyName', varietyName))
      ..add(DiagnosticsProperty('cropId', cropId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variety &&
            (identical(other.varietyId, varietyId) ||
                other.varietyId == varietyId) &&
            (identical(other.varietyName, varietyName) ||
                other.varietyName == varietyName) &&
            (identical(other.cropId, cropId) || other.cropId == cropId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, varietyId, varietyName, cropId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VarietyCopyWith<_$_Variety> get copyWith =>
      __$$_VarietyCopyWithImpl<_$_Variety>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VarietyToJson(
      this,
    );
  }
}

abstract class _Variety implements Variety {
  const factory _Variety(
      {required final int varietyId,
      required final String varietyName,
      required final int cropId}) = _$_Variety;

  factory _Variety.fromJson(Map<String, dynamic> json) = _$_Variety.fromJson;

  @override
  int get varietyId;
  @override
  String get varietyName;
  @override
  int get cropId;
  @override
  @JsonKey(ignore: true)
  _$$_VarietyCopyWith<_$_Variety> get copyWith =>
      throw _privateConstructorUsedError;
}
