// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphResponse _$GraphResponseFromJson(Map<String, dynamic> json) {
  return _GraphResponse.fromJson(json);
}

/// @nodoc
mixin _$GraphResponse {
  String get ioId => throw _privateConstructorUsedError;
  List<GraphPoint> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphResponseCopyWith<GraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphResponseCopyWith<$Res> {
  factory $GraphResponseCopyWith(
          GraphResponse value, $Res Function(GraphResponse) then) =
      _$GraphResponseCopyWithImpl<$Res, GraphResponse>;
  @useResult
  $Res call({String ioId, List<GraphPoint> data});
}

/// @nodoc
class _$GraphResponseCopyWithImpl<$Res, $Val extends GraphResponse>
    implements $GraphResponseCopyWith<$Res> {
  _$GraphResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioId = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GraphPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphResponseCopyWith<$Res>
    implements $GraphResponseCopyWith<$Res> {
  factory _$$_GraphResponseCopyWith(
          _$_GraphResponse value, $Res Function(_$_GraphResponse) then) =
      __$$_GraphResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ioId, List<GraphPoint> data});
}

/// @nodoc
class __$$_GraphResponseCopyWithImpl<$Res>
    extends _$GraphResponseCopyWithImpl<$Res, _$_GraphResponse>
    implements _$$_GraphResponseCopyWith<$Res> {
  __$$_GraphResponseCopyWithImpl(
      _$_GraphResponse _value, $Res Function(_$_GraphResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ioId = null,
    Object? data = null,
  }) {
    return _then(_$_GraphResponse(
      ioId: null == ioId
          ? _value.ioId
          : ioId // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GraphPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphResponse implements _GraphResponse {
  const _$_GraphResponse(
      {required this.ioId, final List<GraphPoint> data = const []})
      : _data = data;

  factory _$_GraphResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GraphResponseFromJson(json);

  @override
  final String ioId;
  final List<GraphPoint> _data;
  @override
  @JsonKey()
  List<GraphPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GraphResponse(ioId: $ioId, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphResponse &&
            (identical(other.ioId, ioId) || other.ioId == ioId) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ioId, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphResponseCopyWith<_$_GraphResponse> get copyWith =>
      __$$_GraphResponseCopyWithImpl<_$_GraphResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphResponseToJson(
      this,
    );
  }
}

abstract class _GraphResponse implements GraphResponse {
  const factory _GraphResponse(
      {required final String ioId,
      final List<GraphPoint> data}) = _$_GraphResponse;

  factory _GraphResponse.fromJson(Map<String, dynamic> json) =
      _$_GraphResponse.fromJson;

  @override
  String get ioId;
  @override
  List<GraphPoint> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GraphResponseCopyWith<_$_GraphResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
