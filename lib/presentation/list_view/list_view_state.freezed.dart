// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListViewStateTearOff {
  const _$ListViewStateTearOff();

  _ListViewState call({List<Item> items = const <Item>[]}) {
    return _ListViewState(
      items: items,
    );
  }
}

/// @nodoc
const $ListViewState = _$ListViewStateTearOff();

/// @nodoc
mixin _$ListViewState {
  List<Item> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListViewStateCopyWith<ListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListViewStateCopyWith<$Res> {
  factory $ListViewStateCopyWith(
          ListViewState value, $Res Function(ListViewState) then) =
      _$ListViewStateCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class _$ListViewStateCopyWithImpl<$Res>
    implements $ListViewStateCopyWith<$Res> {
  _$ListViewStateCopyWithImpl(this._value, this._then);

  final ListViewState _value;
  // ignore: unused_field
  final $Res Function(ListViewState) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$ListViewStateCopyWith<$Res>
    implements $ListViewStateCopyWith<$Res> {
  factory _$ListViewStateCopyWith(
          _ListViewState value, $Res Function(_ListViewState) then) =
      __$ListViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Item> items});
}

/// @nodoc
class __$ListViewStateCopyWithImpl<$Res>
    extends _$ListViewStateCopyWithImpl<$Res>
    implements _$ListViewStateCopyWith<$Res> {
  __$ListViewStateCopyWithImpl(
      _ListViewState _value, $Res Function(_ListViewState) _then)
      : super(_value, (v) => _then(v as _ListViewState));

  @override
  _ListViewState get _value => super._value as _ListViewState;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_ListViewState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_ListViewState with DiagnosticableTreeMixin implements _ListViewState {
  const _$_ListViewState({this.items = const <Item>[]});

  @JsonKey(defaultValue: const <Item>[])
  @override
  final List<Item> items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListViewState(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListViewState'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListViewState &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$ListViewStateCopyWith<_ListViewState> get copyWith =>
      __$ListViewStateCopyWithImpl<_ListViewState>(this, _$identity);
}

abstract class _ListViewState implements ListViewState {
  const factory _ListViewState({List<Item> items}) = _$_ListViewState;

  @override
  List<Item> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListViewStateCopyWith<_ListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
