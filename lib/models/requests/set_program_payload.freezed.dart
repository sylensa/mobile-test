// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_program_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetProgramPayload _$SetProgramPayloadFromJson(Map<String, dynamic> json) {
  return _SetProgramPayload.fromJson(json);
}

/// @nodoc
mixin _$SetProgramPayload {
  String get programId => throw _privateConstructorUsedError;
  String get cropUnitId => throw _privateConstructorUsedError;
  String? get deviceUuid =>
      throw _privateConstructorUsedError; // required String unit, // "depth", "quantity", or "time"
// required String amount,
  String get valueType =>
      throw _privateConstructorUsedError; // "depth", "quantity", or "time"
  String get valuePerShift => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  List<ShiftPayload> get shifts =>
      throw _privateConstructorUsedError; // send all the shifts. set active true/false to activate/deactivate
  Map<String, List<int>> get dosingWeekDays =>
      throw _privateConstructorUsedError;
  Map<String, List<int>> get irrigationWeekDays =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetProgramPayloadCopyWith<SetProgramPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetProgramPayloadCopyWith<$Res> {
  factory $SetProgramPayloadCopyWith(
          SetProgramPayload value, $Res Function(SetProgramPayload) then) =
      _$SetProgramPayloadCopyWithImpl<$Res, SetProgramPayload>;
  @useResult
  $Res call(
      {String programId,
      String cropUnitId,
      String? deviceUuid,
      String valueType,
      String valuePerShift,
      String startTime,
      String? endDate,
      List<ShiftPayload> shifts,
      Map<String, List<int>> dosingWeekDays,
      Map<String, List<int>> irrigationWeekDays});
}

/// @nodoc
class _$SetProgramPayloadCopyWithImpl<$Res, $Val extends SetProgramPayload>
    implements $SetProgramPayloadCopyWith<$Res> {
  _$SetProgramPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? cropUnitId = null,
    Object? deviceUuid = freezed,
    Object? valueType = null,
    Object? valuePerShift = null,
    Object? startTime = null,
    Object? endDate = freezed,
    Object? shifts = null,
    Object? dosingWeekDays = null,
    Object? irrigationWeekDays = null,
  }) {
    return _then(_value.copyWith(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: freezed == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
      valuePerShift: null == valuePerShift
          ? _value.valuePerShift
          : valuePerShift // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shifts: null == shifts
          ? _value.shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<ShiftPayload>,
      dosingWeekDays: null == dosingWeekDays
          ? _value.dosingWeekDays
          : dosingWeekDays // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
      irrigationWeekDays: null == irrigationWeekDays
          ? _value.irrigationWeekDays
          : irrigationWeekDays // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetProgramPayloadCopyWith<$Res>
    implements $SetProgramPayloadCopyWith<$Res> {
  factory _$$_SetProgramPayloadCopyWith(_$_SetProgramPayload value,
          $Res Function(_$_SetProgramPayload) then) =
      __$$_SetProgramPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String programId,
      String cropUnitId,
      String? deviceUuid,
      String valueType,
      String valuePerShift,
      String startTime,
      String? endDate,
      List<ShiftPayload> shifts,
      Map<String, List<int>> dosingWeekDays,
      Map<String, List<int>> irrigationWeekDays});
}

/// @nodoc
class __$$_SetProgramPayloadCopyWithImpl<$Res>
    extends _$SetProgramPayloadCopyWithImpl<$Res, _$_SetProgramPayload>
    implements _$$_SetProgramPayloadCopyWith<$Res> {
  __$$_SetProgramPayloadCopyWithImpl(
      _$_SetProgramPayload _value, $Res Function(_$_SetProgramPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = null,
    Object? cropUnitId = null,
    Object? deviceUuid = freezed,
    Object? valueType = null,
    Object? valuePerShift = null,
    Object? startTime = null,
    Object? endDate = freezed,
    Object? shifts = null,
    Object? dosingWeekDays = null,
    Object? irrigationWeekDays = null,
  }) {
    return _then(_$_SetProgramPayload(
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String,
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: freezed == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String,
      valuePerShift: null == valuePerShift
          ? _value.valuePerShift
          : valuePerShift // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      shifts: null == shifts
          ? _value._shifts
          : shifts // ignore: cast_nullable_to_non_nullable
              as List<ShiftPayload>,
      dosingWeekDays: null == dosingWeekDays
          ? _value._dosingWeekDays
          : dosingWeekDays // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
      irrigationWeekDays: null == irrigationWeekDays
          ? _value._irrigationWeekDays
          : irrigationWeekDays // ignore: cast_nullable_to_non_nullable
              as Map<String, List<int>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetProgramPayload implements _SetProgramPayload {
  const _$_SetProgramPayload(
      {required this.programId,
      required this.cropUnitId,
      this.deviceUuid,
      required this.valueType,
      required this.valuePerShift,
      this.startTime = '00:00:00',
      this.endDate,
      final List<ShiftPayload> shifts = const [],
      final Map<String, List<int>> dosingWeekDays = const {},
      final Map<String, List<int>> irrigationWeekDays = const {}})
      : _shifts = shifts,
        _dosingWeekDays = dosingWeekDays,
        _irrigationWeekDays = irrigationWeekDays;

  factory _$_SetProgramPayload.fromJson(Map<String, dynamic> json) =>
      _$$_SetProgramPayloadFromJson(json);

  @override
  final String programId;
  @override
  final String cropUnitId;
  @override
  final String? deviceUuid;
// required String unit, // "depth", "quantity", or "time"
// required String amount,
  @override
  final String valueType;
// "depth", "quantity", or "time"
  @override
  final String valuePerShift;
  @override
  @JsonKey()
  final String startTime;
  @override
  final String? endDate;
  final List<ShiftPayload> _shifts;
  @override
  @JsonKey()
  List<ShiftPayload> get shifts {
    if (_shifts is EqualUnmodifiableListView) return _shifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shifts);
  }

// send all the shifts. set active true/false to activate/deactivate
  final Map<String, List<int>> _dosingWeekDays;
// send all the shifts. set active true/false to activate/deactivate
  @override
  @JsonKey()
  Map<String, List<int>> get dosingWeekDays {
    if (_dosingWeekDays is EqualUnmodifiableMapView) return _dosingWeekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dosingWeekDays);
  }

  final Map<String, List<int>> _irrigationWeekDays;
  @override
  @JsonKey()
  Map<String, List<int>> get irrigationWeekDays {
    if (_irrigationWeekDays is EqualUnmodifiableMapView)
      return _irrigationWeekDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_irrigationWeekDays);
  }

  @override
  String toString() {
    return 'SetProgramPayload(programId: $programId, cropUnitId: $cropUnitId, deviceUuid: $deviceUuid, valueType: $valueType, valuePerShift: $valuePerShift, startTime: $startTime, endDate: $endDate, shifts: $shifts, dosingWeekDays: $dosingWeekDays, irrigationWeekDays: $irrigationWeekDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetProgramPayload &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.valuePerShift, valuePerShift) ||
                other.valuePerShift == valuePerShift) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._shifts, _shifts) &&
            const DeepCollectionEquality()
                .equals(other._dosingWeekDays, _dosingWeekDays) &&
            const DeepCollectionEquality()
                .equals(other._irrigationWeekDays, _irrigationWeekDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      programId,
      cropUnitId,
      deviceUuid,
      valueType,
      valuePerShift,
      startTime,
      endDate,
      const DeepCollectionEquality().hash(_shifts),
      const DeepCollectionEquality().hash(_dosingWeekDays),
      const DeepCollectionEquality().hash(_irrigationWeekDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetProgramPayloadCopyWith<_$_SetProgramPayload> get copyWith =>
      __$$_SetProgramPayloadCopyWithImpl<_$_SetProgramPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetProgramPayloadToJson(
      this,
    );
  }
}

abstract class _SetProgramPayload implements SetProgramPayload {
  const factory _SetProgramPayload(
      {required final String programId,
      required final String cropUnitId,
      final String? deviceUuid,
      required final String valueType,
      required final String valuePerShift,
      final String startTime,
      final String? endDate,
      final List<ShiftPayload> shifts,
      final Map<String, List<int>> dosingWeekDays,
      final Map<String, List<int>> irrigationWeekDays}) = _$_SetProgramPayload;

  factory _SetProgramPayload.fromJson(Map<String, dynamic> json) =
      _$_SetProgramPayload.fromJson;

  @override
  String get programId;
  @override
  String get cropUnitId;
  @override
  String? get deviceUuid;
  @override // required String unit, // "depth", "quantity", or "time"
// required String amount,
  String get valueType;
  @override // "depth", "quantity", or "time"
  String get valuePerShift;
  @override
  String get startTime;
  @override
  String? get endDate;
  @override
  List<ShiftPayload> get shifts;
  @override // send all the shifts. set active true/false to activate/deactivate
  Map<String, List<int>> get dosingWeekDays;
  @override
  Map<String, List<int>> get irrigationWeekDays;
  @override
  @JsonKey(ignore: true)
  _$$_SetProgramPayloadCopyWith<_$_SetProgramPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

ShiftPayload _$ShiftPayloadFromJson(Map<String, dynamic> json) {
  return _ShiftPayload.fromJson(json);
}

/// @nodoc
mixin _$ShiftPayload {
  int get shiftId => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  int get factor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftPayloadCopyWith<ShiftPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftPayloadCopyWith<$Res> {
  factory $ShiftPayloadCopyWith(
          ShiftPayload value, $Res Function(ShiftPayload) then) =
      _$ShiftPayloadCopyWithImpl<$Res, ShiftPayload>;
  @useResult
  $Res call({int shiftId, bool active, int factor});
}

/// @nodoc
class _$ShiftPayloadCopyWithImpl<$Res, $Val extends ShiftPayload>
    implements $ShiftPayloadCopyWith<$Res> {
  _$ShiftPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = null,
    Object? active = null,
    Object? factor = null,
  }) {
    return _then(_value.copyWith(
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShiftPayloadCopyWith<$Res>
    implements $ShiftPayloadCopyWith<$Res> {
  factory _$$_ShiftPayloadCopyWith(
          _$_ShiftPayload value, $Res Function(_$_ShiftPayload) then) =
      __$$_ShiftPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int shiftId, bool active, int factor});
}

/// @nodoc
class __$$_ShiftPayloadCopyWithImpl<$Res>
    extends _$ShiftPayloadCopyWithImpl<$Res, _$_ShiftPayload>
    implements _$$_ShiftPayloadCopyWith<$Res> {
  __$$_ShiftPayloadCopyWithImpl(
      _$_ShiftPayload _value, $Res Function(_$_ShiftPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftId = null,
    Object? active = null,
    Object? factor = null,
  }) {
    return _then(_$_ShiftPayload(
      shiftId: null == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      factor: null == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftPayload implements _ShiftPayload {
  const _$_ShiftPayload(
      {required this.shiftId, required this.active, required this.factor});

  factory _$_ShiftPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftPayloadFromJson(json);

  @override
  final int shiftId;
  @override
  final bool active;
  @override
  final int factor;

  @override
  String toString() {
    return 'ShiftPayload(shiftId: $shiftId, active: $active, factor: $factor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftPayload &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.factor, factor) || other.factor == factor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shiftId, active, factor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftPayloadCopyWith<_$_ShiftPayload> get copyWith =>
      __$$_ShiftPayloadCopyWithImpl<_$_ShiftPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftPayloadToJson(
      this,
    );
  }
}

abstract class _ShiftPayload implements ShiftPayload {
  const factory _ShiftPayload(
      {required final int shiftId,
      required final bool active,
      required final int factor}) = _$_ShiftPayload;

  factory _ShiftPayload.fromJson(Map<String, dynamic> json) =
      _$_ShiftPayload.fromJson;

  @override
  int get shiftId;
  @override
  bool get active;
  @override
  int get factor;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftPayloadCopyWith<_$_ShiftPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
