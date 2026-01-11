// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUserState {
  String get query => throw _privateConstructorUsedError;
  List<UserSearchEntity> get results => throw _privateConstructorUsedError;
  List<UserSearchEntity> get followedUsers =>
      throw _privateConstructorUsedError;
  List<UserSearchEntity> get recentSearches =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingFollowed => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchUserStateCopyWith<SearchUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserStateCopyWith<$Res> {
  factory $SearchUserStateCopyWith(
          SearchUserState value, $Res Function(SearchUserState) then) =
      _$SearchUserStateCopyWithImpl<$Res, SearchUserState>;
  @useResult
  $Res call(
      {String query,
      List<UserSearchEntity> results,
      List<UserSearchEntity> followedUsers,
      List<UserSearchEntity> recentSearches,
      bool isLoading,
      bool isLoadingFollowed,
      String? error});
}

/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res, $Val extends SearchUserState>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? results = null,
    Object? followedUsers = null,
    Object? recentSearches = null,
    Object? isLoading = null,
    Object? isLoadingFollowed = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      followedUsers: null == followedUsers
          ? _value.followedUsers
          : followedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      recentSearches: null == recentSearches
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingFollowed: null == isLoadingFollowed
          ? _value.isLoadingFollowed
          : isLoadingFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUserStateImplCopyWith<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  factory _$$SearchUserStateImplCopyWith(_$SearchUserStateImpl value,
          $Res Function(_$SearchUserStateImpl) then) =
      __$$SearchUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<UserSearchEntity> results,
      List<UserSearchEntity> followedUsers,
      List<UserSearchEntity> recentSearches,
      bool isLoading,
      bool isLoadingFollowed,
      String? error});
}

/// @nodoc
class __$$SearchUserStateImplCopyWithImpl<$Res>
    extends _$SearchUserStateCopyWithImpl<$Res, _$SearchUserStateImpl>
    implements _$$SearchUserStateImplCopyWith<$Res> {
  __$$SearchUserStateImplCopyWithImpl(
      _$SearchUserStateImpl _value, $Res Function(_$SearchUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? results = null,
    Object? followedUsers = null,
    Object? recentSearches = null,
    Object? isLoading = null,
    Object? isLoadingFollowed = null,
    Object? error = freezed,
  }) {
    return _then(_$SearchUserStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      followedUsers: null == followedUsers
          ? _value._followedUsers
          : followedUsers // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      recentSearches: null == recentSearches
          ? _value._recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<UserSearchEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingFollowed: null == isLoadingFollowed
          ? _value.isLoadingFollowed
          : isLoadingFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchUserStateImpl implements _SearchUserState {
  const _$SearchUserStateImpl(
      {this.query = '',
      final List<UserSearchEntity> results = const [],
      final List<UserSearchEntity> followedUsers = const [],
      final List<UserSearchEntity> recentSearches = const [],
      this.isLoading = false,
      this.isLoadingFollowed = false,
      this.error})
      : _results = results,
        _followedUsers = followedUsers,
        _recentSearches = recentSearches;

  @override
  @JsonKey()
  final String query;
  final List<UserSearchEntity> _results;
  @override
  @JsonKey()
  List<UserSearchEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final List<UserSearchEntity> _followedUsers;
  @override
  @JsonKey()
  List<UserSearchEntity> get followedUsers {
    if (_followedUsers is EqualUnmodifiableListView) return _followedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followedUsers);
  }

  final List<UserSearchEntity> _recentSearches;
  @override
  @JsonKey()
  List<UserSearchEntity> get recentSearches {
    if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSearches);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingFollowed;
  @override
  final String? error;

  @override
  String toString() {
    return 'SearchUserState(query: $query, results: $results, followedUsers: $followedUsers, recentSearches: $recentSearches, isLoading: $isLoading, isLoadingFollowed: $isLoadingFollowed, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUserStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other._followedUsers, _followedUsers) &&
            const DeepCollectionEquality()
                .equals(other._recentSearches, _recentSearches) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingFollowed, isLoadingFollowed) ||
                other.isLoadingFollowed == isLoadingFollowed) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_results),
      const DeepCollectionEquality().hash(_followedUsers),
      const DeepCollectionEquality().hash(_recentSearches),
      isLoading,
      isLoadingFollowed,
      error);

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      __$$SearchUserStateImplCopyWithImpl<_$SearchUserStateImpl>(
          this, _$identity);
}

abstract class _SearchUserState implements SearchUserState {
  const factory _SearchUserState(
      {final String query,
      final List<UserSearchEntity> results,
      final List<UserSearchEntity> followedUsers,
      final List<UserSearchEntity> recentSearches,
      final bool isLoading,
      final bool isLoadingFollowed,
      final String? error}) = _$SearchUserStateImpl;

  @override
  String get query;
  @override
  List<UserSearchEntity> get results;
  @override
  List<UserSearchEntity> get followedUsers;
  @override
  List<UserSearchEntity> get recentSearches;
  @override
  bool get isLoading;
  @override
  bool get isLoadingFollowed;
  @override
  String? get error;

  /// Create a copy of SearchUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchUserStateImplCopyWith<_$SearchUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
