// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Alarm _$AlarmFromJson(Map<String, dynamic> json) {
  return _Alarm.fromJson(json);
}

/// @nodoc
mixin _$Alarm {
  String get id => throw _privateConstructorUsedError;
  String get partitionKey => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  String get deviceUuid => throw _privateConstructorUsedError;
  String get thingId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get startTimestamp => throw _privateConstructorUsedError;
  String? get endTimestamp => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String get alarmType => throw _privateConstructorUsedError;
  String? get alertedDeviceName => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  int? get programId => throw _privateConstructorUsedError;
  String? get programUuid => throw _privateConstructorUsedError;
  String? get programName => throw _privateConstructorUsedError;
  int? get shiftId => throw _privateConstructorUsedError;
  String get createdTimestamp => throw _privateConstructorUsedError;
  String? get updatedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmCopyWith<Alarm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmCopyWith<$Res> {
  factory $AlarmCopyWith(Alarm value, $Res Function(Alarm) then) =
      _$AlarmCopyWithImpl<$Res, Alarm>;
  @useResult
  $Res call(
      {String id,
      String partitionKey,
      String farmId,
      String deviceUuid,
      String thingId,
      bool isActive,
      String status,
      String? startTimestamp,
      String? endTimestamp,
      String severity,
      String alarmType,
      String? alertedDeviceName,
      String? source,
      int? programId,
      String? programUuid,
      String? programName,
      int? shiftId,
      String createdTimestamp,
      String? updatedTimestamp});
}

/// @nodoc
class _$AlarmCopyWithImpl<$Res, $Val extends Alarm>
    implements $AlarmCopyWith<$Res> {
  _$AlarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partitionKey = null,
    Object? farmId = null,
    Object? deviceUuid = null,
    Object? thingId = null,
    Object? isActive = null,
    Object? status = null,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? severity = null,
    Object? alarmType = null,
    Object? alertedDeviceName = freezed,
    Object? source = freezed,
    Object? programId = freezed,
    Object? programUuid = freezed,
    Object? programName = freezed,
    Object? shiftId = freezed,
    Object? createdTimestamp = null,
    Object? updatedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partitionKey: null == partitionKey
          ? _value.partitionKey
          : partitionKey // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      thingId: null == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      alarmType: null == alarmType
          ? _value.alarmType
          : alarmType // ignore: cast_nullable_to_non_nullable
              as String,
      alertedDeviceName: freezed == alertedDeviceName
          ? _value.alertedDeviceName
          : alertedDeviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      programUuid: freezed == programUuid
          ? _value.programUuid
          : programUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdTimestamp: null == createdTimestamp
          ? _value.createdTimestamp
          : createdTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      updatedTimestamp: freezed == updatedTimestamp
          ? _value.updatedTimestamp
          : updatedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlarmCopyWith<$Res> implements $AlarmCopyWith<$Res> {
  factory _$$_AlarmCopyWith(_$_Alarm value, $Res Function(_$_Alarm) then) =
      __$$_AlarmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String partitionKey,
      String farmId,
      String deviceUuid,
      String thingId,
      bool isActive,
      String status,
      String? startTimestamp,
      String? endTimestamp,
      String severity,
      String alarmType,
      String? alertedDeviceName,
      String? source,
      int? programId,
      String? programUuid,
      String? programName,
      int? shiftId,
      String createdTimestamp,
      String? updatedTimestamp});
}

/// @nodoc
class __$$_AlarmCopyWithImpl<$Res> extends _$AlarmCopyWithImpl<$Res, _$_Alarm>
    implements _$$_AlarmCopyWith<$Res> {
  __$$_AlarmCopyWithImpl(_$_Alarm _value, $Res Function(_$_Alarm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partitionKey = null,
    Object? farmId = null,
    Object? deviceUuid = null,
    Object? thingId = null,
    Object? isActive = null,
    Object? status = null,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? severity = null,
    Object? alarmType = null,
    Object? alertedDeviceName = freezed,
    Object? source = freezed,
    Object? programId = freezed,
    Object? programUuid = freezed,
    Object? programName = freezed,
    Object? shiftId = freezed,
    Object? createdTimestamp = null,
    Object? updatedTimestamp = freezed,
  }) {
    return _then(_$_Alarm(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partitionKey: null == partitionKey
          ? _value.partitionKey
          : partitionKey // ignore: cast_nullable_to_non_nullable
              as String,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceUuid: null == deviceUuid
          ? _value.deviceUuid
          : deviceUuid // ignore: cast_nullable_to_non_nullable
              as String,
      thingId: null == thingId
          ? _value.thingId
          : thingId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      endTimestamp: freezed == endTimestamp
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      alarmType: null == alarmType
          ? _value.alarmType
          : alarmType // ignore: cast_nullable_to_non_nullable
              as String,
      alertedDeviceName: freezed == alertedDeviceName
          ? _value.alertedDeviceName
          : alertedDeviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      programUuid: freezed == programUuid
          ? _value.programUuid
          : programUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdTimestamp: null == createdTimestamp
          ? _value.createdTimestamp
          : createdTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      updatedTimestamp: freezed == updatedTimestamp
          ? _value.updatedTimestamp
          : updatedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Alarm implements _Alarm {
  const _$_Alarm(
      {required this.id,
      required this.partitionKey,
      required this.farmId,
      required this.deviceUuid,
      required this.thingId,
      required this.isActive,
      required this.status,
      this.startTimestamp,
      this.endTimestamp,
      required this.severity,
      required this.alarmType,
      this.alertedDeviceName,
      this.source,
      this.programId,
      this.programUuid,
      this.programName,
      this.shiftId,
      required this.createdTimestamp,
      this.updatedTimestamp});

  factory _$_Alarm.fromJson(Map<String, dynamic> json) =>
      _$$_AlarmFromJson(json);

  @override
  final String id;
  @override
  final String partitionKey;
  @override
  final String farmId;
  @override
  final String deviceUuid;
  @override
  final String thingId;
  @override
  final bool isActive;
  @override
  final String status;
  @override
  final String? startTimestamp;
  @override
  final String? endTimestamp;
  @override
  final String severity;
  @override
  final String alarmType;
  @override
  final String? alertedDeviceName;
  @override
  final String? source;
  @override
  final int? programId;
  @override
  final String? programUuid;
  @override
  final String? programName;
  @override
  final int? shiftId;
  @override
  final String createdTimestamp;
  @override
  final String? updatedTimestamp;

  @override
  String toString() {
    return 'Alarm(id: $id, partitionKey: $partitionKey, farmId: $farmId, deviceUuid: $deviceUuid, thingId: $thingId, isActive: $isActive, status: $status, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, severity: $severity, alarmType: $alarmType, alertedDeviceName: $alertedDeviceName, source: $source, programId: $programId, programUuid: $programUuid, programName: $programName, shiftId: $shiftId, createdTimestamp: $createdTimestamp, updatedTimestamp: $updatedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Alarm &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partitionKey, partitionKey) ||
                other.partitionKey == partitionKey) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.deviceUuid, deviceUuid) ||
                other.deviceUuid == deviceUuid) &&
            (identical(other.thingId, thingId) || other.thingId == thingId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTimestamp, startTimestamp) ||
                other.startTimestamp == startTimestamp) &&
            (identical(other.endTimestamp, endTimestamp) ||
                other.endTimestamp == endTimestamp) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.alarmType, alarmType) ||
                other.alarmType == alarmType) &&
            (identical(other.alertedDeviceName, alertedDeviceName) ||
                other.alertedDeviceName == alertedDeviceName) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.programUuid, programUuid) ||
                other.programUuid == programUuid) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.createdTimestamp, createdTimestamp) ||
                other.createdTimestamp == createdTimestamp) &&
            (identical(other.updatedTimestamp, updatedTimestamp) ||
                other.updatedTimestamp == updatedTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        partitionKey,
        farmId,
        deviceUuid,
        thingId,
        isActive,
        status,
        startTimestamp,
        endTimestamp,
        severity,
        alarmType,
        alertedDeviceName,
        source,
        programId,
        programUuid,
        programName,
        shiftId,
        createdTimestamp,
        updatedTimestamp
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmCopyWith<_$_Alarm> get copyWith =>
      __$$_AlarmCopyWithImpl<_$_Alarm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlarmToJson(
      this,
    );
  }
}

abstract class _Alarm implements Alarm {
  const factory _Alarm(
      {required final String id,
      required final String partitionKey,
      required final String farmId,
      required final String deviceUuid,
      required final String thingId,
      required final bool isActive,
      required final String status,
      final String? startTimestamp,
      final String? endTimestamp,
      required final String severity,
      required final String alarmType,
      final String? alertedDeviceName,
      final String? source,
      final int? programId,
      final String? programUuid,
      final String? programName,
      final int? shiftId,
      required final String createdTimestamp,
      final String? updatedTimestamp}) = _$_Alarm;

  factory _Alarm.fromJson(Map<String, dynamic> json) = _$_Alarm.fromJson;

  @override
  String get id;
  @override
  String get partitionKey;
  @override
  String get farmId;
  @override
  String get deviceUuid;
  @override
  String get thingId;
  @override
  bool get isActive;
  @override
  String get status;
  @override
  String? get startTimestamp;
  @override
  String? get endTimestamp;
  @override
  String get severity;
  @override
  String get alarmType;
  @override
  String? get alertedDeviceName;
  @override
  String? get source;
  @override
  int? get programId;
  @override
  String? get programUuid;
  @override
  String? get programName;
  @override
  int? get shiftId;
  @override
  String get createdTimestamp;
  @override
  String? get updatedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmCopyWith<_$_Alarm> get copyWith =>
      throw _privateConstructorUsedError;
}
