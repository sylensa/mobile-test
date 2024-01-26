// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devices_tree_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DevicesTree _$DevicesTreeFromJson(Map<String, dynamic> json) {
  return _DevicesTree.fromJson(json);
}

/// @nodoc
mixin _$DevicesTree {
  Root get root => throw _privateConstructorUsedError;
  List<Base> get bases => throw _privateConstructorUsedError;
  List<Repeater> get repeaters => throw _privateConstructorUsedError;
  List<Remote> get remotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DevicesTreeCopyWith<DevicesTree> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicesTreeCopyWith<$Res> {
  factory $DevicesTreeCopyWith(
          DevicesTree value, $Res Function(DevicesTree) then) =
      _$DevicesTreeCopyWithImpl<$Res, DevicesTree>;
  @useResult
  $Res call(
      {Root root,
      List<Base> bases,
      List<Repeater> repeaters,
      List<Remote> remotes});

  $RootCopyWith<$Res> get root;
}

/// @nodoc
class _$DevicesTreeCopyWithImpl<$Res, $Val extends DevicesTree>
    implements $DevicesTreeCopyWith<$Res> {
  _$DevicesTreeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? root = null,
    Object? bases = null,
    Object? repeaters = null,
    Object? remotes = null,
  }) {
    return _then(_value.copyWith(
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as Root,
      bases: null == bases
          ? _value.bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<Base>,
      repeaters: null == repeaters
          ? _value.repeaters
          : repeaters // ignore: cast_nullable_to_non_nullable
              as List<Repeater>,
      remotes: null == remotes
          ? _value.remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<Remote>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RootCopyWith<$Res> get root {
    return $RootCopyWith<$Res>(_value.root, (value) {
      return _then(_value.copyWith(root: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DevicesTreeCopyWith<$Res>
    implements $DevicesTreeCopyWith<$Res> {
  factory _$$_DevicesTreeCopyWith(
          _$_DevicesTree value, $Res Function(_$_DevicesTree) then) =
      __$$_DevicesTreeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Root root,
      List<Base> bases,
      List<Repeater> repeaters,
      List<Remote> remotes});

  @override
  $RootCopyWith<$Res> get root;
}

/// @nodoc
class __$$_DevicesTreeCopyWithImpl<$Res>
    extends _$DevicesTreeCopyWithImpl<$Res, _$_DevicesTree>
    implements _$$_DevicesTreeCopyWith<$Res> {
  __$$_DevicesTreeCopyWithImpl(
      _$_DevicesTree _value, $Res Function(_$_DevicesTree) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? root = null,
    Object? bases = null,
    Object? repeaters = null,
    Object? remotes = null,
  }) {
    return _then(_$_DevicesTree(
      root: null == root
          ? _value.root
          : root // ignore: cast_nullable_to_non_nullable
              as Root,
      bases: null == bases
          ? _value._bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<Base>,
      repeaters: null == repeaters
          ? _value._repeaters
          : repeaters // ignore: cast_nullable_to_non_nullable
              as List<Repeater>,
      remotes: null == remotes
          ? _value._remotes
          : remotes // ignore: cast_nullable_to_non_nullable
              as List<Remote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DevicesTree with DiagnosticableTreeMixin implements _DevicesTree {
  const _$_DevicesTree(
      {required this.root,
      final List<Base> bases = const [],
      final List<Repeater> repeaters = const [],
      final List<Remote> remotes = const []})
      : _bases = bases,
        _repeaters = repeaters,
        _remotes = remotes;

  factory _$_DevicesTree.fromJson(Map<String, dynamic> json) =>
      _$$_DevicesTreeFromJson(json);

  @override
  final Root root;
  final List<Base> _bases;
  @override
  @JsonKey()
  List<Base> get bases {
    if (_bases is EqualUnmodifiableListView) return _bases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bases);
  }

  final List<Repeater> _repeaters;
  @override
  @JsonKey()
  List<Repeater> get repeaters {
    if (_repeaters is EqualUnmodifiableListView) return _repeaters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repeaters);
  }

  final List<Remote> _remotes;
  @override
  @JsonKey()
  List<Remote> get remotes {
    if (_remotes is EqualUnmodifiableListView) return _remotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remotes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DevicesTree(root: $root, bases: $bases, repeaters: $repeaters, remotes: $remotes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DevicesTree'))
      ..add(DiagnosticsProperty('root', root))
      ..add(DiagnosticsProperty('bases', bases))
      ..add(DiagnosticsProperty('repeaters', repeaters))
      ..add(DiagnosticsProperty('remotes', remotes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DevicesTree &&
            (identical(other.root, root) || other.root == root) &&
            const DeepCollectionEquality().equals(other._bases, _bases) &&
            const DeepCollectionEquality()
                .equals(other._repeaters, _repeaters) &&
            const DeepCollectionEquality().equals(other._remotes, _remotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      root,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_repeaters),
      const DeepCollectionEquality().hash(_remotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DevicesTreeCopyWith<_$_DevicesTree> get copyWith =>
      __$$_DevicesTreeCopyWithImpl<_$_DevicesTree>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DevicesTreeToJson(
      this,
    );
  }
}

abstract class _DevicesTree implements DevicesTree {
  const factory _DevicesTree(
      {required final Root root,
      final List<Base> bases,
      final List<Repeater> repeaters,
      final List<Remote> remotes}) = _$_DevicesTree;

  factory _DevicesTree.fromJson(Map<String, dynamic> json) =
      _$_DevicesTree.fromJson;

  @override
  Root get root;
  @override
  List<Base> get bases;
  @override
  List<Repeater> get repeaters;
  @override
  List<Remote> get remotes;
  @override
  @JsonKey(ignore: true)
  _$$_DevicesTreeCopyWith<_$_DevicesTree> get copyWith =>
      throw _privateConstructorUsedError;
}
