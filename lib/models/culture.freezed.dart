// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'culture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CulturesResponse _$CulturesResponseFromJson(Map<String, dynamic> json) {
  return _CulturesResponse.fromJson(json);
}

/// @nodoc
mixin _$CulturesResponse {
  List<Culture> get cultures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CulturesResponseCopyWith<CulturesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CulturesResponseCopyWith<$Res> {
  factory $CulturesResponseCopyWith(
          CulturesResponse value, $Res Function(CulturesResponse) then) =
      _$CulturesResponseCopyWithImpl<$Res, CulturesResponse>;
  @useResult
  $Res call({List<Culture> cultures});
}

/// @nodoc
class _$CulturesResponseCopyWithImpl<$Res, $Val extends CulturesResponse>
    implements $CulturesResponseCopyWith<$Res> {
  _$CulturesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cultures = null,
  }) {
    return _then(_value.copyWith(
      cultures: null == cultures
          ? _value.cultures
          : cultures // ignore: cast_nullable_to_non_nullable
              as List<Culture>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CulturesResponseCopyWith<$Res>
    implements $CulturesResponseCopyWith<$Res> {
  factory _$$_CulturesResponseCopyWith(
          _$_CulturesResponse value, $Res Function(_$_CulturesResponse) then) =
      __$$_CulturesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Culture> cultures});
}

/// @nodoc
class __$$_CulturesResponseCopyWithImpl<$Res>
    extends _$CulturesResponseCopyWithImpl<$Res, _$_CulturesResponse>
    implements _$$_CulturesResponseCopyWith<$Res> {
  __$$_CulturesResponseCopyWithImpl(
      _$_CulturesResponse _value, $Res Function(_$_CulturesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cultures = null,
  }) {
    return _then(_$_CulturesResponse(
      cultures: null == cultures
          ? _value._cultures
          : cultures // ignore: cast_nullable_to_non_nullable
              as List<Culture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CulturesResponse
    with DiagnosticableTreeMixin
    implements _CulturesResponse {
  const _$_CulturesResponse({required final List<Culture> cultures})
      : _cultures = cultures;

  factory _$_CulturesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CulturesResponseFromJson(json);

  final List<Culture> _cultures;
  @override
  List<Culture> get cultures {
    if (_cultures is EqualUnmodifiableListView) return _cultures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cultures);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CulturesResponse(cultures: $cultures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CulturesResponse'))
      ..add(DiagnosticsProperty('cultures', cultures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CulturesResponse &&
            const DeepCollectionEquality().equals(other._cultures, _cultures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cultures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CulturesResponseCopyWith<_$_CulturesResponse> get copyWith =>
      __$$_CulturesResponseCopyWithImpl<_$_CulturesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CulturesResponseToJson(
      this,
    );
  }
}

abstract class _CulturesResponse implements CulturesResponse {
  const factory _CulturesResponse({required final List<Culture> cultures}) =
      _$_CulturesResponse;

  factory _CulturesResponse.fromJson(Map<String, dynamic> json) =
      _$_CulturesResponse.fromJson;

  @override
  List<Culture> get cultures;
  @override
  @JsonKey(ignore: true)
  _$$_CulturesResponseCopyWith<_$_CulturesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Culture _$CultureFromJson(Map<String, dynamic> json) {
  return _Culture.fromJson(json);
}

/// @nodoc
mixin _$Culture {
  String get appId => throw _privateConstructorUsedError;
  String get culture => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CultureCopyWith<Culture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CultureCopyWith<$Res> {
  factory $CultureCopyWith(Culture value, $Res Function(Culture) then) =
      _$CultureCopyWithImpl<$Res, Culture>;
  @useResult
  $Res call({String appId, String culture, String name});
}

/// @nodoc
class _$CultureCopyWithImpl<$Res, $Val extends Culture>
    implements $CultureCopyWith<$Res> {
  _$CultureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? culture = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CultureCopyWith<$Res> implements $CultureCopyWith<$Res> {
  factory _$$_CultureCopyWith(
          _$_Culture value, $Res Function(_$_Culture) then) =
      __$$_CultureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String appId, String culture, String name});
}

/// @nodoc
class __$$_CultureCopyWithImpl<$Res>
    extends _$CultureCopyWithImpl<$Res, _$_Culture>
    implements _$$_CultureCopyWith<$Res> {
  __$$_CultureCopyWithImpl(_$_Culture _value, $Res Function(_$_Culture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? culture = null,
    Object? name = null,
  }) {
    return _then(_$_Culture(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      culture: null == culture
          ? _value.culture
          : culture // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Culture with DiagnosticableTreeMixin implements _Culture {
  const _$_Culture(
      {required this.appId, required this.culture, required this.name});

  factory _$_Culture.fromJson(Map<String, dynamic> json) =>
      _$$_CultureFromJson(json);

  @override
  final String appId;
  @override
  final String culture;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Culture(appId: $appId, culture: $culture, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Culture'))
      ..add(DiagnosticsProperty('appId', appId))
      ..add(DiagnosticsProperty('culture', culture))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Culture &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.culture, culture) || other.culture == culture) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appId, culture, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CultureCopyWith<_$_Culture> get copyWith =>
      __$$_CultureCopyWithImpl<_$_Culture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CultureToJson(
      this,
    );
  }
}

abstract class _Culture implements Culture {
  const factory _Culture(
      {required final String appId,
      required final String culture,
      required final String name}) = _$_Culture;

  factory _Culture.fromJson(Map<String, dynamic> json) = _$_Culture.fromJson;

  @override
  String get appId;
  @override
  String get culture;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CultureCopyWith<_$_Culture> get copyWith =>
      throw _privateConstructorUsedError;
}
