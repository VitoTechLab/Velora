// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUserEvent()';
}


}

/// @nodoc
class $SearchUserEventCopyWith<$Res>  {
$SearchUserEventCopyWith(SearchUserEvent _, $Res Function(SearchUserEvent) __);
}


/// Adds pattern-matching-related methods to [SearchUserEvent].
extension SearchUserEventPatterns on SearchUserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchQueryChanged value)?  searchQueryChanged,TResult Function( ClearSearch value)?  clearSearch,TResult Function( LoadFollowedUsers value)?  loadFollowedUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case ClearSearch() when clearSearch != null:
return clearSearch(_that);case LoadFollowedUsers() when loadFollowedUsers != null:
return loadFollowedUsers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchQueryChanged value)  searchQueryChanged,required TResult Function( ClearSearch value)  clearSearch,required TResult Function( LoadFollowedUsers value)  loadFollowedUsers,}){
final _that = this;
switch (_that) {
case SearchQueryChanged():
return searchQueryChanged(_that);case ClearSearch():
return clearSearch(_that);case LoadFollowedUsers():
return loadFollowedUsers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchQueryChanged value)?  searchQueryChanged,TResult? Function( ClearSearch value)?  clearSearch,TResult? Function( LoadFollowedUsers value)?  loadFollowedUsers,}){
final _that = this;
switch (_that) {
case SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case ClearSearch() when clearSearch != null:
return clearSearch(_that);case LoadFollowedUsers() when loadFollowedUsers != null:
return loadFollowedUsers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  searchQueryChanged,TResult Function()?  clearSearch,TResult Function()?  loadFollowedUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case ClearSearch() when clearSearch != null:
return clearSearch();case LoadFollowedUsers() when loadFollowedUsers != null:
return loadFollowedUsers();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  searchQueryChanged,required TResult Function()  clearSearch,required TResult Function()  loadFollowedUsers,}) {final _that = this;
switch (_that) {
case SearchQueryChanged():
return searchQueryChanged(_that.query);case ClearSearch():
return clearSearch();case LoadFollowedUsers():
return loadFollowedUsers();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  searchQueryChanged,TResult? Function()?  clearSearch,TResult? Function()?  loadFollowedUsers,}) {final _that = this;
switch (_that) {
case SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case ClearSearch() when clearSearch != null:
return clearSearch();case LoadFollowedUsers() when loadFollowedUsers != null:
return loadFollowedUsers();case _:
  return null;

}
}

}

/// @nodoc


class SearchQueryChanged implements SearchUserEvent {
  const SearchQueryChanged(this.query);
  

 final  String query;

/// Create a copy of SearchUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryChangedCopyWith<SearchQueryChanged> get copyWith => _$SearchQueryChangedCopyWithImpl<SearchQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchUserEvent.searchQueryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchQueryChangedCopyWith<$Res> implements $SearchUserEventCopyWith<$Res> {
  factory $SearchQueryChangedCopyWith(SearchQueryChanged value, $Res Function(SearchQueryChanged) _then) = _$SearchQueryChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchQueryChangedCopyWithImpl<$Res>
    implements $SearchQueryChangedCopyWith<$Res> {
  _$SearchQueryChangedCopyWithImpl(this._self, this._then);

  final SearchQueryChanged _self;
  final $Res Function(SearchQueryChanged) _then;

/// Create a copy of SearchUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearSearch implements SearchUserEvent {
  const ClearSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUserEvent.clearSearch()';
}


}




/// @nodoc


class LoadFollowedUsers implements SearchUserEvent {
  const LoadFollowedUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFollowedUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchUserEvent.loadFollowedUsers()';
}


}




// dart format on
