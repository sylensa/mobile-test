// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_farm_playload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateFarmPayload _$UpdateFarmPayloadFromJson(Map<String, dynamic> json) {
  return _UpdateFarmPayload.fromJson(json);
}

/// @nodoc
mixin _$UpdateFarmPayload {
  String get farmName => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get countrySubdivisionCode =>
      throw _privateConstructorUsedError; //state code
  String get firstDayOfWeek => throw _privateConstructorUsedError;
  String? get ianaTimezoneId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateFarmPayloadCopyWith<UpdateFarmPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFarmPayloadCopyWith<$Res> {
  factory $UpdateFarmPayloadCopyWith(
          UpdateFarmPayload value, $Res Function(UpdateFarmPayload) then) =
      _$UpdateFarmPayloadCopyWithImpl<$Res, UpdateFarmPayload>;
  @useResult
  $Res call(
      {String farmName,
      String? country,
      String? countryCode,
      String? countrySubdivisionCode,
      String firstDayOfWeek,
      String? ianaTimezoneId});
}

/// @nodoc
class _$UpdateFarmPayloadCopyWithImpl<$Res, $Val extends UpdateFarmPayload>
    implements $UpdateFarmPayloadCopyWith<$Res> {
  _$UpdateFarmPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmName = null,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? countrySubdivisionCode = freezed,
    Object? firstDayOfWeek = null,
    Object? ianaTimezoneId = freezed,
  }) {
    return _then(_value.copyWith(
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countrySubdivisionCode: freezed == countrySubdivisionCode
          ? _value.countrySubdivisionCode
          : countrySubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstDayOfWeek: null == firstDayOfWeek
          ? _value.firstDayOfWeek
          : firstDayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      ianaTimezoneId: freezed == ianaTimezoneId
          ? _value.ianaTimezoneId
          : ianaTimezoneId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateFarmPayloadCopyWith<$Res>
    implements $UpdateFarmPayloadCopyWith<$Res> {
  factory _$$_UpdateFarmPayloadCopyWith(_$_UpdateFarmPayload value,
          $Res Function(_$_UpdateFarmPayload) then) =
      __$$_UpdateFarmPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String farmName,
      String? country,
      String? countryCode,
      String? countrySubdivisionCode,
      String firstDayOfWeek,
      String? ianaTimezoneId});
}

/// @nodoc
class __$$_UpdateFarmPayloadCopyWithImpl<$Res>
    extends _$UpdateFarmPayloadCopyWithImpl<$Res, _$_UpdateFarmPayload>
    implements _$$_UpdateFarmPayloadCopyWith<$Res> {
  __$$_UpdateFarmPayloadCopyWithImpl(
      _$_UpdateFarmPayload _value, $Res Function(_$_UpdateFarmPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmName = null,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? countrySubdivisionCode = freezed,
    Object? firstDayOfWeek = null,
    Object? ianaTimezoneId = freezed,
  }) {
    return _then(_$_UpdateFarmPayload(
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      countrySubdivisionCode: freezed == countrySubdivisionCode
          ? _value.countrySubdivisionCode
          : countrySubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      firstDayOfWeek: null == firstDayOfWeek
          ? _value.firstDayOfWeek
          : firstDayOfWeek // ignore: cast_nullable_to_non_nullable
              as String,
      ianaTimezoneId: freezed == ianaTimezoneId
          ? _value.ianaTimezoneId
          : ianaTimezoneId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateFarmPayload
    with DiagnosticableTreeMixin
    implements _UpdateFarmPayload {
  const _$_UpdateFarmPayload(
      {required this.farmName,
      this.country,
      this.countryCode,
      this.countrySubdivisionCode,
      this.firstDayOfWeek = 'Sunday',
      this.ianaTimezoneId});

  factory _$_UpdateFarmPayload.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateFarmPayloadFromJson(json);

  @override
  final String farmName;
  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final String? countrySubdivisionCode;
//state code
  @override
  @JsonKey()
  final String firstDayOfWeek;
  @override
  final String? ianaTimezoneId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFarmPayload(farmName: $farmName, country: $country, countryCode: $countryCode, countrySubdivisionCode: $countrySubdivisionCode, firstDayOfWeek: $firstDayOfWeek, ianaTimezoneId: $ianaTimezoneId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFarmPayload'))
      ..add(DiagnosticsProperty('farmName', farmName))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(
          DiagnosticsProperty('countrySubdivisionCode', countrySubdivisionCode))
      ..add(DiagnosticsProperty('firstDayOfWeek', firstDayOfWeek))
      ..add(DiagnosticsProperty('ianaTimezoneId', ianaTimezoneId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFarmPayload &&
            (identical(other.farmName, farmName) ||
                other.farmName == farmName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.countrySubdivisionCode, countrySubdivisionCode) ||
                other.countrySubdivisionCode == countrySubdivisionCode) &&
            (identical(other.firstDayOfWeek, firstDayOfWeek) ||
                other.firstDayOfWeek == firstDayOfWeek) &&
            (identical(other.ianaTimezoneId, ianaTimezoneId) ||
                other.ianaTimezoneId == ianaTimezoneId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, farmName, country, countryCode,
      countrySubdivisionCode, firstDayOfWeek, ianaTimezoneId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFarmPayloadCopyWith<_$_UpdateFarmPayload> get copyWith =>
      __$$_UpdateFarmPayloadCopyWithImpl<_$_UpdateFarmPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateFarmPayloadToJson(
      this,
    );
  }
}

abstract class _UpdateFarmPayload implements UpdateFarmPayload {
  const factory _UpdateFarmPayload(
      {required final String farmName,
      final String? country,
      final String? countryCode,
      final String? countrySubdivisionCode,
      final String firstDayOfWeek,
      final String? ianaTimezoneId}) = _$_UpdateFarmPayload;

  factory _UpdateFarmPayload.fromJson(Map<String, dynamic> json) =
      _$_UpdateFarmPayload.fromJson;

  @override
  String get farmName;
  @override
  String? get country;
  @override
  String? get countryCode;
  @override
  String? get countrySubdivisionCode;
  @override //state code
  String get firstDayOfWeek;
  @override
  String? get ianaTimezoneId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateFarmPayloadCopyWith<_$_UpdateFarmPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
