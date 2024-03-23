// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'HomeEvent.search(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomeEvent {
  const factory _Search({required final String search}) = _$SearchImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookNewImplCopyWith<$Res> {
  factory _$$GetBookNewImplCopyWith(
          _$GetBookNewImpl value, $Res Function(_$GetBookNewImpl) then) =
      __$$GetBookNewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBookNewImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBookNewImpl>
    implements _$$GetBookNewImplCopyWith<$Res> {
  __$$GetBookNewImplCopyWithImpl(
      _$GetBookNewImpl _value, $Res Function(_$GetBookNewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBookNewImpl implements _GetBookNew {
  const _$GetBookNewImpl();

  @override
  String toString() {
    return 'HomeEvent.getBookNew()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBookNewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return getBookNew();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return getBookNew?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (getBookNew != null) {
      return getBookNew();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return getBookNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return getBookNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (getBookNew != null) {
      return getBookNew(this);
    }
    return orElse();
  }
}

abstract class _GetBookNew implements HomeEvent {
  const factory _GetBookNew() = _$GetBookNewImpl;
}

/// @nodoc
abstract class _$$GetBookSearhImplCopyWith<$Res> {
  factory _$$GetBookSearhImplCopyWith(
          _$GetBookSearhImpl value, $Res Function(_$GetBookSearhImpl) then) =
      __$$GetBookSearhImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$GetBookSearhImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetBookSearhImpl>
    implements _$$GetBookSearhImplCopyWith<$Res> {
  __$$GetBookSearhImplCopyWithImpl(
      _$GetBookSearhImpl _value, $Res Function(_$GetBookSearhImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$GetBookSearhImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBookSearhImpl implements _GetBookSearh {
  const _$GetBookSearhImpl({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'HomeEvent.getBookSearch(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookSearhImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookSearhImplCopyWith<_$GetBookSearhImpl> get copyWith =>
      __$$GetBookSearhImplCopyWithImpl<_$GetBookSearhImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return getBookSearch(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return getBookSearch?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (getBookSearch != null) {
      return getBookSearch(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return getBookSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return getBookSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (getBookSearch != null) {
      return getBookSearch(this);
    }
    return orElse();
  }
}

abstract class _GetBookSearh implements HomeEvent {
  const factory _GetBookSearh({required final String search}) =
      _$GetBookSearhImpl;

  String get search;
  @JsonKey(ignore: true)
  _$$GetBookSearhImplCopyWith<_$GetBookSearhImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImagePokemonImplCopyWith<$Res> {
  factory _$$GetImagePokemonImplCopyWith(_$GetImagePokemonImpl value,
          $Res Function(_$GetImagePokemonImpl) then) =
      __$$GetImagePokemonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImagePokemonImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetImagePokemonImpl>
    implements _$$GetImagePokemonImplCopyWith<$Res> {
  __$$GetImagePokemonImplCopyWithImpl(
      _$GetImagePokemonImpl _value, $Res Function(_$GetImagePokemonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImagePokemonImpl implements _GetImagePokemon {
  const _$GetImagePokemonImpl();

  @override
  String toString() {
    return 'HomeEvent.getImagePokemon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImagePokemonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return getImagePokemon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return getImagePokemon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (getImagePokemon != null) {
      return getImagePokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return getImagePokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return getImagePokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (getImagePokemon != null) {
      return getImagePokemon(this);
    }
    return orElse();
  }
}

abstract class _GetImagePokemon implements HomeEvent {
  const factory _GetImagePokemon() = _$GetImagePokemonImpl;
}

/// @nodoc
abstract class _$$RefreshBooksImplCopyWith<$Res> {
  factory _$$RefreshBooksImplCopyWith(
          _$RefreshBooksImpl value, $Res Function(_$RefreshBooksImpl) then) =
      __$$RefreshBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshBooksImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshBooksImpl>
    implements _$$RefreshBooksImplCopyWith<$Res> {
  __$$RefreshBooksImplCopyWithImpl(
      _$RefreshBooksImpl _value, $Res Function(_$RefreshBooksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshBooksImpl implements _RefreshBooks {
  const _$RefreshBooksImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return refreshBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return refreshBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (refreshBooks != null) {
      return refreshBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return refreshBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return refreshBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (refreshBooks != null) {
      return refreshBooks(this);
    }
    return orElse();
  }
}

abstract class _RefreshBooks implements HomeEvent {
  const factory _RefreshBooks() = _$RefreshBooksImpl;
}

/// @nodoc
abstract class _$$InvalidateImplCopyWith<$Res> {
  factory _$$InvalidateImplCopyWith(
          _$InvalidateImpl value, $Res Function(_$InvalidateImpl) then) =
      __$$InvalidateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InvalidateImpl>
    implements _$$InvalidateImplCopyWith<$Res> {
  __$$InvalidateImplCopyWithImpl(
      _$InvalidateImpl _value, $Res Function(_$InvalidateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidateImpl implements _Invalidate {
  const _$InvalidateImpl();

  @override
  String toString() {
    return 'HomeEvent.invalidate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return invalidate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return invalidate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (invalidate != null) {
      return invalidate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return invalidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return invalidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (invalidate != null) {
      return invalidate(this);
    }
    return orElse();
  }
}

abstract class _Invalidate implements HomeEvent {
  const factory _Invalidate() = _$InvalidateImpl;
}

/// @nodoc
abstract class _$$GetScrollControllerImplCopyWith<$Res> {
  factory _$$GetScrollControllerImplCopyWith(_$GetScrollControllerImpl value,
          $Res Function(_$GetScrollControllerImpl) then) =
      __$$GetScrollControllerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetScrollControllerImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetScrollControllerImpl>
    implements _$$GetScrollControllerImplCopyWith<$Res> {
  __$$GetScrollControllerImplCopyWithImpl(_$GetScrollControllerImpl _value,
      $Res Function(_$GetScrollControllerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetScrollControllerImpl implements _GetScrollController {
  const _$GetScrollControllerImpl();

  @override
  String toString() {
    return 'HomeEvent.initScrollController()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScrollControllerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String search) search,
    required TResult Function() getBookNew,
    required TResult Function(String search) getBookSearch,
    required TResult Function() getImagePokemon,
    required TResult Function() refreshBooks,
    required TResult Function() invalidate,
    required TResult Function() initScrollController,
  }) {
    return initScrollController();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String search)? search,
    TResult? Function()? getBookNew,
    TResult? Function(String search)? getBookSearch,
    TResult? Function()? getImagePokemon,
    TResult? Function()? refreshBooks,
    TResult? Function()? invalidate,
    TResult? Function()? initScrollController,
  }) {
    return initScrollController?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String search)? search,
    TResult Function()? getBookNew,
    TResult Function(String search)? getBookSearch,
    TResult Function()? getImagePokemon,
    TResult Function()? refreshBooks,
    TResult Function()? invalidate,
    TResult Function()? initScrollController,
    required TResult orElse(),
  }) {
    if (initScrollController != null) {
      return initScrollController();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Search value) search,
    required TResult Function(_GetBookNew value) getBookNew,
    required TResult Function(_GetBookSearh value) getBookSearch,
    required TResult Function(_GetImagePokemon value) getImagePokemon,
    required TResult Function(_RefreshBooks value) refreshBooks,
    required TResult Function(_Invalidate value) invalidate,
    required TResult Function(_GetScrollController value) initScrollController,
  }) {
    return initScrollController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Search value)? search,
    TResult? Function(_GetBookNew value)? getBookNew,
    TResult? Function(_GetBookSearh value)? getBookSearch,
    TResult? Function(_GetImagePokemon value)? getImagePokemon,
    TResult? Function(_RefreshBooks value)? refreshBooks,
    TResult? Function(_Invalidate value)? invalidate,
    TResult? Function(_GetScrollController value)? initScrollController,
  }) {
    return initScrollController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Search value)? search,
    TResult Function(_GetBookNew value)? getBookNew,
    TResult Function(_GetBookSearh value)? getBookSearch,
    TResult Function(_GetImagePokemon value)? getImagePokemon,
    TResult Function(_RefreshBooks value)? refreshBooks,
    TResult Function(_Invalidate value)? invalidate,
    TResult Function(_GetScrollController value)? initScrollController,
    required TResult orElse(),
  }) {
    if (initScrollController != null) {
      return initScrollController(this);
    }
    return orElse();
  }
}

abstract class _GetScrollController implements HomeEvent {
  const factory _GetScrollController() = _$GetScrollControllerImpl;
}

/// @nodoc
mixin _$HomeState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  List<BookEntity> get books => throw _privateConstructorUsedError;
  List<BookEntity> get searchBooks => throw _privateConstructorUsedError;
  List<String> get historyList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isDone,
      List<BookEntity> books,
      List<BookEntity> searchBooks,
      List<String> historyList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? books = null,
    Object? searchBooks = null,
    Object? historyList = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      searchBooks: null == searchBooks
          ? _value.searchBooks
          : searchBooks // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      historyList: null == historyList
          ? _value.historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isDone,
      List<BookEntity> books,
      List<BookEntity> searchBooks,
      List<String> historyList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? isDone = null,
    Object? books = null,
    Object? searchBooks = null,
    Object? historyList = null,
  }) {
    return _then(_$InitialImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      searchBooks: null == searchBooks
          ? _value._searchBooks
          : searchBooks // ignore: cast_nullable_to_non_nullable
              as List<BookEntity>,
      historyList: null == historyList
          ? _value._historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.failure,
      this.isLoading = true,
      this.isDone = false,
      final List<BookEntity> books = const [],
      final List<BookEntity> searchBooks = const [],
      final List<String> historyList = const []})
      : _books = books,
        _searchBooks = searchBooks,
        _historyList = historyList;

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDone;
  final List<BookEntity> _books;
  @override
  @JsonKey()
  List<BookEntity> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<BookEntity> _searchBooks;
  @override
  @JsonKey()
  List<BookEntity> get searchBooks {
    if (_searchBooks is EqualUnmodifiableListView) return _searchBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchBooks);
  }

  final List<String> _historyList;
  @override
  @JsonKey()
  List<String> get historyList {
    if (_historyList is EqualUnmodifiableListView) return _historyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyList);
  }

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, isDone: $isDone, books: $books, searchBooks: $searchBooks, historyList: $historyList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality()
                .equals(other._searchBooks, _searchBooks) &&
            const DeepCollectionEquality()
                .equals(other._historyList, _historyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isDone,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_searchBooks),
      const DeepCollectionEquality().hash(_historyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final Failure? failure,
      final bool isLoading,
      final bool isDone,
      final List<BookEntity> books,
      final List<BookEntity> searchBooks,
      final List<String> historyList}) = _$InitialImpl;

  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isDone;
  @override
  List<BookEntity> get books;
  @override
  List<BookEntity> get searchBooks;
  @override
  List<String> get historyList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
