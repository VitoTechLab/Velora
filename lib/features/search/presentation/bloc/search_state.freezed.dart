// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 List<SearchUserResultModel> get users; List<SearchCampaignResultModel> get campaigns; bool get isLoadingUsers; bool get isLoadingCampaigns; String? get errorUsers; String? get errorCampaigns; String? get lastQuery;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.users, users)&&const DeepCollectionEquality().equals(other.campaigns, campaigns)&&(identical(other.isLoadingUsers, isLoadingUsers) || other.isLoadingUsers == isLoadingUsers)&&(identical(other.isLoadingCampaigns, isLoadingCampaigns) || other.isLoadingCampaigns == isLoadingCampaigns)&&(identical(other.errorUsers, errorUsers) || other.errorUsers == errorUsers)&&(identical(other.errorCampaigns, errorCampaigns) || other.errorCampaigns == errorCampaigns)&&(identical(other.lastQuery, lastQuery) || other.lastQuery == lastQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),const DeepCollectionEquality().hash(campaigns),isLoadingUsers,isLoadingCampaigns,errorUsers,errorCampaigns,lastQuery);

@override
String toString() {
  return 'SearchState(users: $users, campaigns: $campaigns, isLoadingUsers: $isLoadingUsers, isLoadingCampaigns: $isLoadingCampaigns, errorUsers: $errorUsers, errorCampaigns: $errorCampaigns, lastQuery: $lastQuery)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<SearchUserResultModel> users, List<SearchCampaignResultModel> campaigns, bool isLoadingUsers, bool isLoadingCampaigns, String? errorUsers, String? errorCampaigns, String? lastQuery
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? campaigns = null,Object? isLoadingUsers = null,Object? isLoadingCampaigns = null,Object? errorUsers = freezed,Object? errorCampaigns = freezed,Object? lastQuery = freezed,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<SearchUserResultModel>,campaigns: null == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<SearchCampaignResultModel>,isLoadingUsers: null == isLoadingUsers ? _self.isLoadingUsers : isLoadingUsers // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCampaigns: null == isLoadingCampaigns ? _self.isLoadingCampaigns : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorUsers: freezed == errorUsers ? _self.errorUsers : errorUsers // ignore: cast_nullable_to_non_nullable
as String?,errorCampaigns: freezed == errorCampaigns ? _self.errorCampaigns : errorCampaigns // ignore: cast_nullable_to_non_nullable
as String?,lastQuery: freezed == lastQuery ? _self.lastQuery : lastQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchUserResultModel> users,  List<SearchCampaignResultModel> campaigns,  bool isLoadingUsers,  bool isLoadingCampaigns,  String? errorUsers,  String? errorCampaigns,  String? lastQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.users,_that.campaigns,_that.isLoadingUsers,_that.isLoadingCampaigns,_that.errorUsers,_that.errorCampaigns,_that.lastQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchUserResultModel> users,  List<SearchCampaignResultModel> campaigns,  bool isLoadingUsers,  bool isLoadingCampaigns,  String? errorUsers,  String? errorCampaigns,  String? lastQuery)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.users,_that.campaigns,_that.isLoadingUsers,_that.isLoadingCampaigns,_that.errorUsers,_that.errorCampaigns,_that.lastQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchUserResultModel> users,  List<SearchCampaignResultModel> campaigns,  bool isLoadingUsers,  bool isLoadingCampaigns,  String? errorUsers,  String? errorCampaigns,  String? lastQuery)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.users,_that.campaigns,_that.isLoadingUsers,_that.isLoadingCampaigns,_that.errorUsers,_that.errorCampaigns,_that.lastQuery);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({final  List<SearchUserResultModel> users = const [], final  List<SearchCampaignResultModel> campaigns = const [], this.isLoadingUsers = false, this.isLoadingCampaigns = false, this.errorUsers, this.errorCampaigns, this.lastQuery}): _users = users,_campaigns = campaigns;
  

 final  List<SearchUserResultModel> _users;
@override@JsonKey() List<SearchUserResultModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

 final  List<SearchCampaignResultModel> _campaigns;
@override@JsonKey() List<SearchCampaignResultModel> get campaigns {
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaigns);
}

@override@JsonKey() final  bool isLoadingUsers;
@override@JsonKey() final  bool isLoadingCampaigns;
@override final  String? errorUsers;
@override final  String? errorCampaigns;
@override final  String? lastQuery;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._users, _users)&&const DeepCollectionEquality().equals(other._campaigns, _campaigns)&&(identical(other.isLoadingUsers, isLoadingUsers) || other.isLoadingUsers == isLoadingUsers)&&(identical(other.isLoadingCampaigns, isLoadingCampaigns) || other.isLoadingCampaigns == isLoadingCampaigns)&&(identical(other.errorUsers, errorUsers) || other.errorUsers == errorUsers)&&(identical(other.errorCampaigns, errorCampaigns) || other.errorCampaigns == errorCampaigns)&&(identical(other.lastQuery, lastQuery) || other.lastQuery == lastQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),const DeepCollectionEquality().hash(_campaigns),isLoadingUsers,isLoadingCampaigns,errorUsers,errorCampaigns,lastQuery);

@override
String toString() {
  return 'SearchState(users: $users, campaigns: $campaigns, isLoadingUsers: $isLoadingUsers, isLoadingCampaigns: $isLoadingCampaigns, errorUsers: $errorUsers, errorCampaigns: $errorCampaigns, lastQuery: $lastQuery)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<SearchUserResultModel> users, List<SearchCampaignResultModel> campaigns, bool isLoadingUsers, bool isLoadingCampaigns, String? errorUsers, String? errorCampaigns, String? lastQuery
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? campaigns = null,Object? isLoadingUsers = null,Object? isLoadingCampaigns = null,Object? errorUsers = freezed,Object? errorCampaigns = freezed,Object? lastQuery = freezed,}) {
  return _then(_SearchState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<SearchUserResultModel>,campaigns: null == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<SearchCampaignResultModel>,isLoadingUsers: null == isLoadingUsers ? _self.isLoadingUsers : isLoadingUsers // ignore: cast_nullable_to_non_nullable
as bool,isLoadingCampaigns: null == isLoadingCampaigns ? _self.isLoadingCampaigns : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorUsers: freezed == errorUsers ? _self.errorUsers : errorUsers // ignore: cast_nullable_to_non_nullable
as String?,errorCampaigns: freezed == errorCampaigns ? _self.errorCampaigns : errorCampaigns // ignore: cast_nullable_to_non_nullable
as String?,lastQuery: freezed == lastQuery ? _self.lastQuery : lastQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
