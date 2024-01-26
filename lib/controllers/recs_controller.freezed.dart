// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recs_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeeklyRecsIdentifier {
  String get cropUnitId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeeklyRecsIdentifierCopyWith<WeeklyRecsIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyRecsIdentifierCopyWith<$Res> {
  factory $WeeklyRecsIdentifierCopyWith(WeeklyRecsIdentifier value,
          $Res Function(WeeklyRecsIdentifier) then) =
      _$WeeklyRecsIdentifierCopyWithImpl<$Res, WeeklyRecsIdentifier>;
  @useResult
  $Res call({String cropUnitId, String date});
}

/// @nodoc
class _$WeeklyRecsIdentifierCopyWithImpl<$Res,
        $Val extends WeeklyRecsIdentifier>
    implements $WeeklyRecsIdentifierCopyWith<$Res> {
  _$WeeklyRecsIdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropUnitId = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeeklyRecsIdentifierCopyWith<$Res>
    implements $WeeklyRecsIdentifierCopyWith<$Res> {
  factory _$$_WeeklyRecsIdentifierCopyWith(_$_WeeklyRecsIdentifier value,
          $Res Function(_$_WeeklyRecsIdentifier) then) =
      __$$_WeeklyRecsIdentifierCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cropUnitId, String date});
}

/// @nodoc
class __$$_WeeklyRecsIdentifierCopyWithImpl<$Res>
    extends _$WeeklyRecsIdentifierCopyWithImpl<$Res, _$_WeeklyRecsIdentifier>
    implements _$$_WeeklyRecsIdentifierCopyWith<$Res> {
  __$$_WeeklyRecsIdentifierCopyWithImpl(_$_WeeklyRecsIdentifier _value,
      $Res Function(_$_WeeklyRecsIdentifier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cropUnitId = null,
    Object? date = null,
  }) {
    return _then(_$_WeeklyRecsIdentifier(
      cropUnitId: null == cropUnitId
          ? _value.cropUnitId
          : cropUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeeklyRecsIdentifier implements _WeeklyRecsIdentifier {
  const _$_WeeklyRecsIdentifier({required this.cropUnitId, required this.date});

  @override
  final String cropUnitId;
  @override
  final String date;

  @override
  String toString() {
    return 'WeeklyRecsIdentifier(cropUnitId: $cropUnitId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeeklyRecsIdentifier &&
            (identical(other.cropUnitId, cropUnitId) ||
                other.cropUnitId == cropUnitId) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cropUnitId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeeklyRecsIdentifierCopyWith<_$_WeeklyRecsIdentifier> get copyWith =>
      __$$_WeeklyRecsIdentifierCopyWithImpl<_$_WeeklyRecsIdentifier>(
          this, _$identity);
}

abstract class _WeeklyRecsIdentifier implements WeeklyRecsIdentifier {
  const factory _WeeklyRecsIdentifier(
      {required final String cropUnitId,
      required final String date}) = _$_WeeklyRecsIdentifier;

  @override
  String get cropUnitId;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_WeeklyRecsIdentifierCopyWith<_$_WeeklyRecsIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}
