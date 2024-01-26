// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentWeatherResponse _$CurrentWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return _CurrentWeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherResponse {
  num? get humidity => throw _privateConstructorUsedError;
  String? get temperatureUnitSymbol => throw _privateConstructorUsedError;
  num? get temperature => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  num? get evapotranspiration => throw _privateConstructorUsedError;
  String? get evapotranspirationUnitSymbol =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherResponseCopyWith<CurrentWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherResponseCopyWith<$Res> {
  factory $CurrentWeatherResponseCopyWith(CurrentWeatherResponse value,
          $Res Function(CurrentWeatherResponse) then) =
      _$CurrentWeatherResponseCopyWithImpl<$Res, CurrentWeatherResponse>;
  @useResult
  $Res call(
      {num? humidity,
      String? temperatureUnitSymbol,
      num? temperature,
      String? icon,
      num? evapotranspiration,
      String? evapotranspirationUnitSymbol});
}

/// @nodoc
class _$CurrentWeatherResponseCopyWithImpl<$Res,
        $Val extends CurrentWeatherResponse>
    implements $CurrentWeatherResponseCopyWith<$Res> {
  _$CurrentWeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humidity = freezed,
    Object? temperatureUnitSymbol = freezed,
    Object? temperature = freezed,
    Object? icon = freezed,
    Object? evapotranspiration = freezed,
    Object? evapotranspirationUnitSymbol = freezed,
  }) {
    return _then(_value.copyWith(
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      temperatureUnitSymbol: freezed == temperatureUnitSymbol
          ? _value.temperatureUnitSymbol
          : temperatureUnitSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      evapotranspiration: freezed == evapotranspiration
          ? _value.evapotranspiration
          : evapotranspiration // ignore: cast_nullable_to_non_nullable
              as num?,
      evapotranspirationUnitSymbol: freezed == evapotranspirationUnitSymbol
          ? _value.evapotranspirationUnitSymbol
          : evapotranspirationUnitSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherResponseCopyWith<$Res>
    implements $CurrentWeatherResponseCopyWith<$Res> {
  factory _$$_CurrentWeatherResponseCopyWith(_$_CurrentWeatherResponse value,
          $Res Function(_$_CurrentWeatherResponse) then) =
      __$$_CurrentWeatherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? humidity,
      String? temperatureUnitSymbol,
      num? temperature,
      String? icon,
      num? evapotranspiration,
      String? evapotranspirationUnitSymbol});
}

/// @nodoc
class __$$_CurrentWeatherResponseCopyWithImpl<$Res>
    extends _$CurrentWeatherResponseCopyWithImpl<$Res,
        _$_CurrentWeatherResponse>
    implements _$$_CurrentWeatherResponseCopyWith<$Res> {
  __$$_CurrentWeatherResponseCopyWithImpl(_$_CurrentWeatherResponse _value,
      $Res Function(_$_CurrentWeatherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? humidity = freezed,
    Object? temperatureUnitSymbol = freezed,
    Object? temperature = freezed,
    Object? icon = freezed,
    Object? evapotranspiration = freezed,
    Object? evapotranspirationUnitSymbol = freezed,
  }) {
    return _then(_$_CurrentWeatherResponse(
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
      temperatureUnitSymbol: freezed == temperatureUnitSymbol
          ? _value.temperatureUnitSymbol
          : temperatureUnitSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      evapotranspiration: freezed == evapotranspiration
          ? _value.evapotranspiration
          : evapotranspiration // ignore: cast_nullable_to_non_nullable
              as num?,
      evapotranspirationUnitSymbol: freezed == evapotranspirationUnitSymbol
          ? _value.evapotranspirationUnitSymbol
          : evapotranspirationUnitSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentWeatherResponse
    with DiagnosticableTreeMixin
    implements _CurrentWeatherResponse {
  const _$_CurrentWeatherResponse(
      {this.humidity,
      this.temperatureUnitSymbol,
      this.temperature,
      this.icon,
      this.evapotranspiration,
      this.evapotranspirationUnitSymbol});

  factory _$_CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentWeatherResponseFromJson(json);

  @override
  final num? humidity;
  @override
  final String? temperatureUnitSymbol;
  @override
  final num? temperature;
  @override
  final String? icon;
  @override
  final num? evapotranspiration;
  @override
  final String? evapotranspirationUnitSymbol;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWeatherResponse(humidity: $humidity, temperatureUnitSymbol: $temperatureUnitSymbol, temperature: $temperature, icon: $icon, evapotranspiration: $evapotranspiration, evapotranspirationUnitSymbol: $evapotranspirationUnitSymbol)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWeatherResponse'))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('temperatureUnitSymbol', temperatureUnitSymbol))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('evapotranspiration', evapotranspiration))
      ..add(DiagnosticsProperty(
          'evapotranspirationUnitSymbol', evapotranspirationUnitSymbol));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeatherResponse &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.temperatureUnitSymbol, temperatureUnitSymbol) ||
                other.temperatureUnitSymbol == temperatureUnitSymbol) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.evapotranspiration, evapotranspiration) ||
                other.evapotranspiration == evapotranspiration) &&
            (identical(other.evapotranspirationUnitSymbol,
                    evapotranspirationUnitSymbol) ||
                other.evapotranspirationUnitSymbol ==
                    evapotranspirationUnitSymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, humidity, temperatureUnitSymbol,
      temperature, icon, evapotranspiration, evapotranspirationUnitSymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherResponseCopyWith<_$_CurrentWeatherResponse> get copyWith =>
      __$$_CurrentWeatherResponseCopyWithImpl<_$_CurrentWeatherResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentWeatherResponseToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherResponse implements CurrentWeatherResponse {
  const factory _CurrentWeatherResponse(
      {final num? humidity,
      final String? temperatureUnitSymbol,
      final num? temperature,
      final String? icon,
      final num? evapotranspiration,
      final String? evapotranspirationUnitSymbol}) = _$_CurrentWeatherResponse;

  factory _CurrentWeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrentWeatherResponse.fromJson;

  @override
  num? get humidity;
  @override
  String? get temperatureUnitSymbol;
  @override
  num? get temperature;
  @override
  String? get icon;
  @override
  num? get evapotranspiration;
  @override
  String? get evapotranspirationUnitSymbol;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherResponseCopyWith<_$_CurrentWeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
