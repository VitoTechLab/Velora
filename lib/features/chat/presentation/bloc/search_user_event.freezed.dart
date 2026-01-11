// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchQueryChanged,
    required TResult Function() clearSearch,
    required TResult Function() loadFollowedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchQueryChanged,
    TResult? Function()? clearSearch,
    TResult? Function()? loadFollowedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchQueryChanged,
    TResult Function()? clearSearch,
    TResult Function()? loadFollowedUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
    required TResult Function(ClearSearch value) clearSearch,
    required TResult Function(LoadFollowedUsers value) loadFollowedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(ClearSearch value)? clearSearch,
    TResult? Function(LoadFollowedUsers value)? loadFollowedUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    TResult Function(ClearSearch value)? clearSearch,
    TResult Function(LoadFollowedUsers value)? loadFollowedUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserEventCopyWith<$Res> {
  factory $SearchUserEventCopyWith(
          SearchUserEvent value, $Res Function(SearchUserEvent) then) =
      _$SearchUserEventCopyWithImpl<$Res, SearchUserEvent>;
}

/// @nodoc
class _$SearchUserEventCopyWithImpl<$Res, $Val extends SearchUserEvent>
    implements $SearchUserEventCopyWith<$Res> {
  _$SearchUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchQueryChangedImplCopyWith<$Res> {
  factory _$$SearchQueryChangedImplCopyWith(_$SearchQueryChangedImpl value,
          $Res Function(_$SearchQueryChangedImpl) then) =
      __$$SearchQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueryChangedImplCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$SearchQueryChangedImpl>
    implements _$$SearchQueryChangedImplCopyWith<$Res> {
  __$$SearchQueryChangedImplCopyWithImpl(_$SearchQueryChangedImpl _value,
      $Res Function(_$SearchQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchQueryChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryChangedImpl implements SearchQueryChanged {
  const _$SearchQueryChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUserEvent.searchQueryChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      __$$SearchQueryChangedImplCopyWithImpl<_$SearchQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchQueryChanged,
    required TResult Function() clearSearch,
    required TResult Function() loadFollowedUsers,
  }) {
    return searchQueryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchQueryChanged,
    TResult? Function()? clearSearch,
    TResult? Function()? loadFollowedUsers,
  }) {
    return searchQueryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchQueryChanged,
    TResult Function()? clearSearch,
    TResult Function()? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
    required TResult Function(ClearSearch value) clearSearch,
    required TResult Function(LoadFollowedUsers value) loadFollowedUsers,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(ClearSearch value)? clearSearch,
    TResult? Function(LoadFollowedUsers value)? loadFollowedUsers,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    TResult Function(ClearSearch value)? clearSearch,
    TResult Function(LoadFollowedUsers value)? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class SearchQueryChanged implements SearchUserEvent {
  const factory SearchQueryChanged(final String query) =
      _$SearchQueryChangedImpl;

  String get query;

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchQueryChangedImplCopyWith<_$SearchQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchImplCopyWith<$Res> {
  factory _$$ClearSearchImplCopyWith(
          _$ClearSearchImpl value, $Res Function(_$ClearSearchImpl) then) =
      __$$ClearSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchImplCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$ClearSearchImpl>
    implements _$$ClearSearchImplCopyWith<$Res> {
  __$$ClearSearchImplCopyWithImpl(
      _$ClearSearchImpl _value, $Res Function(_$ClearSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchImpl implements ClearSearch {
  const _$ClearSearchImpl();

  @override
  String toString() {
    return 'SearchUserEvent.clearSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchQueryChanged,
    required TResult Function() clearSearch,
    required TResult Function() loadFollowedUsers,
  }) {
    return clearSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchQueryChanged,
    TResult? Function()? clearSearch,
    TResult? Function()? loadFollowedUsers,
  }) {
    return clearSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchQueryChanged,
    TResult Function()? clearSearch,
    TResult Function()? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
    required TResult Function(ClearSearch value) clearSearch,
    required TResult Function(LoadFollowedUsers value) loadFollowedUsers,
  }) {
    return clearSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(ClearSearch value)? clearSearch,
    TResult? Function(LoadFollowedUsers value)? loadFollowedUsers,
  }) {
    return clearSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    TResult Function(ClearSearch value)? clearSearch,
    TResult Function(LoadFollowedUsers value)? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (clearSearch != null) {
      return clearSearch(this);
    }
    return orElse();
  }
}

abstract class ClearSearch implements SearchUserEvent {
  const factory ClearSearch() = _$ClearSearchImpl;
}

/// @nodoc
abstract class _$$LoadFollowedUsersImplCopyWith<$Res> {
  factory _$$LoadFollowedUsersImplCopyWith(_$LoadFollowedUsersImpl value,
          $Res Function(_$LoadFollowedUsersImpl) then) =
      __$$LoadFollowedUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFollowedUsersImplCopyWithImpl<$Res>
    extends _$SearchUserEventCopyWithImpl<$Res, _$LoadFollowedUsersImpl>
    implements _$$LoadFollowedUsersImplCopyWith<$Res> {
  __$$LoadFollowedUsersImplCopyWithImpl(_$LoadFollowedUsersImpl _value,
      $Res Function(_$LoadFollowedUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFollowedUsersImpl implements LoadFollowedUsers {
  const _$LoadFollowedUsersImpl();

  @override
  String toString() {
    return 'SearchUserEvent.loadFollowedUsers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFollowedUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) searchQueryChanged,
    required TResult Function() clearSearch,
    required TResult Function() loadFollowedUsers,
  }) {
    return loadFollowedUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? searchQueryChanged,
    TResult? Function()? clearSearch,
    TResult? Function()? loadFollowedUsers,
  }) {
    return loadFollowedUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? searchQueryChanged,
    TResult Function()? clearSearch,
    TResult Function()? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (loadFollowedUsers != null) {
      return loadFollowedUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchQueryChanged value) searchQueryChanged,
    required TResult Function(ClearSearch value) clearSearch,
    required TResult Function(LoadFollowedUsers value) loadFollowedUsers,
  }) {
    return loadFollowedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(ClearSearch value)? clearSearch,
    TResult? Function(LoadFollowedUsers value)? loadFollowedUsers,
  }) {
    return loadFollowedUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchQueryChanged value)? searchQueryChanged,
    TResult Function(ClearSearch value)? clearSearch,
    TResult Function(LoadFollowedUsers value)? loadFollowedUsers,
    required TResult orElse(),
  }) {
    if (loadFollowedUsers != null) {
      return loadFollowedUsers(this);
    }
    return orElse();
  }
}

abstract class LoadFollowedUsers implements SearchUserEvent {
  const factory LoadFollowedUsers() = _$LoadFollowedUsersImpl;
}
