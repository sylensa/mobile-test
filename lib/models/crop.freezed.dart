// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Crop _$CropFromJson(Map<String, dynamic> json) {
  return _Crop.fromJson(json);
}

/// @nodoc
mixin _$Crop {
  int get cropId => throw _privateConstructorUsedError;
  String get cropName => throw _privateConstructorUsedError;
  int get cropFamilyId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropCopyWith<Crop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropCopyWith<$Res> {
  factory $CropCopyWith(Crop value, $Res Function(Crop) then) =
      _$CropCopyWithImpl<$Res, Crop>;
  @useResult
  $Res call({int cropId, String cropName, int cropFamilyId, bool isActive});
}

/// @nodoc
class _$CropCopyWithImpl<$Res, $Val extends Crop>
    implements $CropCopyWith<$Res> {
  _$CropCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropId = null,
    Object? cropName = null,
    Object? cropFamilyId = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      cropId: null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int,
      cropName: null == cropName
          ? _value.cropName
          : cropName // ignore: cast_nullable_to_non_nullable
              as String,
      cropFamilyId: null == cropFamilyId
          ? _value.cropFamilyId
          : cropFamilyId // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CropCopyWith<$Res> implements $CropCopyWith<$Res> {
  factory _$$_CropCopyWith(_$_Crop value, $Res Function(_$_Crop) then) =
      __$$_CropCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cropId, String cropName, int cropFamilyId, bool isActive});
}

/// @nodoc
class __$$_CropCopyWithImpl<$Res> extends _$CropCopyWithImpl<$Res, _$_Crop>
    implements _$$_CropCopyWith<$Res> {
  __$$_CropCopyWithImpl(_$_Crop _value, $Res Function(_$_Crop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropId = null,
    Object? cropName = null,
    Object? cropFamilyId = null,
    Object? isActive = null,
  }) {
    return _then(_$_Crop(
      cropId: null == cropId
          ? _value.cropId
          : cropId // ignore: cast_nullable_to_non_nullable
              as int,
      cropName: null == cropName
          ? _value.cropName
          : cropName // ignore: cast_nullable_to_non_nullable
              as String,
      cropFamilyId: null == cropFamilyId
          ? _value.cropFamilyId
          : cropFamilyId // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Crop with DiagnosticableTreeMixin implements _Crop {
  const _$_Crop(
      {required this.cropId,
      required this.cropName,
      required this.cropFamilyId,
      required this.isActive});

  factory _$_Crop.fromJson(Map<String, dynamic> json) => _$$_CropFromJson(json);

  @override
  final int cropId;
  @override
  final String cropName;
  @override
  final int cropFamilyId;
  @override
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Crop(cropId: $cropId, cropName: $cropName, cropFamilyId: $cropFamilyId, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Crop'))
      ..add(DiagnosticsProperty('cropId', cropId))
      ..add(DiagnosticsProperty('cropName', cropName))
      ..add(DiagnosticsProperty('cropFamilyId', cropFamilyId))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crop &&
            (identical(other.cropId, cropId) || other.cropId == cropId) &&
            (identical(other.cropName, cropName) ||
                other.cropName == cropName) &&
            (identical(other.cropFamilyId, cropFamilyId) ||
                other.cropFamilyId == cropFamilyId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cropId, cropName, cropFamilyId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CropCopyWith<_$_Crop> get copyWith =>
      __$$_CropCopyWithImpl<_$_Crop>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CropToJson(
      this,
    );
  }
}

abstract class _Crop implements Crop {
  const factory _Crop(
      {required final int cropId,
      required final String cropName,
      required final int cropFamilyId,
      required final bool isActive}) = _$_Crop;

  factory _Crop.fromJson(Map<String, dynamic> json) = _$_Crop.fromJson;

  @override
  int get cropId;
  @override
  String get cropName;
  @override
  int get cropFamilyId;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_CropCopyWith<_$_Crop> get copyWith => throw _privateConstructorUsedError;
}
