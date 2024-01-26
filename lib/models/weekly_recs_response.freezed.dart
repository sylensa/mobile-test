// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_recs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeeklyRecsResponse _$WeeklyRecsResponseFromJson(Map<String, dynamic> json) {
  return _WeeklyRecsResponse.fromJson(json);
}

/// @nodoc
mixin _$WeeklyRecsResponse {
  String get timeStamp => throw _privateConstructorUsedError;
  CropUnit get cropUnit => throw _privateConstructorUsedError;
  List<Day> get days => throw _privateConstructorUsedError;
  List<Week> get weeks => throw _privateConstructorUsedError;
  Protocol? get protocol => throw _privateConstructorUsedError;
  TotalToDate? get totalToDate => throw _privateConstructorUsedError;
  SeasonPlan? get seasonPlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeeklyRecsResponseCopyWith<WeeklyRecsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyRecsResponseCopyWith<$Res> {
  factory $WeeklyRecsResponseCopyWith(
          WeeklyRecsResponse value, $Res Function(WeeklyRecsResponse) then) =
      _$WeeklyRecsResponseCopyWithImpl<$Res, WeeklyRecsResponse>;
  @useResult
  $Res call(
      {String timeStamp,
      CropUnit cropUnit,
      List<Day> days,
      List<Week> weeks,
      Protocol? protocol,
      TotalToDate? totalToDate,
      SeasonPlan? seasonPlan});

  $CropUnitCopyWith<$Res> get cropUnit;
  $ProtocolCopyWith<$Res>? get protocol;
  $TotalToDateCopyWith<$Res>? get totalToDate;
  $SeasonPlanCopyWith<$Res>? get seasonPlan;
}

/// @nodoc
class _$WeeklyRecsResponseCopyWithImpl<$Res, $Val extends WeeklyRecsResponse>
    implements $WeeklyRecsResponseCopyWith<$Res> {
  _$WeeklyRecsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeStamp = null,
    Object? cropUnit = null,
    Object? days = null,
    Object? weeks = null,
    Object? protocol = freezed,
    Object? totalToDate = freezed,
    Object? seasonPlan = freezed,
  }) {
    return _then(_value.copyWith(
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnit: null == cropUnit
          ? _value.cropUnit
          : cropUnit // ignore: cast_nullable_to_non_nullable
              as CropUnit,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<Week>,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as Protocol?,
      totalToDate: freezed == totalToDate
          ? _value.totalToDate
          : totalToDate // ignore: cast_nullable_to_non_nullable
              as TotalToDate?,
      seasonPlan: freezed == seasonPlan
          ? _value.seasonPlan
          : seasonPlan // ignore: cast_nullable_to_non_nullable
              as SeasonPlan?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CropUnitCopyWith<$Res> get cropUnit {
    return $CropUnitCopyWith<$Res>(_value.cropUnit, (value) {
      return _then(_value.copyWith(cropUnit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProtocolCopyWith<$Res>? get protocol {
    if (_value.protocol == null) {
      return null;
    }

    return $ProtocolCopyWith<$Res>(_value.protocol!, (value) {
      return _then(_value.copyWith(protocol: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalToDateCopyWith<$Res>? get totalToDate {
    if (_value.totalToDate == null) {
      return null;
    }

    return $TotalToDateCopyWith<$Res>(_value.totalToDate!, (value) {
      return _then(_value.copyWith(totalToDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeasonPlanCopyWith<$Res>? get seasonPlan {
    if (_value.seasonPlan == null) {
      return null;
    }

    return $SeasonPlanCopyWith<$Res>(_value.seasonPlan!, (value) {
      return _then(_value.copyWith(seasonPlan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeeklyRecsResponseCopyWith<$Res>
    implements $WeeklyRecsResponseCopyWith<$Res> {
  factory _$$_WeeklyRecsResponseCopyWith(_$_WeeklyRecsResponse value,
          $Res Function(_$_WeeklyRecsResponse) then) =
      __$$_WeeklyRecsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timeStamp,
      CropUnit cropUnit,
      List<Day> days,
      List<Week> weeks,
      Protocol? protocol,
      TotalToDate? totalToDate,
      SeasonPlan? seasonPlan});

  @override
  $CropUnitCopyWith<$Res> get cropUnit;
  @override
  $ProtocolCopyWith<$Res>? get protocol;
  @override
  $TotalToDateCopyWith<$Res>? get totalToDate;
  @override
  $SeasonPlanCopyWith<$Res>? get seasonPlan;
}

/// @nodoc
class __$$_WeeklyRecsResponseCopyWithImpl<$Res>
    extends _$WeeklyRecsResponseCopyWithImpl<$Res, _$_WeeklyRecsResponse>
    implements _$$_WeeklyRecsResponseCopyWith<$Res> {
  __$$_WeeklyRecsResponseCopyWithImpl(
      _$_WeeklyRecsResponse _value, $Res Function(_$_WeeklyRecsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeStamp = null,
    Object? cropUnit = null,
    Object? days = null,
    Object? weeks = null,
    Object? protocol = freezed,
    Object? totalToDate = freezed,
    Object? seasonPlan = freezed,
  }) {
    return _then(_$_WeeklyRecsResponse(
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnit: null == cropUnit
          ? _value.cropUnit
          : cropUnit // ignore: cast_nullable_to_non_nullable
              as CropUnit,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Day>,
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<Week>,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as Protocol?,
      totalToDate: freezed == totalToDate
          ? _value.totalToDate
          : totalToDate // ignore: cast_nullable_to_non_nullable
              as TotalToDate?,
      seasonPlan: freezed == seasonPlan
          ? _value.seasonPlan
          : seasonPlan // ignore: cast_nullable_to_non_nullable
              as SeasonPlan?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeeklyRecsResponse implements _WeeklyRecsResponse {
  const _$_WeeklyRecsResponse(
      {required this.timeStamp,
      required this.cropUnit,
      final List<Day> days = const [],
      final List<Week> weeks = const [],
      this.protocol,
      this.totalToDate,
      this.seasonPlan})
      : _days = days,
        _weeks = weeks;

  factory _$_WeeklyRecsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeeklyRecsResponseFromJson(json);

  @override
  final String timeStamp;
  @override
  final CropUnit cropUnit;
  final List<Day> _days;
  @override
  @JsonKey()
  List<Day> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<Week> _weeks;
  @override
  @JsonKey()
  List<Week> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  final Protocol? protocol;
  @override
  final TotalToDate? totalToDate;
  @override
  final SeasonPlan? seasonPlan;

  @override
  String toString() {
    return 'WeeklyRecsResponse(timeStamp: $timeStamp, cropUnit: $cropUnit, days: $days, weeks: $weeks, protocol: $protocol, totalToDate: $totalToDate, seasonPlan: $seasonPlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeklyRecsResponse &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.cropUnit, cropUnit) ||
                other.cropUnit == cropUnit) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality().equals(other._weeks, _weeks) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.totalToDate, totalToDate) ||
                other.totalToDate == totalToDate) &&
            (identical(other.seasonPlan, seasonPlan) ||
                other.seasonPlan == seasonPlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timeStamp,
      cropUnit,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_weeks),
      protocol,
      totalToDate,
      seasonPlan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyRecsResponseCopyWith<_$_WeeklyRecsResponse> get copyWith =>
      __$$_WeeklyRecsResponseCopyWithImpl<_$_WeeklyRecsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeeklyRecsResponseToJson(
      this,
    );
  }
}

abstract class _WeeklyRecsResponse implements WeeklyRecsResponse {
  const factory _WeeklyRecsResponse(
      {required final String timeStamp,
      required final CropUnit cropUnit,
      final List<Day> days,
      final List<Week> weeks,
      final Protocol? protocol,
      final TotalToDate? totalToDate,
      final SeasonPlan? seasonPlan}) = _$_WeeklyRecsResponse;

  factory _WeeklyRecsResponse.fromJson(Map<String, dynamic> json) =
      _$_WeeklyRecsResponse.fromJson;

  @override
  String get timeStamp;
  @override
  CropUnit get cropUnit;
  @override
  List<Day> get days;
  @override
  List<Week> get weeks;
  @override
  Protocol? get protocol;
  @override
  TotalToDate? get totalToDate;
  @override
  SeasonPlan? get seasonPlan;
  @override
  @JsonKey(ignore: true)
  _$$_WeeklyRecsResponseCopyWith<_$_WeeklyRecsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CropUnit _$CropUnitFromJson(Map<String, dynamic> json) {
  return _CropUnit.fromJson(json);
}

/// @nodoc
mixin _$CropUnit {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  num? get area => throw _privateConstructorUsedError;
  String? get seasonId => throw _privateConstructorUsedError;
  String? get measurementMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropUnitCopyWith<CropUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropUnitCopyWith<$Res> {
  factory $CropUnitCopyWith(CropUnit value, $Res Function(CropUnit) then) =
      _$CropUnitCopyWithImpl<$Res, CropUnit>;
  @useResult
  $Res call(
      {String id,
      String name,
      String farmId,
      num? area,
      String? seasonId,
      String? measurementMethod});
}

/// @nodoc
class _$CropUnitCopyWithImpl<$Res, $Val extends CropUnit>
    implements $CropUnitCopyWith<$Res> {
  _$CropUnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? farmId = null,
    Object? area = freezed,
    Object? seasonId = freezed,
    Object? measurementMethod = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as num?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementMethod: freezed == measurementMethod
          ? _value.measurementMethod
          : measurementMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CropUnitCopyWith<$Res> implements $CropUnitCopyWith<$Res> {
  factory _$$_CropUnitCopyWith(
          _$_CropUnit value, $Res Function(_$_CropUnit) then) =
      __$$_CropUnitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String farmId,
      num? area,
      String? seasonId,
      String? measurementMethod});
}

/// @nodoc
class __$$_CropUnitCopyWithImpl<$Res>
    extends _$CropUnitCopyWithImpl<$Res, _$_CropUnit>
    implements _$$_CropUnitCopyWith<$Res> {
  __$$_CropUnitCopyWithImpl(
      _$_CropUnit _value, $Res Function(_$_CropUnit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? farmId = null,
    Object? area = freezed,
    Object? seasonId = freezed,
    Object? measurementMethod = freezed,
  }) {
    return _then(_$_CropUnit(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as num?,
      seasonId: freezed == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementMethod: freezed == measurementMethod
          ? _value.measurementMethod
          : measurementMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CropUnit implements _CropUnit {
  const _$_CropUnit(
      {required this.id,
      required this.name,
      required this.farmId,
      this.area,
      this.seasonId,
      this.measurementMethod});

  factory _$_CropUnit.fromJson(Map<String, dynamic> json) =>
      _$$_CropUnitFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String farmId;
  @override
  final num? area;
  @override
  final String? seasonId;
  @override
  final String? measurementMethod;

  @override
  String toString() {
    return 'CropUnit(id: $id, name: $name, farmId: $farmId, area: $area, seasonId: $seasonId, measurementMethod: $measurementMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CropUnit &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.seasonId, seasonId) ||
                other.seasonId == seasonId) &&
            (identical(other.measurementMethod, measurementMethod) ||
                other.measurementMethod == measurementMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, farmId, area, seasonId, measurementMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CropUnitCopyWith<_$_CropUnit> get copyWith =>
      __$$_CropUnitCopyWithImpl<_$_CropUnit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CropUnitToJson(
      this,
    );
  }
}

abstract class _CropUnit implements CropUnit {
  const factory _CropUnit(
      {required final String id,
      required final String name,
      required final String farmId,
      final num? area,
      final String? seasonId,
      final String? measurementMethod}) = _$_CropUnit;

  factory _CropUnit.fromJson(Map<String, dynamic> json) = _$_CropUnit.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get farmId;
  @override
  num? get area;
  @override
  String? get seasonId;
  @override
  String? get measurementMethod;
  @override
  @JsonKey(ignore: true)
  _$$_CropUnitCopyWith<_$_CropUnit> get copyWith =>
      throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  String get dateInSeason => throw _privateConstructorUsedError;
  num? get recommandationDepth => throw _privateConstructorUsedError;
  num? get recommandationVolume => throw _privateConstructorUsedError;
  String? get recommandationTime => throw _privateConstructorUsedError;
  num? get rain => throw _privateConstructorUsedError;
  num? get et => throw _privateConstructorUsedError;
  bool? get heatWaveAlert => throw _privateConstructorUsedError;
  bool? get frostAlert => throw _privateConstructorUsedError;
  num? get dayInSeason => throw _privateConstructorUsedError;
  num? get stageNumber => throw _privateConstructorUsedError;
  String? get stageName => throw _privateConstructorUsedError;
  num? get kc => throw _privateConstructorUsedError;
  num? get refillPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call(
      {String dateInSeason,
      num? recommandationDepth,
      num? recommandationVolume,
      String? recommandationTime,
      num? rain,
      num? et,
      bool? heatWaveAlert,
      bool? frostAlert,
      num? dayInSeason,
      num? stageNumber,
      String? stageName,
      num? kc,
      num? refillPoint});
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateInSeason = null,
    Object? recommandationDepth = freezed,
    Object? recommandationVolume = freezed,
    Object? recommandationTime = freezed,
    Object? rain = freezed,
    Object? et = freezed,
    Object? heatWaveAlert = freezed,
    Object? frostAlert = freezed,
    Object? dayInSeason = freezed,
    Object? stageNumber = freezed,
    Object? stageName = freezed,
    Object? kc = freezed,
    Object? refillPoint = freezed,
  }) {
    return _then(_value.copyWith(
      dateInSeason: null == dateInSeason
          ? _value.dateInSeason
          : dateInSeason // ignore: cast_nullable_to_non_nullable
              as String,
      recommandationDepth: freezed == recommandationDepth
          ? _value.recommandationDepth
          : recommandationDepth // ignore: cast_nullable_to_non_nullable
              as num?,
      recommandationVolume: freezed == recommandationVolume
          ? _value.recommandationVolume
          : recommandationVolume // ignore: cast_nullable_to_non_nullable
              as num?,
      recommandationTime: freezed == recommandationTime
          ? _value.recommandationTime
          : recommandationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as num?,
      et: freezed == et
          ? _value.et
          : et // ignore: cast_nullable_to_non_nullable
              as num?,
      heatWaveAlert: freezed == heatWaveAlert
          ? _value.heatWaveAlert
          : heatWaveAlert // ignore: cast_nullable_to_non_nullable
              as bool?,
      frostAlert: freezed == frostAlert
          ? _value.frostAlert
          : frostAlert // ignore: cast_nullable_to_non_nullable
              as bool?,
      dayInSeason: freezed == dayInSeason
          ? _value.dayInSeason
          : dayInSeason // ignore: cast_nullable_to_non_nullable
              as num?,
      stageNumber: freezed == stageNumber
          ? _value.stageNumber
          : stageNumber // ignore: cast_nullable_to_non_nullable
              as num?,
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      kc: freezed == kc
          ? _value.kc
          : kc // ignore: cast_nullable_to_non_nullable
              as num?,
      refillPoint: freezed == refillPoint
          ? _value.refillPoint
          : refillPoint // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$_DayCopyWith(_$_Day value, $Res Function(_$_Day) then) =
      __$$_DayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dateInSeason,
      num? recommandationDepth,
      num? recommandationVolume,
      String? recommandationTime,
      num? rain,
      num? et,
      bool? heatWaveAlert,
      bool? frostAlert,
      num? dayInSeason,
      num? stageNumber,
      String? stageName,
      num? kc,
      num? refillPoint});
}

/// @nodoc
class __$$_DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$_Day>
    implements _$$_DayCopyWith<$Res> {
  __$$_DayCopyWithImpl(_$_Day _value, $Res Function(_$_Day) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateInSeason = null,
    Object? recommandationDepth = freezed,
    Object? recommandationVolume = freezed,
    Object? recommandationTime = freezed,
    Object? rain = freezed,
    Object? et = freezed,
    Object? heatWaveAlert = freezed,
    Object? frostAlert = freezed,
    Object? dayInSeason = freezed,
    Object? stageNumber = freezed,
    Object? stageName = freezed,
    Object? kc = freezed,
    Object? refillPoint = freezed,
  }) {
    return _then(_$_Day(
      dateInSeason: null == dateInSeason
          ? _value.dateInSeason
          : dateInSeason // ignore: cast_nullable_to_non_nullable
              as String,
      recommandationDepth: freezed == recommandationDepth
          ? _value.recommandationDepth
          : recommandationDepth // ignore: cast_nullable_to_non_nullable
              as num?,
      recommandationVolume: freezed == recommandationVolume
          ? _value.recommandationVolume
          : recommandationVolume // ignore: cast_nullable_to_non_nullable
              as num?,
      recommandationTime: freezed == recommandationTime
          ? _value.recommandationTime
          : recommandationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as num?,
      et: freezed == et
          ? _value.et
          : et // ignore: cast_nullable_to_non_nullable
              as num?,
      heatWaveAlert: freezed == heatWaveAlert
          ? _value.heatWaveAlert
          : heatWaveAlert // ignore: cast_nullable_to_non_nullable
              as bool?,
      frostAlert: freezed == frostAlert
          ? _value.frostAlert
          : frostAlert // ignore: cast_nullable_to_non_nullable
              as bool?,
      dayInSeason: freezed == dayInSeason
          ? _value.dayInSeason
          : dayInSeason // ignore: cast_nullable_to_non_nullable
              as num?,
      stageNumber: freezed == stageNumber
          ? _value.stageNumber
          : stageNumber // ignore: cast_nullable_to_non_nullable
              as num?,
      stageName: freezed == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String?,
      kc: freezed == kc
          ? _value.kc
          : kc // ignore: cast_nullable_to_non_nullable
              as num?,
      refillPoint: freezed == refillPoint
          ? _value.refillPoint
          : refillPoint // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Day implements _Day {
  const _$_Day(
      {required this.dateInSeason,
      this.recommandationDepth,
      this.recommandationVolume,
      this.recommandationTime,
      this.rain,
      this.et,
      this.heatWaveAlert,
      this.frostAlert,
      this.dayInSeason,
      this.stageNumber,
      this.stageName,
      this.kc,
      this.refillPoint});

  factory _$_Day.fromJson(Map<String, dynamic> json) => _$$_DayFromJson(json);

  @override
  final String dateInSeason;
  @override
  final num? recommandationDepth;
  @override
  final num? recommandationVolume;
  @override
  final String? recommandationTime;
  @override
  final num? rain;
  @override
  final num? et;
  @override
  final bool? heatWaveAlert;
  @override
  final bool? frostAlert;
  @override
  final num? dayInSeason;
  @override
  final num? stageNumber;
  @override
  final String? stageName;
  @override
  final num? kc;
  @override
  final num? refillPoint;

  @override
  String toString() {
    return 'Day(dateInSeason: $dateInSeason, recommandationDepth: $recommandationDepth, recommandationVolume: $recommandationVolume, recommandationTime: $recommandationTime, rain: $rain, et: $et, heatWaveAlert: $heatWaveAlert, frostAlert: $frostAlert, dayInSeason: $dayInSeason, stageNumber: $stageNumber, stageName: $stageName, kc: $kc, refillPoint: $refillPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Day &&
            (identical(other.dateInSeason, dateInSeason) ||
                other.dateInSeason == dateInSeason) &&
            (identical(other.recommandationDepth, recommandationDepth) ||
                other.recommandationDepth == recommandationDepth) &&
            (identical(other.recommandationVolume, recommandationVolume) ||
                other.recommandationVolume == recommandationVolume) &&
            (identical(other.recommandationTime, recommandationTime) ||
                other.recommandationTime == recommandationTime) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.et, et) || other.et == et) &&
            (identical(other.heatWaveAlert, heatWaveAlert) ||
                other.heatWaveAlert == heatWaveAlert) &&
            (identical(other.frostAlert, frostAlert) ||
                other.frostAlert == frostAlert) &&
            (identical(other.dayInSeason, dayInSeason) ||
                other.dayInSeason == dayInSeason) &&
            (identical(other.stageNumber, stageNumber) ||
                other.stageNumber == stageNumber) &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.kc, kc) || other.kc == kc) &&
            (identical(other.refillPoint, refillPoint) ||
                other.refillPoint == refillPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateInSeason,
      recommandationDepth,
      recommandationVolume,
      recommandationTime,
      rain,
      et,
      heatWaveAlert,
      frostAlert,
      dayInSeason,
      stageNumber,
      stageName,
      kc,
      refillPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayCopyWith<_$_Day> get copyWith =>
      __$$_DayCopyWithImpl<_$_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {required final String dateInSeason,
      final num? recommandationDepth,
      final num? recommandationVolume,
      final String? recommandationTime,
      final num? rain,
      final num? et,
      final bool? heatWaveAlert,
      final bool? frostAlert,
      final num? dayInSeason,
      final num? stageNumber,
      final String? stageName,
      final num? kc,
      final num? refillPoint}) = _$_Day;

  factory _Day.fromJson(Map<String, dynamic> json) = _$_Day.fromJson;

  @override
  String get dateInSeason;
  @override
  num? get recommandationDepth;
  @override
  num? get recommandationVolume;
  @override
  String? get recommandationTime;
  @override
  num? get rain;
  @override
  num? get et;
  @override
  bool? get heatWaveAlert;
  @override
  bool? get frostAlert;
  @override
  num? get dayInSeason;
  @override
  num? get stageNumber;
  @override
  String? get stageName;
  @override
  num? get kc;
  @override
  num? get refillPoint;
  @override
  @JsonKey(ignore: true)
  _$$_DayCopyWith<_$_Day> get copyWith => throw _privateConstructorUsedError;
}

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
mixin _$Week {
  int? get weekNumber => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  num? get weeklyIrrigation => throw _privateConstructorUsedError;
  num? get weeklyRain => throw _privateConstructorUsedError;
  num? get totelEto => throw _privateConstructorUsedError;
  num? get dailyAvgEto => throw _privateConstructorUsedError;
  num? get totelEtc => throw _privateConstructorUsedError;
  num? get dailyAvgEtc => throw _privateConstructorUsedError;
  num? get kc => throw _privateConstructorUsedError;
  num? get nutN => throw _privateConstructorUsedError;
  num? get nutP => throw _privateConstructorUsedError;
  num? get nutK => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res, Week>;
  @useResult
  $Res call(
      {int? weekNumber,
      String startDate,
      String endDate,
      num? weeklyIrrigation,
      num? weeklyRain,
      num? totelEto,
      num? dailyAvgEto,
      num? totelEtc,
      num? dailyAvgEtc,
      num? kc,
      num? nutN,
      num? nutP,
      num? nutK});
}

/// @nodoc
class _$WeekCopyWithImpl<$Res, $Val extends Week>
    implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? weeklyIrrigation = freezed,
    Object? weeklyRain = freezed,
    Object? totelEto = freezed,
    Object? dailyAvgEto = freezed,
    Object? totelEtc = freezed,
    Object? dailyAvgEtc = freezed,
    Object? kc = freezed,
    Object? nutN = freezed,
    Object? nutP = freezed,
    Object? nutK = freezed,
  }) {
    return _then(_value.copyWith(
      weekNumber: freezed == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      weeklyIrrigation: freezed == weeklyIrrigation
          ? _value.weeklyIrrigation
          : weeklyIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      weeklyRain: freezed == weeklyRain
          ? _value.weeklyRain
          : weeklyRain // ignore: cast_nullable_to_non_nullable
              as num?,
      totelEto: freezed == totelEto
          ? _value.totelEto
          : totelEto // ignore: cast_nullable_to_non_nullable
              as num?,
      dailyAvgEto: freezed == dailyAvgEto
          ? _value.dailyAvgEto
          : dailyAvgEto // ignore: cast_nullable_to_non_nullable
              as num?,
      totelEtc: freezed == totelEtc
          ? _value.totelEtc
          : totelEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      dailyAvgEtc: freezed == dailyAvgEtc
          ? _value.dailyAvgEtc
          : dailyAvgEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      kc: freezed == kc
          ? _value.kc
          : kc // ignore: cast_nullable_to_non_nullable
              as num?,
      nutN: freezed == nutN
          ? _value.nutN
          : nutN // ignore: cast_nullable_to_non_nullable
              as num?,
      nutP: freezed == nutP
          ? _value.nutP
          : nutP // ignore: cast_nullable_to_non_nullable
              as num?,
      nutK: freezed == nutK
          ? _value.nutK
          : nutK // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$_WeekCopyWith(_$_Week value, $Res Function(_$_Week) then) =
      __$$_WeekCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? weekNumber,
      String startDate,
      String endDate,
      num? weeklyIrrigation,
      num? weeklyRain,
      num? totelEto,
      num? dailyAvgEto,
      num? totelEtc,
      num? dailyAvgEtc,
      num? kc,
      num? nutN,
      num? nutP,
      num? nutK});
}

/// @nodoc
class __$$_WeekCopyWithImpl<$Res> extends _$WeekCopyWithImpl<$Res, _$_Week>
    implements _$$_WeekCopyWith<$Res> {
  __$$_WeekCopyWithImpl(_$_Week _value, $Res Function(_$_Week) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekNumber = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? weeklyIrrigation = freezed,
    Object? weeklyRain = freezed,
    Object? totelEto = freezed,
    Object? dailyAvgEto = freezed,
    Object? totelEtc = freezed,
    Object? dailyAvgEtc = freezed,
    Object? kc = freezed,
    Object? nutN = freezed,
    Object? nutP = freezed,
    Object? nutK = freezed,
  }) {
    return _then(_$_Week(
      weekNumber: freezed == weekNumber
          ? _value.weekNumber
          : weekNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      weeklyIrrigation: freezed == weeklyIrrigation
          ? _value.weeklyIrrigation
          : weeklyIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      weeklyRain: freezed == weeklyRain
          ? _value.weeklyRain
          : weeklyRain // ignore: cast_nullable_to_non_nullable
              as num?,
      totelEto: freezed == totelEto
          ? _value.totelEto
          : totelEto // ignore: cast_nullable_to_non_nullable
              as num?,
      dailyAvgEto: freezed == dailyAvgEto
          ? _value.dailyAvgEto
          : dailyAvgEto // ignore: cast_nullable_to_non_nullable
              as num?,
      totelEtc: freezed == totelEtc
          ? _value.totelEtc
          : totelEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      dailyAvgEtc: freezed == dailyAvgEtc
          ? _value.dailyAvgEtc
          : dailyAvgEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      kc: freezed == kc
          ? _value.kc
          : kc // ignore: cast_nullable_to_non_nullable
              as num?,
      nutN: freezed == nutN
          ? _value.nutN
          : nutN // ignore: cast_nullable_to_non_nullable
              as num?,
      nutP: freezed == nutP
          ? _value.nutP
          : nutP // ignore: cast_nullable_to_non_nullable
              as num?,
      nutK: freezed == nutK
          ? _value.nutK
          : nutK // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Week implements _Week {
  const _$_Week(
      {this.weekNumber,
      required this.startDate,
      required this.endDate,
      this.weeklyIrrigation,
      this.weeklyRain,
      this.totelEto,
      this.dailyAvgEto,
      this.totelEtc,
      this.dailyAvgEtc,
      this.kc,
      this.nutN,
      this.nutP,
      this.nutK});

  factory _$_Week.fromJson(Map<String, dynamic> json) => _$$_WeekFromJson(json);

  @override
  final int? weekNumber;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final num? weeklyIrrigation;
  @override
  final num? weeklyRain;
  @override
  final num? totelEto;
  @override
  final num? dailyAvgEto;
  @override
  final num? totelEtc;
  @override
  final num? dailyAvgEtc;
  @override
  final num? kc;
  @override
  final num? nutN;
  @override
  final num? nutP;
  @override
  final num? nutK;

  @override
  String toString() {
    return 'Week(weekNumber: $weekNumber, startDate: $startDate, endDate: $endDate, weeklyIrrigation: $weeklyIrrigation, weeklyRain: $weeklyRain, totelEto: $totelEto, dailyAvgEto: $dailyAvgEto, totelEtc: $totelEtc, dailyAvgEtc: $dailyAvgEtc, kc: $kc, nutN: $nutN, nutP: $nutP, nutK: $nutK)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Week &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.weeklyIrrigation, weeklyIrrigation) ||
                other.weeklyIrrigation == weeklyIrrigation) &&
            (identical(other.weeklyRain, weeklyRain) ||
                other.weeklyRain == weeklyRain) &&
            (identical(other.totelEto, totelEto) ||
                other.totelEto == totelEto) &&
            (identical(other.dailyAvgEto, dailyAvgEto) ||
                other.dailyAvgEto == dailyAvgEto) &&
            (identical(other.totelEtc, totelEtc) ||
                other.totelEtc == totelEtc) &&
            (identical(other.dailyAvgEtc, dailyAvgEtc) ||
                other.dailyAvgEtc == dailyAvgEtc) &&
            (identical(other.kc, kc) || other.kc == kc) &&
            (identical(other.nutN, nutN) || other.nutN == nutN) &&
            (identical(other.nutP, nutP) || other.nutP == nutP) &&
            (identical(other.nutK, nutK) || other.nutK == nutK));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weekNumber,
      startDate,
      endDate,
      weeklyIrrigation,
      weeklyRain,
      totelEto,
      dailyAvgEto,
      totelEtc,
      dailyAvgEtc,
      kc,
      nutN,
      nutP,
      nutK);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekCopyWith<_$_Week> get copyWith =>
      __$$_WeekCopyWithImpl<_$_Week>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekToJson(
      this,
    );
  }
}

abstract class _Week implements Week {
  const factory _Week(
      {final int? weekNumber,
      required final String startDate,
      required final String endDate,
      final num? weeklyIrrigation,
      final num? weeklyRain,
      final num? totelEto,
      final num? dailyAvgEto,
      final num? totelEtc,
      final num? dailyAvgEtc,
      final num? kc,
      final num? nutN,
      final num? nutP,
      final num? nutK}) = _$_Week;

  factory _Week.fromJson(Map<String, dynamic> json) = _$_Week.fromJson;

  @override
  int? get weekNumber;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  num? get weeklyIrrigation;
  @override
  num? get weeklyRain;
  @override
  num? get totelEto;
  @override
  num? get dailyAvgEto;
  @override
  num? get totelEtc;
  @override
  num? get dailyAvgEtc;
  @override
  num? get kc;
  @override
  num? get nutN;
  @override
  num? get nutP;
  @override
  num? get nutK;
  @override
  @JsonKey(ignore: true)
  _$$_WeekCopyWith<_$_Week> get copyWith => throw _privateConstructorUsedError;
}

Protocol _$ProtocolFromJson(Map<String, dynamic> json) {
  return _Protocol.fromJson(json);
}

/// @nodoc
mixin _$Protocol {
  String get name => throw _privateConstructorUsedError;
  String? get seasonStatus => throw _privateConstructorUsedError;
  String? get protocolStrategy => throw _privateConstructorUsedError;
  String? get irrigationStrategy => throw _privateConstructorUsedError;
  String? get seasonStartDate => throw _privateConstructorUsedError;
  String? get seasonEndDate => throw _privateConstructorUsedError;
  int? get durationInDays => throw _privateConstructorUsedError;
  int? get dayInSeason => throw _privateConstructorUsedError;
  String? get currentStageName => throw _privateConstructorUsedError;
  String? get nextStageName => throw _privateConstructorUsedError;
  int? get daysToNextStage => throw _privateConstructorUsedError;
  String? get stageImg => throw _privateConstructorUsedError;
  List<String> get allowedIrrigationDays => throw _privateConstructorUsedError;
  List<String> get irrigationDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProtocolCopyWith<Protocol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtocolCopyWith<$Res> {
  factory $ProtocolCopyWith(Protocol value, $Res Function(Protocol) then) =
      _$ProtocolCopyWithImpl<$Res, Protocol>;
  @useResult
  $Res call(
      {String name,
      String? seasonStatus,
      String? protocolStrategy,
      String? irrigationStrategy,
      String? seasonStartDate,
      String? seasonEndDate,
      int? durationInDays,
      int? dayInSeason,
      String? currentStageName,
      String? nextStageName,
      int? daysToNextStage,
      String? stageImg,
      List<String> allowedIrrigationDays,
      List<String> irrigationDays});
}

/// @nodoc
class _$ProtocolCopyWithImpl<$Res, $Val extends Protocol>
    implements $ProtocolCopyWith<$Res> {
  _$ProtocolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? seasonStatus = freezed,
    Object? protocolStrategy = freezed,
    Object? irrigationStrategy = freezed,
    Object? seasonStartDate = freezed,
    Object? seasonEndDate = freezed,
    Object? durationInDays = freezed,
    Object? dayInSeason = freezed,
    Object? currentStageName = freezed,
    Object? nextStageName = freezed,
    Object? daysToNextStage = freezed,
    Object? stageImg = freezed,
    Object? allowedIrrigationDays = null,
    Object? irrigationDays = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seasonStatus: freezed == seasonStatus
          ? _value.seasonStatus
          : seasonStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      protocolStrategy: freezed == protocolStrategy
          ? _value.protocolStrategy
          : protocolStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      irrigationStrategy: freezed == irrigationStrategy
          ? _value.irrigationStrategy
          : irrigationStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonStartDate: freezed == seasonStartDate
          ? _value.seasonStartDate
          : seasonStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonEndDate: freezed == seasonEndDate
          ? _value.seasonEndDate
          : seasonEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInDays: freezed == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      dayInSeason: freezed == dayInSeason
          ? _value.dayInSeason
          : dayInSeason // ignore: cast_nullable_to_non_nullable
              as int?,
      currentStageName: freezed == currentStageName
          ? _value.currentStageName
          : currentStageName // ignore: cast_nullable_to_non_nullable
              as String?,
      nextStageName: freezed == nextStageName
          ? _value.nextStageName
          : nextStageName // ignore: cast_nullable_to_non_nullable
              as String?,
      daysToNextStage: freezed == daysToNextStage
          ? _value.daysToNextStage
          : daysToNextStage // ignore: cast_nullable_to_non_nullable
              as int?,
      stageImg: freezed == stageImg
          ? _value.stageImg
          : stageImg // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedIrrigationDays: null == allowedIrrigationDays
          ? _value.allowedIrrigationDays
          : allowedIrrigationDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      irrigationDays: null == irrigationDays
          ? _value.irrigationDays
          : irrigationDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProtocolCopyWith<$Res> implements $ProtocolCopyWith<$Res> {
  factory _$$_ProtocolCopyWith(
          _$_Protocol value, $Res Function(_$_Protocol) then) =
      __$$_ProtocolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? seasonStatus,
      String? protocolStrategy,
      String? irrigationStrategy,
      String? seasonStartDate,
      String? seasonEndDate,
      int? durationInDays,
      int? dayInSeason,
      String? currentStageName,
      String? nextStageName,
      int? daysToNextStage,
      String? stageImg,
      List<String> allowedIrrigationDays,
      List<String> irrigationDays});
}

/// @nodoc
class __$$_ProtocolCopyWithImpl<$Res>
    extends _$ProtocolCopyWithImpl<$Res, _$_Protocol>
    implements _$$_ProtocolCopyWith<$Res> {
  __$$_ProtocolCopyWithImpl(
      _$_Protocol _value, $Res Function(_$_Protocol) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? seasonStatus = freezed,
    Object? protocolStrategy = freezed,
    Object? irrigationStrategy = freezed,
    Object? seasonStartDate = freezed,
    Object? seasonEndDate = freezed,
    Object? durationInDays = freezed,
    Object? dayInSeason = freezed,
    Object? currentStageName = freezed,
    Object? nextStageName = freezed,
    Object? daysToNextStage = freezed,
    Object? stageImg = freezed,
    Object? allowedIrrigationDays = null,
    Object? irrigationDays = null,
  }) {
    return _then(_$_Protocol(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      seasonStatus: freezed == seasonStatus
          ? _value.seasonStatus
          : seasonStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      protocolStrategy: freezed == protocolStrategy
          ? _value.protocolStrategy
          : protocolStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      irrigationStrategy: freezed == irrigationStrategy
          ? _value.irrigationStrategy
          : irrigationStrategy // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonStartDate: freezed == seasonStartDate
          ? _value.seasonStartDate
          : seasonStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonEndDate: freezed == seasonEndDate
          ? _value.seasonEndDate
          : seasonEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      durationInDays: freezed == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as int?,
      dayInSeason: freezed == dayInSeason
          ? _value.dayInSeason
          : dayInSeason // ignore: cast_nullable_to_non_nullable
              as int?,
      currentStageName: freezed == currentStageName
          ? _value.currentStageName
          : currentStageName // ignore: cast_nullable_to_non_nullable
              as String?,
      nextStageName: freezed == nextStageName
          ? _value.nextStageName
          : nextStageName // ignore: cast_nullable_to_non_nullable
              as String?,
      daysToNextStage: freezed == daysToNextStage
          ? _value.daysToNextStage
          : daysToNextStage // ignore: cast_nullable_to_non_nullable
              as int?,
      stageImg: freezed == stageImg
          ? _value.stageImg
          : stageImg // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedIrrigationDays: null == allowedIrrigationDays
          ? _value._allowedIrrigationDays
          : allowedIrrigationDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      irrigationDays: null == irrigationDays
          ? _value._irrigationDays
          : irrigationDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Protocol implements _Protocol {
  const _$_Protocol(
      {required this.name,
      this.seasonStatus,
      this.protocolStrategy,
      this.irrigationStrategy,
      this.seasonStartDate,
      this.seasonEndDate,
      this.durationInDays,
      this.dayInSeason,
      this.currentStageName,
      this.nextStageName,
      this.daysToNextStage,
      this.stageImg,
      final List<String> allowedIrrigationDays = const [],
      final List<String> irrigationDays = const []})
      : _allowedIrrigationDays = allowedIrrigationDays,
        _irrigationDays = irrigationDays;

  factory _$_Protocol.fromJson(Map<String, dynamic> json) =>
      _$$_ProtocolFromJson(json);

  @override
  final String name;
  @override
  final String? seasonStatus;
  @override
  final String? protocolStrategy;
  @override
  final String? irrigationStrategy;
  @override
  final String? seasonStartDate;
  @override
  final String? seasonEndDate;
  @override
  final int? durationInDays;
  @override
  final int? dayInSeason;
  @override
  final String? currentStageName;
  @override
  final String? nextStageName;
  @override
  final int? daysToNextStage;
  @override
  final String? stageImg;
  final List<String> _allowedIrrigationDays;
  @override
  @JsonKey()
  List<String> get allowedIrrigationDays {
    if (_allowedIrrigationDays is EqualUnmodifiableListView)
      return _allowedIrrigationDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedIrrigationDays);
  }

  final List<String> _irrigationDays;
  @override
  @JsonKey()
  List<String> get irrigationDays {
    if (_irrigationDays is EqualUnmodifiableListView) return _irrigationDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_irrigationDays);
  }

  @override
  String toString() {
    return 'Protocol(name: $name, seasonStatus: $seasonStatus, protocolStrategy: $protocolStrategy, irrigationStrategy: $irrigationStrategy, seasonStartDate: $seasonStartDate, seasonEndDate: $seasonEndDate, durationInDays: $durationInDays, dayInSeason: $dayInSeason, currentStageName: $currentStageName, nextStageName: $nextStageName, daysToNextStage: $daysToNextStage, stageImg: $stageImg, allowedIrrigationDays: $allowedIrrigationDays, irrigationDays: $irrigationDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Protocol &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.seasonStatus, seasonStatus) ||
                other.seasonStatus == seasonStatus) &&
            (identical(other.protocolStrategy, protocolStrategy) ||
                other.protocolStrategy == protocolStrategy) &&
            (identical(other.irrigationStrategy, irrigationStrategy) ||
                other.irrigationStrategy == irrigationStrategy) &&
            (identical(other.seasonStartDate, seasonStartDate) ||
                other.seasonStartDate == seasonStartDate) &&
            (identical(other.seasonEndDate, seasonEndDate) ||
                other.seasonEndDate == seasonEndDate) &&
            (identical(other.durationInDays, durationInDays) ||
                other.durationInDays == durationInDays) &&
            (identical(other.dayInSeason, dayInSeason) ||
                other.dayInSeason == dayInSeason) &&
            (identical(other.currentStageName, currentStageName) ||
                other.currentStageName == currentStageName) &&
            (identical(other.nextStageName, nextStageName) ||
                other.nextStageName == nextStageName) &&
            (identical(other.daysToNextStage, daysToNextStage) ||
                other.daysToNextStage == daysToNextStage) &&
            (identical(other.stageImg, stageImg) ||
                other.stageImg == stageImg) &&
            const DeepCollectionEquality()
                .equals(other._allowedIrrigationDays, _allowedIrrigationDays) &&
            const DeepCollectionEquality()
                .equals(other._irrigationDays, _irrigationDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      seasonStatus,
      protocolStrategy,
      irrigationStrategy,
      seasonStartDate,
      seasonEndDate,
      durationInDays,
      dayInSeason,
      currentStageName,
      nextStageName,
      daysToNextStage,
      stageImg,
      const DeepCollectionEquality().hash(_allowedIrrigationDays),
      const DeepCollectionEquality().hash(_irrigationDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProtocolCopyWith<_$_Protocol> get copyWith =>
      __$$_ProtocolCopyWithImpl<_$_Protocol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProtocolToJson(
      this,
    );
  }
}

abstract class _Protocol implements Protocol {
  const factory _Protocol(
      {required final String name,
      final String? seasonStatus,
      final String? protocolStrategy,
      final String? irrigationStrategy,
      final String? seasonStartDate,
      final String? seasonEndDate,
      final int? durationInDays,
      final int? dayInSeason,
      final String? currentStageName,
      final String? nextStageName,
      final int? daysToNextStage,
      final String? stageImg,
      final List<String> allowedIrrigationDays,
      final List<String> irrigationDays}) = _$_Protocol;

  factory _Protocol.fromJson(Map<String, dynamic> json) = _$_Protocol.fromJson;

  @override
  String get name;
  @override
  String? get seasonStatus;
  @override
  String? get protocolStrategy;
  @override
  String? get irrigationStrategy;
  @override
  String? get seasonStartDate;
  @override
  String? get seasonEndDate;
  @override
  int? get durationInDays;
  @override
  int? get dayInSeason;
  @override
  String? get currentStageName;
  @override
  String? get nextStageName;
  @override
  int? get daysToNextStage;
  @override
  String? get stageImg;
  @override
  List<String> get allowedIrrigationDays;
  @override
  List<String> get irrigationDays;
  @override
  @JsonKey(ignore: true)
  _$$_ProtocolCopyWith<_$_Protocol> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalToDate _$TotalToDateFromJson(Map<String, dynamic> json) {
  return _TotalToDate.fromJson(json);
}

/// @nodoc
mixin _$TotalToDate {
  num? get actualIrrigation => throw _privateConstructorUsedError;
  num? get totalIrrigation => throw _privateConstructorUsedError;
  num? get actualRain => throw _privateConstructorUsedError;
  num? get actualEto => throw _privateConstructorUsedError;
  num? get actualEtc => throw _privateConstructorUsedError;
  num? get actualNutN => throw _privateConstructorUsedError;
  num? get actualNutP => throw _privateConstructorUsedError;
  num? get actualNutK => throw _privateConstructorUsedError;
  num? get totalNutN => throw _privateConstructorUsedError;
  num? get totalNutP => throw _privateConstructorUsedError;
  num? get totalNutK => throw _privateConstructorUsedError;
  bool? get tissueSample => throw _privateConstructorUsedError;
  bool? get soilSample => throw _privateConstructorUsedError;
  bool? get waterSample => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalToDateCopyWith<TotalToDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalToDateCopyWith<$Res> {
  factory $TotalToDateCopyWith(
          TotalToDate value, $Res Function(TotalToDate) then) =
      _$TotalToDateCopyWithImpl<$Res, TotalToDate>;
  @useResult
  $Res call(
      {num? actualIrrigation,
      num? totalIrrigation,
      num? actualRain,
      num? actualEto,
      num? actualEtc,
      num? actualNutN,
      num? actualNutP,
      num? actualNutK,
      num? totalNutN,
      num? totalNutP,
      num? totalNutK,
      bool? tissueSample,
      bool? soilSample,
      bool? waterSample});
}

/// @nodoc
class _$TotalToDateCopyWithImpl<$Res, $Val extends TotalToDate>
    implements $TotalToDateCopyWith<$Res> {
  _$TotalToDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualIrrigation = freezed,
    Object? totalIrrigation = freezed,
    Object? actualRain = freezed,
    Object? actualEto = freezed,
    Object? actualEtc = freezed,
    Object? actualNutN = freezed,
    Object? actualNutP = freezed,
    Object? actualNutK = freezed,
    Object? totalNutN = freezed,
    Object? totalNutP = freezed,
    Object? totalNutK = freezed,
    Object? tissueSample = freezed,
    Object? soilSample = freezed,
    Object? waterSample = freezed,
  }) {
    return _then(_value.copyWith(
      actualIrrigation: freezed == actualIrrigation
          ? _value.actualIrrigation
          : actualIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      totalIrrigation: freezed == totalIrrigation
          ? _value.totalIrrigation
          : totalIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      actualRain: freezed == actualRain
          ? _value.actualRain
          : actualRain // ignore: cast_nullable_to_non_nullable
              as num?,
      actualEto: freezed == actualEto
          ? _value.actualEto
          : actualEto // ignore: cast_nullable_to_non_nullable
              as num?,
      actualEtc: freezed == actualEtc
          ? _value.actualEtc
          : actualEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutN: freezed == actualNutN
          ? _value.actualNutN
          : actualNutN // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutP: freezed == actualNutP
          ? _value.actualNutP
          : actualNutP // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutK: freezed == actualNutK
          ? _value.actualNutK
          : actualNutK // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutN: freezed == totalNutN
          ? _value.totalNutN
          : totalNutN // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutP: freezed == totalNutP
          ? _value.totalNutP
          : totalNutP // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutK: freezed == totalNutK
          ? _value.totalNutK
          : totalNutK // ignore: cast_nullable_to_non_nullable
              as num?,
      tissueSample: freezed == tissueSample
          ? _value.tissueSample
          : tissueSample // ignore: cast_nullable_to_non_nullable
              as bool?,
      soilSample: freezed == soilSample
          ? _value.soilSample
          : soilSample // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterSample: freezed == waterSample
          ? _value.waterSample
          : waterSample // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalToDateCopyWith<$Res>
    implements $TotalToDateCopyWith<$Res> {
  factory _$$_TotalToDateCopyWith(
          _$_TotalToDate value, $Res Function(_$_TotalToDate) then) =
      __$$_TotalToDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? actualIrrigation,
      num? totalIrrigation,
      num? actualRain,
      num? actualEto,
      num? actualEtc,
      num? actualNutN,
      num? actualNutP,
      num? actualNutK,
      num? totalNutN,
      num? totalNutP,
      num? totalNutK,
      bool? tissueSample,
      bool? soilSample,
      bool? waterSample});
}

/// @nodoc
class __$$_TotalToDateCopyWithImpl<$Res>
    extends _$TotalToDateCopyWithImpl<$Res, _$_TotalToDate>
    implements _$$_TotalToDateCopyWith<$Res> {
  __$$_TotalToDateCopyWithImpl(
      _$_TotalToDate _value, $Res Function(_$_TotalToDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualIrrigation = freezed,
    Object? totalIrrigation = freezed,
    Object? actualRain = freezed,
    Object? actualEto = freezed,
    Object? actualEtc = freezed,
    Object? actualNutN = freezed,
    Object? actualNutP = freezed,
    Object? actualNutK = freezed,
    Object? totalNutN = freezed,
    Object? totalNutP = freezed,
    Object? totalNutK = freezed,
    Object? tissueSample = freezed,
    Object? soilSample = freezed,
    Object? waterSample = freezed,
  }) {
    return _then(_$_TotalToDate(
      actualIrrigation: freezed == actualIrrigation
          ? _value.actualIrrigation
          : actualIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      totalIrrigation: freezed == totalIrrigation
          ? _value.totalIrrigation
          : totalIrrigation // ignore: cast_nullable_to_non_nullable
              as num?,
      actualRain: freezed == actualRain
          ? _value.actualRain
          : actualRain // ignore: cast_nullable_to_non_nullable
              as num?,
      actualEto: freezed == actualEto
          ? _value.actualEto
          : actualEto // ignore: cast_nullable_to_non_nullable
              as num?,
      actualEtc: freezed == actualEtc
          ? _value.actualEtc
          : actualEtc // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutN: freezed == actualNutN
          ? _value.actualNutN
          : actualNutN // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutP: freezed == actualNutP
          ? _value.actualNutP
          : actualNutP // ignore: cast_nullable_to_non_nullable
              as num?,
      actualNutK: freezed == actualNutK
          ? _value.actualNutK
          : actualNutK // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutN: freezed == totalNutN
          ? _value.totalNutN
          : totalNutN // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutP: freezed == totalNutP
          ? _value.totalNutP
          : totalNutP // ignore: cast_nullable_to_non_nullable
              as num?,
      totalNutK: freezed == totalNutK
          ? _value.totalNutK
          : totalNutK // ignore: cast_nullable_to_non_nullable
              as num?,
      tissueSample: freezed == tissueSample
          ? _value.tissueSample
          : tissueSample // ignore: cast_nullable_to_non_nullable
              as bool?,
      soilSample: freezed == soilSample
          ? _value.soilSample
          : soilSample // ignore: cast_nullable_to_non_nullable
              as bool?,
      waterSample: freezed == waterSample
          ? _value.waterSample
          : waterSample // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TotalToDate implements _TotalToDate {
  const _$_TotalToDate(
      {this.actualIrrigation,
      this.totalIrrigation,
      this.actualRain,
      this.actualEto,
      this.actualEtc,
      this.actualNutN,
      this.actualNutP,
      this.actualNutK,
      this.totalNutN,
      this.totalNutP,
      this.totalNutK,
      this.tissueSample,
      this.soilSample,
      this.waterSample});

  factory _$_TotalToDate.fromJson(Map<String, dynamic> json) =>
      _$$_TotalToDateFromJson(json);

  @override
  final num? actualIrrigation;
  @override
  final num? totalIrrigation;
  @override
  final num? actualRain;
  @override
  final num? actualEto;
  @override
  final num? actualEtc;
  @override
  final num? actualNutN;
  @override
  final num? actualNutP;
  @override
  final num? actualNutK;
  @override
  final num? totalNutN;
  @override
  final num? totalNutP;
  @override
  final num? totalNutK;
  @override
  final bool? tissueSample;
  @override
  final bool? soilSample;
  @override
  final bool? waterSample;

  @override
  String toString() {
    return 'TotalToDate(actualIrrigation: $actualIrrigation, totalIrrigation: $totalIrrigation, actualRain: $actualRain, actualEto: $actualEto, actualEtc: $actualEtc, actualNutN: $actualNutN, actualNutP: $actualNutP, actualNutK: $actualNutK, totalNutN: $totalNutN, totalNutP: $totalNutP, totalNutK: $totalNutK, tissueSample: $tissueSample, soilSample: $soilSample, waterSample: $waterSample)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalToDate &&
            (identical(other.actualIrrigation, actualIrrigation) ||
                other.actualIrrigation == actualIrrigation) &&
            (identical(other.totalIrrigation, totalIrrigation) ||
                other.totalIrrigation == totalIrrigation) &&
            (identical(other.actualRain, actualRain) ||
                other.actualRain == actualRain) &&
            (identical(other.actualEto, actualEto) ||
                other.actualEto == actualEto) &&
            (identical(other.actualEtc, actualEtc) ||
                other.actualEtc == actualEtc) &&
            (identical(other.actualNutN, actualNutN) ||
                other.actualNutN == actualNutN) &&
            (identical(other.actualNutP, actualNutP) ||
                other.actualNutP == actualNutP) &&
            (identical(other.actualNutK, actualNutK) ||
                other.actualNutK == actualNutK) &&
            (identical(other.totalNutN, totalNutN) ||
                other.totalNutN == totalNutN) &&
            (identical(other.totalNutP, totalNutP) ||
                other.totalNutP == totalNutP) &&
            (identical(other.totalNutK, totalNutK) ||
                other.totalNutK == totalNutK) &&
            (identical(other.tissueSample, tissueSample) ||
                other.tissueSample == tissueSample) &&
            (identical(other.soilSample, soilSample) ||
                other.soilSample == soilSample) &&
            (identical(other.waterSample, waterSample) ||
                other.waterSample == waterSample));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      actualIrrigation,
      totalIrrigation,
      actualRain,
      actualEto,
      actualEtc,
      actualNutN,
      actualNutP,
      actualNutK,
      totalNutN,
      totalNutP,
      totalNutK,
      tissueSample,
      soilSample,
      waterSample);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalToDateCopyWith<_$_TotalToDate> get copyWith =>
      __$$_TotalToDateCopyWithImpl<_$_TotalToDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalToDateToJson(
      this,
    );
  }
}

abstract class _TotalToDate implements TotalToDate {
  const factory _TotalToDate(
      {final num? actualIrrigation,
      final num? totalIrrigation,
      final num? actualRain,
      final num? actualEto,
      final num? actualEtc,
      final num? actualNutN,
      final num? actualNutP,
      final num? actualNutK,
      final num? totalNutN,
      final num? totalNutP,
      final num? totalNutK,
      final bool? tissueSample,
      final bool? soilSample,
      final bool? waterSample}) = _$_TotalToDate;

  factory _TotalToDate.fromJson(Map<String, dynamic> json) =
      _$_TotalToDate.fromJson;

  @override
  num? get actualIrrigation;
  @override
  num? get totalIrrigation;
  @override
  num? get actualRain;
  @override
  num? get actualEto;
  @override
  num? get actualEtc;
  @override
  num? get actualNutN;
  @override
  num? get actualNutP;
  @override
  num? get actualNutK;
  @override
  num? get totalNutN;
  @override
  num? get totalNutP;
  @override
  num? get totalNutK;
  @override
  bool? get tissueSample;
  @override
  bool? get soilSample;
  @override
  bool? get waterSample;
  @override
  @JsonKey(ignore: true)
  _$$_TotalToDateCopyWith<_$_TotalToDate> get copyWith =>
      throw _privateConstructorUsedError;
}

SeasonPlan _$SeasonPlanFromJson(Map<String, dynamic> json) {
  return _SeasonPlan.fromJson(json);
}

/// @nodoc
mixin _$SeasonPlan {
  List<Stage> get stages => throw _privateConstructorUsedError;
  List<Week> get weeks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonPlanCopyWith<SeasonPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonPlanCopyWith<$Res> {
  factory $SeasonPlanCopyWith(
          SeasonPlan value, $Res Function(SeasonPlan) then) =
      _$SeasonPlanCopyWithImpl<$Res, SeasonPlan>;
  @useResult
  $Res call({List<Stage> stages, List<Week> weeks});
}

/// @nodoc
class _$SeasonPlanCopyWithImpl<$Res, $Val extends SeasonPlan>
    implements $SeasonPlanCopyWith<$Res> {
  _$SeasonPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stages = null,
    Object? weeks = null,
  }) {
    return _then(_value.copyWith(
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      weeks: null == weeks
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<Week>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeasonPlanCopyWith<$Res>
    implements $SeasonPlanCopyWith<$Res> {
  factory _$$_SeasonPlanCopyWith(
          _$_SeasonPlan value, $Res Function(_$_SeasonPlan) then) =
      __$$_SeasonPlanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Stage> stages, List<Week> weeks});
}

/// @nodoc
class __$$_SeasonPlanCopyWithImpl<$Res>
    extends _$SeasonPlanCopyWithImpl<$Res, _$_SeasonPlan>
    implements _$$_SeasonPlanCopyWith<$Res> {
  __$$_SeasonPlanCopyWithImpl(
      _$_SeasonPlan _value, $Res Function(_$_SeasonPlan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stages = null,
    Object? weeks = null,
  }) {
    return _then(_$_SeasonPlan(
      stages: null == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<Stage>,
      weeks: null == weeks
          ? _value._weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as List<Week>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonPlan implements _SeasonPlan {
  const _$_SeasonPlan(
      {final List<Stage> stages = const [], final List<Week> weeks = const []})
      : _stages = stages,
        _weeks = weeks;

  factory _$_SeasonPlan.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonPlanFromJson(json);

  final List<Stage> _stages;
  @override
  @JsonKey()
  List<Stage> get stages {
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  final List<Week> _weeks;
  @override
  @JsonKey()
  List<Week> get weeks {
    if (_weeks is EqualUnmodifiableListView) return _weeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weeks);
  }

  @override
  String toString() {
    return 'SeasonPlan(stages: $stages, weeks: $weeks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonPlan &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            const DeepCollectionEquality().equals(other._weeks, _weeks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stages),
      const DeepCollectionEquality().hash(_weeks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonPlanCopyWith<_$_SeasonPlan> get copyWith =>
      __$$_SeasonPlanCopyWithImpl<_$_SeasonPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonPlanToJson(
      this,
    );
  }
}

abstract class _SeasonPlan implements SeasonPlan {
  const factory _SeasonPlan(
      {final List<Stage> stages, final List<Week> weeks}) = _$_SeasonPlan;

  factory _SeasonPlan.fromJson(Map<String, dynamic> json) =
      _$_SeasonPlan.fromJson;

  @override
  List<Stage> get stages;
  @override
  List<Week> get weeks;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonPlanCopyWith<_$_SeasonPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

Stage _$StageFromJson(Map<String, dynamic> json) {
  return _Stage.fromJson(json);
}

/// @nodoc
mixin _$Stage {
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  num? get intervalInDays => throw _privateConstructorUsedError;
  num? get kcStart => throw _privateConstructorUsedError;
  num? get kcEnd => throw _privateConstructorUsedError;
  num? get durationInDays => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageCopyWith<Stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageCopyWith<$Res> {
  factory $StageCopyWith(Stage value, $Res Function(Stage) then) =
      _$StageCopyWithImpl<$Res, Stage>;
  @useResult
  $Res call(
      {String name,
      int number,
      String? image,
      String? startDate,
      String? endDate,
      num? intervalInDays,
      num? kcStart,
      num? kcEnd,
      num? durationInDays,
      num? amount});
}

/// @nodoc
class _$StageCopyWithImpl<$Res, $Val extends Stage>
    implements $StageCopyWith<$Res> {
  _$StageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? intervalInDays = freezed,
    Object? kcStart = freezed,
    Object? kcEnd = freezed,
    Object? durationInDays = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalInDays: freezed == intervalInDays
          ? _value.intervalInDays
          : intervalInDays // ignore: cast_nullable_to_non_nullable
              as num?,
      kcStart: freezed == kcStart
          ? _value.kcStart
          : kcStart // ignore: cast_nullable_to_non_nullable
              as num?,
      kcEnd: freezed == kcEnd
          ? _value.kcEnd
          : kcEnd // ignore: cast_nullable_to_non_nullable
              as num?,
      durationInDays: freezed == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StageCopyWith<$Res> implements $StageCopyWith<$Res> {
  factory _$$_StageCopyWith(_$_Stage value, $Res Function(_$_Stage) then) =
      __$$_StageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int number,
      String? image,
      String? startDate,
      String? endDate,
      num? intervalInDays,
      num? kcStart,
      num? kcEnd,
      num? durationInDays,
      num? amount});
}

/// @nodoc
class __$$_StageCopyWithImpl<$Res> extends _$StageCopyWithImpl<$Res, _$_Stage>
    implements _$$_StageCopyWith<$Res> {
  __$$_StageCopyWithImpl(_$_Stage _value, $Res Function(_$_Stage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? number = null,
    Object? image = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? intervalInDays = freezed,
    Object? kcStart = freezed,
    Object? kcEnd = freezed,
    Object? durationInDays = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Stage(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalInDays: freezed == intervalInDays
          ? _value.intervalInDays
          : intervalInDays // ignore: cast_nullable_to_non_nullable
              as num?,
      kcStart: freezed == kcStart
          ? _value.kcStart
          : kcStart // ignore: cast_nullable_to_non_nullable
              as num?,
      kcEnd: freezed == kcEnd
          ? _value.kcEnd
          : kcEnd // ignore: cast_nullable_to_non_nullable
              as num?,
      durationInDays: freezed == durationInDays
          ? _value.durationInDays
          : durationInDays // ignore: cast_nullable_to_non_nullable
              as num?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stage implements _Stage {
  const _$_Stage(
      {required this.name,
      required this.number,
      this.image,
      this.startDate,
      this.endDate,
      this.intervalInDays,
      this.kcStart,
      this.kcEnd,
      this.durationInDays,
      this.amount});

  factory _$_Stage.fromJson(Map<String, dynamic> json) =>
      _$$_StageFromJson(json);

  @override
  final String name;
  @override
  final int number;
  @override
  final String? image;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final num? intervalInDays;
  @override
  final num? kcStart;
  @override
  final num? kcEnd;
  @override
  final num? durationInDays;
  @override
  final num? amount;

  @override
  String toString() {
    return 'Stage(name: $name, number: $number, image: $image, startDate: $startDate, endDate: $endDate, intervalInDays: $intervalInDays, kcStart: $kcStart, kcEnd: $kcEnd, durationInDays: $durationInDays, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stage &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.intervalInDays, intervalInDays) ||
                other.intervalInDays == intervalInDays) &&
            (identical(other.kcStart, kcStart) || other.kcStart == kcStart) &&
            (identical(other.kcEnd, kcEnd) || other.kcEnd == kcEnd) &&
            (identical(other.durationInDays, durationInDays) ||
                other.durationInDays == durationInDays) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, number, image, startDate,
      endDate, intervalInDays, kcStart, kcEnd, durationInDays, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StageCopyWith<_$_Stage> get copyWith =>
      __$$_StageCopyWithImpl<_$_Stage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StageToJson(
      this,
    );
  }
}

abstract class _Stage implements Stage {
  const factory _Stage(
      {required final String name,
      required final int number,
      final String? image,
      final String? startDate,
      final String? endDate,
      final num? intervalInDays,
      final num? kcStart,
      final num? kcEnd,
      final num? durationInDays,
      final num? amount}) = _$_Stage;

  factory _Stage.fromJson(Map<String, dynamic> json) = _$_Stage.fromJson;

  @override
  String get name;
  @override
  int get number;
  @override
  String? get image;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  num? get intervalInDays;
  @override
  num? get kcStart;
  @override
  num? get kcEnd;
  @override
  num? get durationInDays;
  @override
  num? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_StageCopyWith<_$_Stage> get copyWith =>
      throw _privateConstructorUsedError;
}
