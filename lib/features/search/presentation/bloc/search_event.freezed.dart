// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchUsersEvent value)?  searchUsers,TResult Function( SearchCampaignsEvent value)?  searchCampaigns,TResult Function( SearchAllEvent value)?  searchAll,TResult Function( ClearSearchEvent value)?  clearSearch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that);case SearchAllEvent() when searchAll != null:
return searchAll(_that);case ClearSearchEvent() when clearSearch != null:
return clearSearch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchUsersEvent value)  searchUsers,required TResult Function( SearchCampaignsEvent value)  searchCampaigns,required TResult Function( SearchAllEvent value)  searchAll,required TResult Function( ClearSearchEvent value)  clearSearch,}){
final _that = this;
switch (_that) {
case SearchUsersEvent():
return searchUsers(_that);case SearchCampaignsEvent():
return searchCampaigns(_that);case SearchAllEvent():
return searchAll(_that);case ClearSearchEvent():
return clearSearch(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchUsersEvent value)?  searchUsers,TResult? Function( SearchCampaignsEvent value)?  searchCampaigns,TResult? Function( SearchAllEvent value)?  searchAll,TResult? Function( ClearSearchEvent value)?  clearSearch,}){
final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that);case SearchAllEvent() when searchAll != null:
return searchAll(_that);case ClearSearchEvent() when clearSearch != null:
return clearSearch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  String scope,  int limit)?  searchUsers,TResult Function( String query,  String? categoryId,  int limit)?  searchCampaigns,TResult Function( String query)?  searchAll,TResult Function()?  clearSearch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.query,_that.scope,_that.limit);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case SearchAllEvent() when searchAll != null:
return searchAll(_that.query);case ClearSearchEvent() when clearSearch != null:
return clearSearch();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  String scope,  int limit)  searchUsers,required TResult Function( String query,  String? categoryId,  int limit)  searchCampaigns,required TResult Function( String query)  searchAll,required TResult Function()  clearSearch,}) {final _that = this;
switch (_that) {
case SearchUsersEvent():
return searchUsers(_that.query,_that.scope,_that.limit);case SearchCampaignsEvent():
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case SearchAllEvent():
return searchAll(_that.query);case ClearSearchEvent():
return clearSearch();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  String scope,  int limit)?  searchUsers,TResult? Function( String query,  String? categoryId,  int limit)?  searchCampaigns,TResult? Function( String query)?  searchAll,TResult? Function()?  clearSearch,}) {final _that = this;
switch (_that) {
case SearchUsersEvent() when searchUsers != null:
return searchUsers(_that.query,_that.scope,_that.limit);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case SearchAllEvent() when searchAll != null:
return searchAll(_that.query);case ClearSearchEvent() when clearSearch != null:
return clearSearch();case _:
  return null;

}
}

}

/// @nodoc


class SearchUsersEvent implements SearchEvent {
  const SearchUsersEvent({required this.query, this.scope = 'global', this.limit = 20});
  

 final  String query;
@JsonKey() final  String scope;
@JsonKey() final  int limit;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchUsersEventCopyWith<SearchUsersEvent> get copyWith => _$SearchUsersEventCopyWithImpl<SearchUsersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchUsersEvent&&(identical(other.query, query) || other.query == query)&&(identical(other.scope, scope) || other.scope == scope)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,query,scope,limit);

@override
String toString() {
  return 'SearchEvent.searchUsers(query: $query, scope: $scope, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SearchUsersEventCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(SearchUsersEvent value, $Res Function(SearchUsersEvent) _then) = _$SearchUsersEventCopyWithImpl;
@useResult
$Res call({
 String query, String scope, int limit
});




}
/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._self, this._then);

  final SearchUsersEvent _self;
  final $Res Function(SearchUsersEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? scope = null,Object? limit = null,}) {
  return _then(SearchUsersEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,scope: null == scope ? _self.scope : scope // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SearchCampaignsEvent implements SearchEvent {
  const SearchCampaignsEvent({required this.query, this.categoryId, this.limit = 20});
  

 final  String query;
 final  String? categoryId;
@JsonKey() final  int limit;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCampaignsEventCopyWith<SearchCampaignsEvent> get copyWith => _$SearchCampaignsEventCopyWithImpl<SearchCampaignsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCampaignsEvent&&(identical(other.query, query) || other.query == query)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,query,categoryId,limit);

@override
String toString() {
  return 'SearchEvent.searchCampaigns(query: $query, categoryId: $categoryId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SearchCampaignsEventCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchCampaignsEventCopyWith(SearchCampaignsEvent value, $Res Function(SearchCampaignsEvent) _then) = _$SearchCampaignsEventCopyWithImpl;
@useResult
$Res call({
 String query, String? categoryId, int limit
});




}
/// @nodoc
class _$SearchCampaignsEventCopyWithImpl<$Res>
    implements $SearchCampaignsEventCopyWith<$Res> {
  _$SearchCampaignsEventCopyWithImpl(this._self, this._then);

  final SearchCampaignsEvent _self;
  final $Res Function(SearchCampaignsEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? categoryId = freezed,Object? limit = null,}) {
  return _then(SearchCampaignsEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SearchAllEvent implements SearchEvent {
  const SearchAllEvent({required this.query});
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchAllEventCopyWith<SearchAllEvent> get copyWith => _$SearchAllEventCopyWithImpl<SearchAllEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAllEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.searchAll(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchAllEventCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchAllEventCopyWith(SearchAllEvent value, $Res Function(SearchAllEvent) _then) = _$SearchAllEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchAllEventCopyWithImpl<$Res>
    implements $SearchAllEventCopyWith<$Res> {
  _$SearchAllEventCopyWithImpl(this._self, this._then);

  final SearchAllEvent _self;
  final $Res Function(SearchAllEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchAllEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearSearchEvent implements SearchEvent {
  const ClearSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.clearSearch()';
}


}




// dart format on
