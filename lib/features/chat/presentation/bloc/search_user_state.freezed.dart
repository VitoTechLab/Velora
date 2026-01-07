// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchUserState {

 String get query; List<UserSearchEntity> get results; List<UserSearchEntity> get followedUsers; List<UserSearchEntity> get recentSearches; bool get isLoading; bool get isLoadingFollowed; String? get error;
/// Create a copy of SearchUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUserStateCopyWith<SearchUserState> get copyWith => _$SearchUserStateCopyWithImpl<SearchUserState>(this as SearchUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUserState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.followedUsers, followedUsers)&&const DeepCollectionEquality().equals(other.recentSearches, recentSearches)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingFollowed, isLoadingFollowed) || other.isLoadingFollowed == isLoadingFollowed)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(followedUsers),const DeepCollectionEquality().hash(recentSearches),isLoading,isLoadingFollowed,error);

@override
String toString() {
  return 'SearchUserState(query: $query, results: $results, followedUsers: $followedUsers, recentSearches: $recentSearches, isLoading: $isLoading, isLoadingFollowed: $isLoadingFollowed, error: $error)';
}


}

/// @nodoc
abstract mixin class $SearchUserStateCopyWith<$Res>  {
  factory $SearchUserStateCopyWith(SearchUserState value, $Res Function(SearchUserState) _then) = _$SearchUserStateCopyWithImpl;
@useResult
$Res call({
 String query, List<UserSearchEntity> results, List<UserSearchEntity> followedUsers, List<UserSearchEntity> recentSearches, bool isLoading, bool isLoadingFollowed, String? error
});




}
/// @nodoc
class _$SearchUserStateCopyWithImpl<$Res>
    implements $SearchUserStateCopyWith<$Res> {
  _$SearchUserStateCopyWithImpl(this._self, this._then);

  final SearchUserState _self;
  final $Res Function(SearchUserState) _then;

/// Create a copy of SearchUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? results = null,Object? followedUsers = null,Object? recentSearches = null,Object? isLoading = null,Object? isLoadingFollowed = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,followedUsers: null == followedUsers ? _self.followedUsers : followedUsers // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,recentSearches: null == recentSearches ? _self.recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingFollowed: null == isLoadingFollowed ? _self.isLoadingFollowed : isLoadingFollowed // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchUserState].
extension SearchUserStatePatterns on SearchUserState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchUserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchUserState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchUserState value)  $default,){
final _that = this;
switch (_that) {
case _SearchUserState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchUserState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchUserState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<UserSearchEntity> results,  List<UserSearchEntity> followedUsers,  List<UserSearchEntity> recentSearches,  bool isLoading,  bool isLoadingFollowed,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchUserState() when $default != null:
return $default(_that.query,_that.results,_that.followedUsers,_that.recentSearches,_that.isLoading,_that.isLoadingFollowed,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<UserSearchEntity> results,  List<UserSearchEntity> followedUsers,  List<UserSearchEntity> recentSearches,  bool isLoading,  bool isLoadingFollowed,  String? error)  $default,) {final _that = this;
switch (_that) {
case _SearchUserState():
return $default(_that.query,_that.results,_that.followedUsers,_that.recentSearches,_that.isLoading,_that.isLoadingFollowed,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<UserSearchEntity> results,  List<UserSearchEntity> followedUsers,  List<UserSearchEntity> recentSearches,  bool isLoading,  bool isLoadingFollowed,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SearchUserState() when $default != null:
return $default(_that.query,_that.results,_that.followedUsers,_that.recentSearches,_that.isLoading,_that.isLoadingFollowed,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SearchUserState implements SearchUserState {
  const _SearchUserState({this.query = '', final  List<UserSearchEntity> results = const [], final  List<UserSearchEntity> followedUsers = const [], final  List<UserSearchEntity> recentSearches = const [], this.isLoading = false, this.isLoadingFollowed = false, this.error}): _results = results,_followedUsers = followedUsers,_recentSearches = recentSearches;
  

@override@JsonKey() final  String query;
 final  List<UserSearchEntity> _results;
@override@JsonKey() List<UserSearchEntity> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<UserSearchEntity> _followedUsers;
@override@JsonKey() List<UserSearchEntity> get followedUsers {
  if (_followedUsers is EqualUnmodifiableListView) return _followedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_followedUsers);
}

 final  List<UserSearchEntity> _recentSearches;
@override@JsonKey() List<UserSearchEntity> get recentSearches {
  if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentSearches);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingFollowed;
@override final  String? error;

/// Create a copy of SearchUserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchUserStateCopyWith<_SearchUserState> get copyWith => __$SearchUserStateCopyWithImpl<_SearchUserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchUserState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._followedUsers, _followedUsers)&&const DeepCollectionEquality().equals(other._recentSearches, _recentSearches)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingFollowed, isLoadingFollowed) || other.isLoadingFollowed == isLoadingFollowed)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_followedUsers),const DeepCollectionEquality().hash(_recentSearches),isLoading,isLoadingFollowed,error);

@override
String toString() {
  return 'SearchUserState(query: $query, results: $results, followedUsers: $followedUsers, recentSearches: $recentSearches, isLoading: $isLoading, isLoadingFollowed: $isLoadingFollowed, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SearchUserStateCopyWith<$Res> implements $SearchUserStateCopyWith<$Res> {
  factory _$SearchUserStateCopyWith(_SearchUserState value, $Res Function(_SearchUserState) _then) = __$SearchUserStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<UserSearchEntity> results, List<UserSearchEntity> followedUsers, List<UserSearchEntity> recentSearches, bool isLoading, bool isLoadingFollowed, String? error
});




}
/// @nodoc
class __$SearchUserStateCopyWithImpl<$Res>
    implements _$SearchUserStateCopyWith<$Res> {
  __$SearchUserStateCopyWithImpl(this._self, this._then);

  final _SearchUserState _self;
  final $Res Function(_SearchUserState) _then;

/// Create a copy of SearchUserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? followedUsers = null,Object? recentSearches = null,Object? isLoading = null,Object? isLoadingFollowed = null,Object? error = freezed,}) {
  return _then(_SearchUserState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,followedUsers: null == followedUsers ? _self._followedUsers : followedUsers // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,recentSearches: null == recentSearches ? _self._recentSearches : recentSearches // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingFollowed: null == isLoadingFollowed ? _self.isLoadingFollowed : isLoadingFollowed // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
