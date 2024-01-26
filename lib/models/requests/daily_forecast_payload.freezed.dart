// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_forecast_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyForecastPayload _$DailyForecastPayloadFromJson(Map<String, dynamic> json) {
  return _DailyForecastPayload.fromJson(json);
}

/// @nodoc
mixin _$DailyForecastPayload {
  String get endDate => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get timezoneFormat => throw _privateConstructorUsedError;
  String get unitSystem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyForecastPayloadCopyWith<DailyForecastPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyForecastPayloadCopyWith<$Res> {
  factory $DailyForecastPayloadCopyWith(DailyForecastPayload value,
          $Res Function(DailyForecastPayload) then) =
      _$DailyForecastPayloadCopyWithImpl<$Res, DailyForecastPayload>;
  @useResult
  $Res call(
      {String endDate,
      double latitude,
      double longitude,
      String startDate,
      String timezone,
      String timezoneFormat,
      String unitSystem});
}

/// @nodoc
class _$DailyForecastPayloadCopyWithImpl<$Res,
        $Val extends DailyForecastPayload>
    implements $DailyForecastPayloadCopyWith<$Res> {
  _$DailyForecastPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startDate = null,
    Object? timezone = null,
    Object? timezoneFormat = null,
    Object? unitSystem = null,
  }) {
    return _then(_value.copyWith(
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneFormat: null == timezoneFormat
          ? _value.timezoneFormat
          : timezoneFormat // ignore: cast_nullable_to_non_nullable
              as String,
      unitSystem: null == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DailyForecastPayloadCopyWith<$Res>
    implements $DailyForecastPayloadCopyWith<$Res> {
  factory _$$_DailyForecastPayloadCopyWith(_$_DailyForecastPayload value,
          $Res Function(_$_DailyForecastPayload) then) =
      __$$_DailyForecastPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String endDate,
      double latitude,
      double longitude,
      String startDate,
      String timezone,
      String timezoneFormat,
      String unitSystem});
}

/// @nodoc
class __$$_DailyForecastPayloadCopyWithImpl<$Res>
    extends _$DailyForecastPayloadCopyWithImpl<$Res, _$_DailyForecastPayload>
    implements _$$_DailyForecastPayloadCopyWith<$Res> {
  __$$_DailyForecastPayloadCopyWithImpl(_$_DailyForecastPayload _value,
      $Res Function(_$_DailyForecastPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startDate = null,
    Object? timezone = null,
    Object? timezoneFormat = null,
    Object? unitSystem = null,
  }) {
    return _then(_$_DailyForecastPayload(
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneFormat: null == timezoneFormat
          ? _value.timezoneFormat
          : timezoneFormat // ignore: cast_nullable_to_non_nullable
              as String,
      unitSystem: null == unitSystem
          ? _value.unitSystem
          : unitSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyForecastPayload
    with DiagnosticableTreeMixin
    implements _DailyForecastPayload {
  const _$_DailyForecastPayload(
      {required this.endDate,
      required this.latitude,
      required this.longitude,
      required this.startDate,
      required this.timezone,
      required this.timezoneFormat,
      required this.unitSystem});

  factory _$_DailyForecastPayload.fromJson(Map<String, dynamic> json) =>
      _$$_DailyForecastPayloadFromJson(json);

  @override
  final String endDate;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String startDate;
  @override
  final String timezone;
  @override
  final String timezoneFormat;
  @override
  final String unitSystem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyForecastPayload(endDate: $endDate, latitude: $latitude, longitude: $longitude, startDate: $startDate, timezone: $timezone, timezoneFormat: $timezoneFormat, unitSystem: $unitSystem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyForecastPayload'))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('timezoneFormat', timezoneFormat))
      ..add(DiagnosticsProperty('unitSystem', unitSystem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DailyForecastPayload &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneFormat, timezoneFormat) ||
                other.timezoneFormat == timezoneFormat) &&
            (identical(other.unitSystem, unitSystem) ||
                other.unitSystem == unitSystem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, endDate, latitude, longitude,
      startDate, timezone, timezoneFormat, unitSystem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DailyForecastPayloadCopyWith<_$_DailyForecastPayload> get copyWith =>
      __$$_DailyForecastPayloadCopyWithImpl<_$_DailyForecastPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyForecastPayloadToJson(
      this,
    );
  }
}

abstract class _DailyForecastPayload implements DailyForecastPayload {
  const factory _DailyForecastPayload(
      {required final String endDate,
      required final double latitude,
      required final double longitude,
      required final String startDate,
      required final String timezone,
      required final String timezoneFormat,
      required final String unitSystem}) = _$_DailyForecastPayload;

  factory _DailyForecastPayload.fromJson(Map<String, dynamic> json) =
      _$_DailyForecastPayload.fromJson;

  @override
  String get endDate;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get startDate;
  @override
  String get timezone;
  @override
  String get timezoneFormat;
  @override
  String get unitSystem;
  @override
  @JsonKey(ignore: true)
  _$$_DailyForecastPayloadCopyWith<_$_DailyForecastPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
