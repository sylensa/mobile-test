// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_resources_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextResourcesResponse _$TextResourcesResponseFromJson(
    Map<String, dynamic> json) {
  return _TextResourcesResponse.fromJson(json);
}

/// @nodoc
mixin _$TextResourcesResponse {
  Map<String, Map<String, String>> get groupedResources =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalRecords => throw _privateConstructorUsedError;
  String get updateTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextResourcesResponseCopyWith<TextResourcesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextResourcesResponseCopyWith<$Res> {
  factory $TextResourcesResponseCopyWith(TextResourcesResponse value,
          $Res Function(TextResourcesResponse) then) =
      _$TextResourcesResponseCopyWithImpl<$Res, TextResourcesResponse>;
  @useResult
  $Res call(
      {Map<String, Map<String, String>> groupedResources,
      int page,
      int pageSize,
      int totalRecords,
      String updateTimestamp});
}

/// @nodoc
class _$TextResourcesResponseCopyWithImpl<$Res,
        $Val extends TextResourcesResponse>
    implements $TextResourcesResponseCopyWith<$Res> {
  _$TextResourcesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupedResources = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalRecords = null,
    Object? updateTimestamp = null,
  }) {
    return _then(_value.copyWith(
      groupedResources: null == groupedResources
          ? _value.groupedResources
          : groupedResources // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      updateTimestamp: null == updateTimestamp
          ? _value.updateTimestamp
          : updateTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextResourcesResponseCopyWith<$Res>
    implements $TextResourcesResponseCopyWith<$Res> {
  factory _$$_TextResourcesResponseCopyWith(_$_TextResourcesResponse value,
          $Res Function(_$_TextResourcesResponse) then) =
      __$$_TextResourcesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Map<String, String>> groupedResources,
      int page,
      int pageSize,
      int totalRecords,
      String updateTimestamp});
}

/// @nodoc
class __$$_TextResourcesResponseCopyWithImpl<$Res>
    extends _$TextResourcesResponseCopyWithImpl<$Res, _$_TextResourcesResponse>
    implements _$$_TextResourcesResponseCopyWith<$Res> {
  __$$_TextResourcesResponseCopyWithImpl(_$_TextResourcesResponse _value,
      $Res Function(_$_TextResourcesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupedResources = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalRecords = null,
    Object? updateTimestamp = null,
  }) {
    return _then(_$_TextResourcesResponse(
      groupedResources: null == groupedResources
          ? _value._groupedResources
          : groupedResources // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      updateTimestamp: null == updateTimestamp
          ? _value.updateTimestamp
          : updateTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextResourcesResponse implements _TextResourcesResponse {
  const _$_TextResourcesResponse(
      {required final Map<String, Map<String, String>> groupedResources,
      required this.page,
      required this.pageSize,
      required this.totalRecords,
      required this.updateTimestamp})
      : _groupedResources = groupedResources;

  factory _$_TextResourcesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TextResourcesResponseFromJson(json);

  final Map<String, Map<String, String>> _groupedResources;
  @override
  Map<String, Map<String, String>> get groupedResources {
    if (_groupedResources is EqualUnmodifiableMapView) return _groupedResources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupedResources);
  }

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalRecords;
  @override
  final String updateTimestamp;

  @override
  String toString() {
    return 'TextResourcesResponse(groupedResources: $groupedResources, page: $page, pageSize: $pageSize, totalRecords: $totalRecords, updateTimestamp: $updateTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextResourcesResponse &&
            const DeepCollectionEquality()
                .equals(other._groupedResources, _groupedResources) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.updateTimestamp, updateTimestamp) ||
                other.updateTimestamp == updateTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groupedResources),
      page,
      pageSize,
      totalRecords,
      updateTimestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextResourcesResponseCopyWith<_$_TextResourcesResponse> get copyWith =>
      __$$_TextResourcesResponseCopyWithImpl<_$_TextResourcesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextResourcesResponseToJson(
      this,
    );
  }
}

abstract class _TextResourcesResponse implements TextResourcesResponse {
  const factory _TextResourcesResponse(
      {required final Map<String, Map<String, String>> groupedResources,
      required final int page,
      required final int pageSize,
      required final int totalRecords,
      required final String updateTimestamp}) = _$_TextResourcesResponse;

  factory _TextResourcesResponse.fromJson(Map<String, dynamic> json) =
      _$_TextResourcesResponse.fromJson;

  @override
  Map<String, Map<String, String>> get groupedResources;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get totalRecords;
  @override
  String get updateTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_TextResourcesResponseCopyWith<_$_TextResourcesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
