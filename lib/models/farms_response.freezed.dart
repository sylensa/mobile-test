// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FarmsResponse _$FarmsResponseFromJson(Map<String, dynamic> json) {
  return _FarmsResponse.fromJson(json);
}

/// @nodoc
mixin _$FarmsResponse {
  List<Farm> get farms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmsResponseCopyWith<FarmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmsResponseCopyWith<$Res> {
  factory $FarmsResponseCopyWith(
          FarmsResponse value, $Res Function(FarmsResponse) then) =
      _$FarmsResponseCopyWithImpl<$Res, FarmsResponse>;
  @useResult
  $Res call({List<Farm> farms});
}

/// @nodoc
class _$FarmsResponseCopyWithImpl<$Res, $Val extends FarmsResponse>
    implements $FarmsResponseCopyWith<$Res> {
  _$FarmsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farms = null,
  }) {
    return _then(_value.copyWith(
      farms: null == farms
          ? _value.farms
          : farms // ignore: cast_nullable_to_non_nullable
              as List<Farm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FarmsResponseCopyWith<$Res>
    implements $FarmsResponseCopyWith<$Res> {
  factory _$$_FarmsResponseCopyWith(
          _$_FarmsResponse value, $Res Function(_$_FarmsResponse) then) =
      __$$_FarmsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Farm> farms});
}

/// @nodoc
class __$$_FarmsResponseCopyWithImpl<$Res>
    extends _$FarmsResponseCopyWithImpl<$Res, _$_FarmsResponse>
    implements _$$_FarmsResponseCopyWith<$Res> {
  __$$_FarmsResponseCopyWithImpl(
      _$_FarmsResponse _value, $Res Function(_$_FarmsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farms = null,
  }) {
    return _then(_$_FarmsResponse(
      farms: null == farms
          ? _value._farms
          : farms // ignore: cast_nullable_to_non_nullable
              as List<Farm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FarmsResponse with DiagnosticableTreeMixin implements _FarmsResponse {
  const _$_FarmsResponse({required final List<Farm> farms}) : _farms = farms;

  factory _$_FarmsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FarmsResponseFromJson(json);

  final List<Farm> _farms;
  @override
  List<Farm> get farms {
    if (_farms is EqualUnmodifiableListView) return _farms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_farms);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FarmsResponse(farms: $farms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FarmsResponse'))
      ..add(DiagnosticsProperty('farms', farms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FarmsResponse &&
            const DeepCollectionEquality().equals(other._farms, _farms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_farms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FarmsResponseCopyWith<_$_FarmsResponse> get copyWith =>
      __$$_FarmsResponseCopyWithImpl<_$_FarmsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmsResponseToJson(
      this,
    );
  }
}

abstract class _FarmsResponse implements FarmsResponse {
  const factory _FarmsResponse({required final List<Farm> farms}) =
      _$_FarmsResponse;

  factory _FarmsResponse.fromJson(Map<String, dynamic> json) =
      _$_FarmsResponse.fromJson;

  @override
  List<Farm> get farms;
  @override
  @JsonKey(ignore: true)
  _$$_FarmsResponseCopyWith<_$_FarmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Farm _$FarmFromJson(Map<String, dynamic> json) {
  return _Farm.fromJson(json);
}

/// @nodoc
mixin _$Farm {
  List<String> get roles => throw _privateConstructorUsedError;
  String get farmId => throw _privateConstructorUsedError;
  String get farmName => throw _privateConstructorUsedError;
  String get systemTypeId => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String? get productVersion => throw _privateConstructorUsedError;
  int? get enterpriseId => throw _privateConstructorUsedError;
  String? get enterpriseName => throw _privateConstructorUsedError;
  String? get platformType => throw _privateConstructorUsedError;
  String? get siteId => throw _privateConstructorUsedError;
  String? get areaId => throw _privateConstructorUsedError;
  String? get pcsId => throw _privateConstructorUsedError;
  String? get pid => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get elevation => throw _privateConstructorUsedError;
  String? get firstDayOfWeek => throw _privateConstructorUsedError;
  String? get dataServer => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get countrySubdivisionCode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get createdTimestampUTC => throw _privateConstructorUsedError;
  bool? get isDisabled => throw _privateConstructorUsedError;
  String? get disabledTimestampUtc => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  String? get deletedTimestampUtc => throw _privateConstructorUsedError;
  TimeZoneInfo? get timeZoneInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmCopyWith<Farm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmCopyWith<$Res> {
  factory $FarmCopyWith(Farm value, $Res Function(Farm) then) =
      _$FarmCopyWithImpl<$Res, Farm>;
  @useResult
  $Res call(
      {List<String> roles,
      String farmId,
      String farmName,
      String systemTypeId,
      int productId,
      String? productVersion,
      int? enterpriseId,
      String? enterpriseName,
      String? platformType,
      String? siteId,
      String? areaId,
      String? pcsId,
      String? pid,
      double? latitude,
      double? longitude,
      int? elevation,
      String? firstDayOfWeek,
      String? dataServer,
      String? address,
      String? zipCode,
      String? city,
      String? state,
      String? countrySubdivisionCode,
      String? country,
      String? countryCode,
      String? createdTimestampUTC,
      bool? isDisabled,
      String? disabledTimestampUtc,
      bool? isDeleted,
      String? deletedTimestampUtc,
      TimeZoneInfo? timeZoneInfo});

  $TimeZoneInfoCopyWith<$Res>? get timeZoneInfo;
}

/// @nodoc
class _$FarmCopyWithImpl<$Res, $Val extends Farm>
    implements $FarmCopyWith<$Res> {
  _$FarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = null,
    Object? farmId = null,
    Object? farmName = null,
    Object? systemTypeId = null,
    Object? productId = null,
    Object? productVersion = freezed,
    Object? enterpriseId = freezed,
    Object? enterpriseName = freezed,
    Object? platformType = freezed,
    Object? siteId = freezed,
    Object? areaId = freezed,
    Object? pcsId = freezed,
    Object? pid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? firstDayOfWeek = freezed,
    Object? dataServer = freezed,
    Object? address = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? countrySubdivisionCode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? createdTimestampUTC = freezed,
    Object? isDisabled = freezed,
    Object? disabledTimestampUtc = freezed,
    Object? isDeleted = freezed,
    Object? deletedTimestampUtc = freezed,
    Object? timeZoneInfo = freezed,
  }) {
    return _then(_value.copyWith(
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      systemTypeId: null == systemTypeId
          ? _value.systemTypeId
          : systemTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productVersion: freezed == productVersion
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      enterpriseId: freezed == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int?,
      enterpriseName: freezed == enterpriseName
          ? _value.enterpriseName
          : enterpriseName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformType: freezed == platformType
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as String?,
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pcsId: freezed == pcsId
          ? _value.pcsId
          : pcsId // ignore: cast_nullable_to_non_nullable
              as String?,
      pid: freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      firstDayOfWeek: freezed == firstDayOfWeek
          ? _value.firstDayOfWeek
          : firstDayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      dataServer: freezed == dataServer
          ? _value.dataServer
          : dataServer // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countrySubdivisionCode: freezed == countrySubdivisionCode
          ? _value.countrySubdivisionCode
          : countrySubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTimestampUTC: freezed == createdTimestampUTC
          ? _value.createdTimestampUTC
          : createdTimestampUTC // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabledTimestampUtc: freezed == disabledTimestampUtc
          ? _value.disabledTimestampUtc
          : disabledTimestampUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedTimestampUtc: freezed == deletedTimestampUtc
          ? _value.deletedTimestampUtc
          : deletedTimestampUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneInfo: freezed == timeZoneInfo
          ? _value.timeZoneInfo
          : timeZoneInfo // ignore: cast_nullable_to_non_nullable
              as TimeZoneInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeZoneInfoCopyWith<$Res>? get timeZoneInfo {
    if (_value.timeZoneInfo == null) {
      return null;
    }

    return $TimeZoneInfoCopyWith<$Res>(_value.timeZoneInfo!, (value) {
      return _then(_value.copyWith(timeZoneInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FarmCopyWith<$Res> implements $FarmCopyWith<$Res> {
  factory _$$_FarmCopyWith(_$_Farm value, $Res Function(_$_Farm) then) =
      __$$_FarmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> roles,
      String farmId,
      String farmName,
      String systemTypeId,
      int productId,
      String? productVersion,
      int? enterpriseId,
      String? enterpriseName,
      String? platformType,
      String? siteId,
      String? areaId,
      String? pcsId,
      String? pid,
      double? latitude,
      double? longitude,
      int? elevation,
      String? firstDayOfWeek,
      String? dataServer,
      String? address,
      String? zipCode,
      String? city,
      String? state,
      String? countrySubdivisionCode,
      String? country,
      String? countryCode,
      String? createdTimestampUTC,
      bool? isDisabled,
      String? disabledTimestampUtc,
      bool? isDeleted,
      String? deletedTimestampUtc,
      TimeZoneInfo? timeZoneInfo});

  @override
  $TimeZoneInfoCopyWith<$Res>? get timeZoneInfo;
}

/// @nodoc
class __$$_FarmCopyWithImpl<$Res> extends _$FarmCopyWithImpl<$Res, _$_Farm>
    implements _$$_FarmCopyWith<$Res> {
  __$$_FarmCopyWithImpl(_$_Farm _value, $Res Function(_$_Farm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roles = null,
    Object? farmId = null,
    Object? farmName = null,
    Object? systemTypeId = null,
    Object? productId = null,
    Object? productVersion = freezed,
    Object? enterpriseId = freezed,
    Object? enterpriseName = freezed,
    Object? platformType = freezed,
    Object? siteId = freezed,
    Object? areaId = freezed,
    Object? pcsId = freezed,
    Object? pid = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? elevation = freezed,
    Object? firstDayOfWeek = freezed,
    Object? dataServer = freezed,
    Object? address = freezed,
    Object? zipCode = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? countrySubdivisionCode = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? createdTimestampUTC = freezed,
    Object? isDisabled = freezed,
    Object? disabledTimestampUtc = freezed,
    Object? isDeleted = freezed,
    Object? deletedTimestampUtc = freezed,
    Object? timeZoneInfo = freezed,
  }) {
    return _then(_$_Farm(
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      farmId: null == farmId
          ? _value.farmId
          : farmId // ignore: cast_nullable_to_non_nullable
              as String,
      farmName: null == farmName
          ? _value.farmName
          : farmName // ignore: cast_nullable_to_non_nullable
              as String,
      systemTypeId: null == systemTypeId
          ? _value.systemTypeId
          : systemTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productVersion: freezed == productVersion
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      enterpriseId: freezed == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int?,
      enterpriseName: freezed == enterpriseName
          ? _value.enterpriseName
          : enterpriseName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformType: freezed == platformType
          ? _value.platformType
          : platformType // ignore: cast_nullable_to_non_nullable
              as String?,
      siteId: freezed == siteId
          ? _value.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
      pcsId: freezed == pcsId
          ? _value.pcsId
          : pcsId // ignore: cast_nullable_to_non_nullable
              as String?,
      pid: freezed == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int?,
      firstDayOfWeek: freezed == firstDayOfWeek
          ? _value.firstDayOfWeek
          : firstDayOfWeek // ignore: cast_nullable_to_non_nullable
              as String?,
      dataServer: freezed == dataServer
          ? _value.dataServer
          : dataServer // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countrySubdivisionCode: freezed == countrySubdivisionCode
          ? _value.countrySubdivisionCode
          : countrySubdivisionCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      createdTimestampUTC: freezed == createdTimestampUTC
          ? _value.createdTimestampUTC
          : createdTimestampUTC // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabledTimestampUtc: freezed == disabledTimestampUtc
          ? _value.disabledTimestampUtc
          : disabledTimestampUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      deletedTimestampUtc: freezed == deletedTimestampUtc
          ? _value.deletedTimestampUtc
          : deletedTimestampUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      timeZoneInfo: freezed == timeZoneInfo
          ? _value.timeZoneInfo
          : timeZoneInfo // ignore: cast_nullable_to_non_nullable
              as TimeZoneInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Farm with DiagnosticableTreeMixin implements _Farm {
  const _$_Farm(
      {required final List<String> roles,
      required this.farmId,
      required this.farmName,
      required this.systemTypeId,
      required this.productId,
      this.productVersion,
      this.enterpriseId,
      this.enterpriseName,
      this.platformType,
      this.siteId,
      this.areaId,
      this.pcsId,
      this.pid,
      this.latitude,
      this.longitude,
      this.elevation,
      this.firstDayOfWeek,
      this.dataServer,
      this.address,
      this.zipCode,
      this.city,
      this.state,
      this.countrySubdivisionCode,
      this.country,
      this.countryCode,
      this.createdTimestampUTC,
      this.isDisabled,
      this.disabledTimestampUtc,
      this.isDeleted,
      this.deletedTimestampUtc,
      this.timeZoneInfo})
      : _roles = roles;

  factory _$_Farm.fromJson(Map<String, dynamic> json) => _$$_FarmFromJson(json);

  final List<String> _roles;
  @override
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final String farmId;
  @override
  final String farmName;
  @override
  final String systemTypeId;
  @override
  final int productId;
  @override
  final String? productVersion;
  @override
  final int? enterpriseId;
  @override
  final String? enterpriseName;
  @override
  final String? platformType;
  @override
  final String? siteId;
  @override
  final String? areaId;
  @override
  final String? pcsId;
  @override
  final String? pid;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final int? elevation;
  @override
  final String? firstDayOfWeek;
  @override
  final String? dataServer;
  @override
  final String? address;
  @override
  final String? zipCode;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? countrySubdivisionCode;
  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final String? createdTimestampUTC;
  @override
  final bool? isDisabled;
  @override
  final String? disabledTimestampUtc;
  @override
  final bool? isDeleted;
  @override
  final String? deletedTimestampUtc;
  @override
  final TimeZoneInfo? timeZoneInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Farm(roles: $roles, farmId: $farmId, farmName: $farmName, systemTypeId: $systemTypeId, productId: $productId, productVersion: $productVersion, enterpriseId: $enterpriseId, enterpriseName: $enterpriseName, platformType: $platformType, siteId: $siteId, areaId: $areaId, pcsId: $pcsId, pid: $pid, latitude: $latitude, longitude: $longitude, elevation: $elevation, firstDayOfWeek: $firstDayOfWeek, dataServer: $dataServer, address: $address, zipCode: $zipCode, city: $city, state: $state, countrySubdivisionCode: $countrySubdivisionCode, country: $country, countryCode: $countryCode, createdTimestampUTC: $createdTimestampUTC, isDisabled: $isDisabled, disabledTimestampUtc: $disabledTimestampUtc, isDeleted: $isDeleted, deletedTimestampUtc: $deletedTimestampUtc, timeZoneInfo: $timeZoneInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Farm'))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('farmId', farmId))
      ..add(DiagnosticsProperty('farmName', farmName))
      ..add(DiagnosticsProperty('systemTypeId', systemTypeId))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('productVersion', productVersion))
      ..add(DiagnosticsProperty('enterpriseId', enterpriseId))
      ..add(DiagnosticsProperty('enterpriseName', enterpriseName))
      ..add(DiagnosticsProperty('platformType', platformType))
      ..add(DiagnosticsProperty('siteId', siteId))
      ..add(DiagnosticsProperty('areaId', areaId))
      ..add(DiagnosticsProperty('pcsId', pcsId))
      ..add(DiagnosticsProperty('pid', pid))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('elevation', elevation))
      ..add(DiagnosticsProperty('firstDayOfWeek', firstDayOfWeek))
      ..add(DiagnosticsProperty('dataServer', dataServer))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('zipCode', zipCode))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('state', state))
      ..add(
          DiagnosticsProperty('countrySubdivisionCode', countrySubdivisionCode))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('countryCode', countryCode))
      ..add(DiagnosticsProperty('createdTimestampUTC', createdTimestampUTC))
      ..add(DiagnosticsProperty('isDisabled', isDisabled))
      ..add(DiagnosticsProperty('disabledTimestampUtc', disabledTimestampUtc))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('deletedTimestampUtc', deletedTimestampUtc))
      ..add(DiagnosticsProperty('timeZoneInfo', timeZoneInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Farm &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.farmId, farmId) || other.farmId == farmId) &&
            (identical(other.farmName, farmName) ||
                other.farmName == farmName) &&
            (identical(other.systemTypeId, systemTypeId) ||
                other.systemTypeId == systemTypeId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productVersion, productVersion) ||
                other.productVersion == productVersion) &&
            (identical(other.enterpriseId, enterpriseId) ||
                other.enterpriseId == enterpriseId) &&
            (identical(other.enterpriseName, enterpriseName) ||
                other.enterpriseName == enterpriseName) &&
            (identical(other.platformType, platformType) ||
                other.platformType == platformType) &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.pcsId, pcsId) || other.pcsId == pcsId) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.firstDayOfWeek, firstDayOfWeek) ||
                other.firstDayOfWeek == firstDayOfWeek) &&
            (identical(other.dataServer, dataServer) ||
                other.dataServer == dataServer) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.countrySubdivisionCode, countrySubdivisionCode) ||
                other.countrySubdivisionCode == countrySubdivisionCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.createdTimestampUTC, createdTimestampUTC) ||
                other.createdTimestampUTC == createdTimestampUTC) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.disabledTimestampUtc, disabledTimestampUtc) ||
                other.disabledTimestampUtc == disabledTimestampUtc) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedTimestampUtc, deletedTimestampUtc) ||
                other.deletedTimestampUtc == deletedTimestampUtc) &&
            (identical(other.timeZoneInfo, timeZoneInfo) ||
                other.timeZoneInfo == timeZoneInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_roles),
        farmId,
        farmName,
        systemTypeId,
        productId,
        productVersion,
        enterpriseId,
        enterpriseName,
        platformType,
        siteId,
        areaId,
        pcsId,
        pid,
        latitude,
        longitude,
        elevation,
        firstDayOfWeek,
        dataServer,
        address,
        zipCode,
        city,
        state,
        countrySubdivisionCode,
        country,
        countryCode,
        createdTimestampUTC,
        isDisabled,
        disabledTimestampUtc,
        isDeleted,
        deletedTimestampUtc,
        timeZoneInfo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FarmCopyWith<_$_Farm> get copyWith =>
      __$$_FarmCopyWithImpl<_$_Farm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FarmToJson(
      this,
    );
  }
}

abstract class _Farm implements Farm {
  const factory _Farm(
      {required final List<String> roles,
      required final String farmId,
      required final String farmName,
      required final String systemTypeId,
      required final int productId,
      final String? productVersion,
      final int? enterpriseId,
      final String? enterpriseName,
      final String? platformType,
      final String? siteId,
      final String? areaId,
      final String? pcsId,
      final String? pid,
      final double? latitude,
      final double? longitude,
      final int? elevation,
      final String? firstDayOfWeek,
      final String? dataServer,
      final String? address,
      final String? zipCode,
      final String? city,
      final String? state,
      final String? countrySubdivisionCode,
      final String? country,
      final String? countryCode,
      final String? createdTimestampUTC,
      final bool? isDisabled,
      final String? disabledTimestampUtc,
      final bool? isDeleted,
      final String? deletedTimestampUtc,
      final TimeZoneInfo? timeZoneInfo}) = _$_Farm;

  factory _Farm.fromJson(Map<String, dynamic> json) = _$_Farm.fromJson;

  @override
  List<String> get roles;
  @override
  String get farmId;
  @override
  String get farmName;
  @override
  String get systemTypeId;
  @override
  int get productId;
  @override
  String? get productVersion;
  @override
  int? get enterpriseId;
  @override
  String? get enterpriseName;
  @override
  String? get platformType;
  @override
  String? get siteId;
  @override
  String? get areaId;
  @override
  String? get pcsId;
  @override
  String? get pid;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  int? get elevation;
  @override
  String? get firstDayOfWeek;
  @override
  String? get dataServer;
  @override
  String? get address;
  @override
  String? get zipCode;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get countrySubdivisionCode;
  @override
  String? get country;
  @override
  String? get countryCode;
  @override
  String? get createdTimestampUTC;
  @override
  bool? get isDisabled;
  @override
  String? get disabledTimestampUtc;
  @override
  bool? get isDeleted;
  @override
  String? get deletedTimestampUtc;
  @override
  TimeZoneInfo? get timeZoneInfo;
  @override
  @JsonKey(ignore: true)
  _$$_FarmCopyWith<_$_Farm> get copyWith => throw _privateConstructorUsedError;
}

TimeZoneInfo _$TimeZoneInfoFromJson(Map<String, dynamic> json) {
  return _TimeZoneInfo.fromJson(json);
}

/// @nodoc
mixin _$TimeZoneInfo {
  String? get timezoneId => throw _privateConstructorUsedError;
  String? get windowsTimeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeZoneInfoCopyWith<TimeZoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeZoneInfoCopyWith<$Res> {
  factory $TimeZoneInfoCopyWith(
          TimeZoneInfo value, $Res Function(TimeZoneInfo) then) =
      _$TimeZoneInfoCopyWithImpl<$Res, TimeZoneInfo>;
  @useResult
  $Res call({String? timezoneId, String? windowsTimeZone});
}

/// @nodoc
class _$TimeZoneInfoCopyWithImpl<$Res, $Val extends TimeZoneInfo>
    implements $TimeZoneInfoCopyWith<$Res> {
  _$TimeZoneInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezoneId = freezed,
    Object? windowsTimeZone = freezed,
  }) {
    return _then(_value.copyWith(
      timezoneId: freezed == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      windowsTimeZone: freezed == windowsTimeZone
          ? _value.windowsTimeZone
          : windowsTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeZoneInfoCopyWith<$Res>
    implements $TimeZoneInfoCopyWith<$Res> {
  factory _$$_TimeZoneInfoCopyWith(
          _$_TimeZoneInfo value, $Res Function(_$_TimeZoneInfo) then) =
      __$$_TimeZoneInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? timezoneId, String? windowsTimeZone});
}

/// @nodoc
class __$$_TimeZoneInfoCopyWithImpl<$Res>
    extends _$TimeZoneInfoCopyWithImpl<$Res, _$_TimeZoneInfo>
    implements _$$_TimeZoneInfoCopyWith<$Res> {
  __$$_TimeZoneInfoCopyWithImpl(
      _$_TimeZoneInfo _value, $Res Function(_$_TimeZoneInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timezoneId = freezed,
    Object? windowsTimeZone = freezed,
  }) {
    return _then(_$_TimeZoneInfo(
      timezoneId: freezed == timezoneId
          ? _value.timezoneId
          : timezoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      windowsTimeZone: freezed == windowsTimeZone
          ? _value.windowsTimeZone
          : windowsTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeZoneInfo with DiagnosticableTreeMixin implements _TimeZoneInfo {
  const _$_TimeZoneInfo({this.timezoneId, this.windowsTimeZone});

  factory _$_TimeZoneInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TimeZoneInfoFromJson(json);

  @override
  final String? timezoneId;
  @override
  final String? windowsTimeZone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeZoneInfo(timezoneId: $timezoneId, windowsTimeZone: $windowsTimeZone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeZoneInfo'))
      ..add(DiagnosticsProperty('timezoneId', timezoneId))
      ..add(DiagnosticsProperty('windowsTimeZone', windowsTimeZone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeZoneInfo &&
            (identical(other.timezoneId, timezoneId) ||
                other.timezoneId == timezoneId) &&
            (identical(other.windowsTimeZone, windowsTimeZone) ||
                other.windowsTimeZone == windowsTimeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timezoneId, windowsTimeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeZoneInfoCopyWith<_$_TimeZoneInfo> get copyWith =>
      __$$_TimeZoneInfoCopyWithImpl<_$_TimeZoneInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeZoneInfoToJson(
      this,
    );
  }
}

abstract class _TimeZoneInfo implements TimeZoneInfo {
  const factory _TimeZoneInfo(
      {final String? timezoneId,
      final String? windowsTimeZone}) = _$_TimeZoneInfo;

  factory _TimeZoneInfo.fromJson(Map<String, dynamic> json) =
      _$_TimeZoneInfo.fromJson;

  @override
  String? get timezoneId;
  @override
  String? get windowsTimeZone;
  @override
  @JsonKey(ignore: true)
  _$$_TimeZoneInfoCopyWith<_$_TimeZoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
