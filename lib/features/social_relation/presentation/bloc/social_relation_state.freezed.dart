// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_relation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialRelationState {

// ========== FOLLOW STATE ==========
 bool get isFollowing; bool get isLoadingFollow; String? get errorFollow;// ========== FOLLOW REQUEST STATE ==========
 List<FollowRequestEntity> get pendingRequests; List<FollowRequestEntity> get sentRequests; bool get hasFollowRequestPending; bool get isLoadingRequests; String? get errorRequests;// ========== BLOCK STATE ==========
 List<BlockedUserEntity> get blockedUsers; bool get isBlocked; bool get isLoadingBlock; String? get errorBlock;// ========== MUTE STATE ==========
 List<MutedUserEntity> get mutedUsers; bool get isMuted; bool get isLoadingMute; String? get errorMute;// ========== RESTRICT STATE ==========
 List<RestrictedUserEntity> get restrictedUsers; bool get isRestricted; bool get isLoadingRestrict; String? get errorRestrict;// ========== GENERAL STATE ==========
 String? get successMessage;
/// Create a copy of SocialRelationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialRelationStateCopyWith<SocialRelationState> get copyWith => _$SocialRelationStateCopyWithImpl<SocialRelationState>(this as SocialRelationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialRelationState&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isLoadingFollow, isLoadingFollow) || other.isLoadingFollow == isLoadingFollow)&&(identical(other.errorFollow, errorFollow) || other.errorFollow == errorFollow)&&const DeepCollectionEquality().equals(other.pendingRequests, pendingRequests)&&const DeepCollectionEquality().equals(other.sentRequests, sentRequests)&&(identical(other.hasFollowRequestPending, hasFollowRequestPending) || other.hasFollowRequestPending == hasFollowRequestPending)&&(identical(other.isLoadingRequests, isLoadingRequests) || other.isLoadingRequests == isLoadingRequests)&&(identical(other.errorRequests, errorRequests) || other.errorRequests == errorRequests)&&const DeepCollectionEquality().equals(other.blockedUsers, blockedUsers)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked)&&(identical(other.isLoadingBlock, isLoadingBlock) || other.isLoadingBlock == isLoadingBlock)&&(identical(other.errorBlock, errorBlock) || other.errorBlock == errorBlock)&&const DeepCollectionEquality().equals(other.mutedUsers, mutedUsers)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted)&&(identical(other.isLoadingMute, isLoadingMute) || other.isLoadingMute == isLoadingMute)&&(identical(other.errorMute, errorMute) || other.errorMute == errorMute)&&const DeepCollectionEquality().equals(other.restrictedUsers, restrictedUsers)&&(identical(other.isRestricted, isRestricted) || other.isRestricted == isRestricted)&&(identical(other.isLoadingRestrict, isLoadingRestrict) || other.isLoadingRestrict == isLoadingRestrict)&&(identical(other.errorRestrict, errorRestrict) || other.errorRestrict == errorRestrict)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,isFollowing,isLoadingFollow,errorFollow,const DeepCollectionEquality().hash(pendingRequests),const DeepCollectionEquality().hash(sentRequests),hasFollowRequestPending,isLoadingRequests,errorRequests,const DeepCollectionEquality().hash(blockedUsers),isBlocked,isLoadingBlock,errorBlock,const DeepCollectionEquality().hash(mutedUsers),isMuted,isLoadingMute,errorMute,const DeepCollectionEquality().hash(restrictedUsers),isRestricted,isLoadingRestrict,errorRestrict,successMessage]);

@override
String toString() {
  return 'SocialRelationState(isFollowing: $isFollowing, isLoadingFollow: $isLoadingFollow, errorFollow: $errorFollow, pendingRequests: $pendingRequests, sentRequests: $sentRequests, hasFollowRequestPending: $hasFollowRequestPending, isLoadingRequests: $isLoadingRequests, errorRequests: $errorRequests, blockedUsers: $blockedUsers, isBlocked: $isBlocked, isLoadingBlock: $isLoadingBlock, errorBlock: $errorBlock, mutedUsers: $mutedUsers, isMuted: $isMuted, isLoadingMute: $isLoadingMute, errorMute: $errorMute, restrictedUsers: $restrictedUsers, isRestricted: $isRestricted, isLoadingRestrict: $isLoadingRestrict, errorRestrict: $errorRestrict, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class $SocialRelationStateCopyWith<$Res>  {
  factory $SocialRelationStateCopyWith(SocialRelationState value, $Res Function(SocialRelationState) _then) = _$SocialRelationStateCopyWithImpl;
@useResult
$Res call({
 bool isFollowing, bool isLoadingFollow, String? errorFollow, List<FollowRequestEntity> pendingRequests, List<FollowRequestEntity> sentRequests, bool hasFollowRequestPending, bool isLoadingRequests, String? errorRequests, List<BlockedUserEntity> blockedUsers, bool isBlocked, bool isLoadingBlock, String? errorBlock, List<MutedUserEntity> mutedUsers, bool isMuted, bool isLoadingMute, String? errorMute, List<RestrictedUserEntity> restrictedUsers, bool isRestricted, bool isLoadingRestrict, String? errorRestrict, String? successMessage
});




}
/// @nodoc
class _$SocialRelationStateCopyWithImpl<$Res>
    implements $SocialRelationStateCopyWith<$Res> {
  _$SocialRelationStateCopyWithImpl(this._self, this._then);

  final SocialRelationState _self;
  final $Res Function(SocialRelationState) _then;

/// Create a copy of SocialRelationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFollowing = null,Object? isLoadingFollow = null,Object? errorFollow = freezed,Object? pendingRequests = null,Object? sentRequests = null,Object? hasFollowRequestPending = null,Object? isLoadingRequests = null,Object? errorRequests = freezed,Object? blockedUsers = null,Object? isBlocked = null,Object? isLoadingBlock = null,Object? errorBlock = freezed,Object? mutedUsers = null,Object? isMuted = null,Object? isLoadingMute = null,Object? errorMute = freezed,Object? restrictedUsers = null,Object? isRestricted = null,Object? isLoadingRestrict = null,Object? errorRestrict = freezed,Object? successMessage = freezed,}) {
  return _then(_self.copyWith(
isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingFollow: null == isLoadingFollow ? _self.isLoadingFollow : isLoadingFollow // ignore: cast_nullable_to_non_nullable
as bool,errorFollow: freezed == errorFollow ? _self.errorFollow : errorFollow // ignore: cast_nullable_to_non_nullable
as String?,pendingRequests: null == pendingRequests ? _self.pendingRequests : pendingRequests // ignore: cast_nullable_to_non_nullable
as List<FollowRequestEntity>,sentRequests: null == sentRequests ? _self.sentRequests : sentRequests // ignore: cast_nullable_to_non_nullable
as List<FollowRequestEntity>,hasFollowRequestPending: null == hasFollowRequestPending ? _self.hasFollowRequestPending : hasFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRequests: null == isLoadingRequests ? _self.isLoadingRequests : isLoadingRequests // ignore: cast_nullable_to_non_nullable
as bool,errorRequests: freezed == errorRequests ? _self.errorRequests : errorRequests // ignore: cast_nullable_to_non_nullable
as String?,blockedUsers: null == blockedUsers ? _self.blockedUsers : blockedUsers // ignore: cast_nullable_to_non_nullable
as List<BlockedUserEntity>,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,isLoadingBlock: null == isLoadingBlock ? _self.isLoadingBlock : isLoadingBlock // ignore: cast_nullable_to_non_nullable
as bool,errorBlock: freezed == errorBlock ? _self.errorBlock : errorBlock // ignore: cast_nullable_to_non_nullable
as String?,mutedUsers: null == mutedUsers ? _self.mutedUsers : mutedUsers // ignore: cast_nullable_to_non_nullable
as List<MutedUserEntity>,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMute: null == isLoadingMute ? _self.isLoadingMute : isLoadingMute // ignore: cast_nullable_to_non_nullable
as bool,errorMute: freezed == errorMute ? _self.errorMute : errorMute // ignore: cast_nullable_to_non_nullable
as String?,restrictedUsers: null == restrictedUsers ? _self.restrictedUsers : restrictedUsers // ignore: cast_nullable_to_non_nullable
as List<RestrictedUserEntity>,isRestricted: null == isRestricted ? _self.isRestricted : isRestricted // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRestrict: null == isLoadingRestrict ? _self.isLoadingRestrict : isLoadingRestrict // ignore: cast_nullable_to_non_nullable
as bool,errorRestrict: freezed == errorRestrict ? _self.errorRestrict : errorRestrict // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialRelationState].
extension SocialRelationStatePatterns on SocialRelationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialRelationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialRelationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialRelationState value)  $default,){
final _that = this;
switch (_that) {
case _SocialRelationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialRelationState value)?  $default,){
final _that = this;
switch (_that) {
case _SocialRelationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFollowing,  bool isLoadingFollow,  String? errorFollow,  List<FollowRequestEntity> pendingRequests,  List<FollowRequestEntity> sentRequests,  bool hasFollowRequestPending,  bool isLoadingRequests,  String? errorRequests,  List<BlockedUserEntity> blockedUsers,  bool isBlocked,  bool isLoadingBlock,  String? errorBlock,  List<MutedUserEntity> mutedUsers,  bool isMuted,  bool isLoadingMute,  String? errorMute,  List<RestrictedUserEntity> restrictedUsers,  bool isRestricted,  bool isLoadingRestrict,  String? errorRestrict,  String? successMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialRelationState() when $default != null:
return $default(_that.isFollowing,_that.isLoadingFollow,_that.errorFollow,_that.pendingRequests,_that.sentRequests,_that.hasFollowRequestPending,_that.isLoadingRequests,_that.errorRequests,_that.blockedUsers,_that.isBlocked,_that.isLoadingBlock,_that.errorBlock,_that.mutedUsers,_that.isMuted,_that.isLoadingMute,_that.errorMute,_that.restrictedUsers,_that.isRestricted,_that.isLoadingRestrict,_that.errorRestrict,_that.successMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFollowing,  bool isLoadingFollow,  String? errorFollow,  List<FollowRequestEntity> pendingRequests,  List<FollowRequestEntity> sentRequests,  bool hasFollowRequestPending,  bool isLoadingRequests,  String? errorRequests,  List<BlockedUserEntity> blockedUsers,  bool isBlocked,  bool isLoadingBlock,  String? errorBlock,  List<MutedUserEntity> mutedUsers,  bool isMuted,  bool isLoadingMute,  String? errorMute,  List<RestrictedUserEntity> restrictedUsers,  bool isRestricted,  bool isLoadingRestrict,  String? errorRestrict,  String? successMessage)  $default,) {final _that = this;
switch (_that) {
case _SocialRelationState():
return $default(_that.isFollowing,_that.isLoadingFollow,_that.errorFollow,_that.pendingRequests,_that.sentRequests,_that.hasFollowRequestPending,_that.isLoadingRequests,_that.errorRequests,_that.blockedUsers,_that.isBlocked,_that.isLoadingBlock,_that.errorBlock,_that.mutedUsers,_that.isMuted,_that.isLoadingMute,_that.errorMute,_that.restrictedUsers,_that.isRestricted,_that.isLoadingRestrict,_that.errorRestrict,_that.successMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFollowing,  bool isLoadingFollow,  String? errorFollow,  List<FollowRequestEntity> pendingRequests,  List<FollowRequestEntity> sentRequests,  bool hasFollowRequestPending,  bool isLoadingRequests,  String? errorRequests,  List<BlockedUserEntity> blockedUsers,  bool isBlocked,  bool isLoadingBlock,  String? errorBlock,  List<MutedUserEntity> mutedUsers,  bool isMuted,  bool isLoadingMute,  String? errorMute,  List<RestrictedUserEntity> restrictedUsers,  bool isRestricted,  bool isLoadingRestrict,  String? errorRestrict,  String? successMessage)?  $default,) {final _that = this;
switch (_that) {
case _SocialRelationState() when $default != null:
return $default(_that.isFollowing,_that.isLoadingFollow,_that.errorFollow,_that.pendingRequests,_that.sentRequests,_that.hasFollowRequestPending,_that.isLoadingRequests,_that.errorRequests,_that.blockedUsers,_that.isBlocked,_that.isLoadingBlock,_that.errorBlock,_that.mutedUsers,_that.isMuted,_that.isLoadingMute,_that.errorMute,_that.restrictedUsers,_that.isRestricted,_that.isLoadingRestrict,_that.errorRestrict,_that.successMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SocialRelationState implements SocialRelationState {
  const _SocialRelationState({this.isFollowing = false, this.isLoadingFollow = false, this.errorFollow, final  List<FollowRequestEntity> pendingRequests = const <FollowRequestEntity>[], final  List<FollowRequestEntity> sentRequests = const <FollowRequestEntity>[], this.hasFollowRequestPending = false, this.isLoadingRequests = false, this.errorRequests, final  List<BlockedUserEntity> blockedUsers = const <BlockedUserEntity>[], this.isBlocked = false, this.isLoadingBlock = false, this.errorBlock, final  List<MutedUserEntity> mutedUsers = const <MutedUserEntity>[], this.isMuted = false, this.isLoadingMute = false, this.errorMute, final  List<RestrictedUserEntity> restrictedUsers = const <RestrictedUserEntity>[], this.isRestricted = false, this.isLoadingRestrict = false, this.errorRestrict, this.successMessage}): _pendingRequests = pendingRequests,_sentRequests = sentRequests,_blockedUsers = blockedUsers,_mutedUsers = mutedUsers,_restrictedUsers = restrictedUsers;
  

// ========== FOLLOW STATE ==========
@override@JsonKey() final  bool isFollowing;
@override@JsonKey() final  bool isLoadingFollow;
@override final  String? errorFollow;
// ========== FOLLOW REQUEST STATE ==========
 final  List<FollowRequestEntity> _pendingRequests;
// ========== FOLLOW REQUEST STATE ==========
@override@JsonKey() List<FollowRequestEntity> get pendingRequests {
  if (_pendingRequests is EqualUnmodifiableListView) return _pendingRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingRequests);
}

 final  List<FollowRequestEntity> _sentRequests;
@override@JsonKey() List<FollowRequestEntity> get sentRequests {
  if (_sentRequests is EqualUnmodifiableListView) return _sentRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sentRequests);
}

@override@JsonKey() final  bool hasFollowRequestPending;
@override@JsonKey() final  bool isLoadingRequests;
@override final  String? errorRequests;
// ========== BLOCK STATE ==========
 final  List<BlockedUserEntity> _blockedUsers;
// ========== BLOCK STATE ==========
@override@JsonKey() List<BlockedUserEntity> get blockedUsers {
  if (_blockedUsers is EqualUnmodifiableListView) return _blockedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blockedUsers);
}

@override@JsonKey() final  bool isBlocked;
@override@JsonKey() final  bool isLoadingBlock;
@override final  String? errorBlock;
// ========== MUTE STATE ==========
 final  List<MutedUserEntity> _mutedUsers;
// ========== MUTE STATE ==========
@override@JsonKey() List<MutedUserEntity> get mutedUsers {
  if (_mutedUsers is EqualUnmodifiableListView) return _mutedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mutedUsers);
}

@override@JsonKey() final  bool isMuted;
@override@JsonKey() final  bool isLoadingMute;
@override final  String? errorMute;
// ========== RESTRICT STATE ==========
 final  List<RestrictedUserEntity> _restrictedUsers;
// ========== RESTRICT STATE ==========
@override@JsonKey() List<RestrictedUserEntity> get restrictedUsers {
  if (_restrictedUsers is EqualUnmodifiableListView) return _restrictedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_restrictedUsers);
}

@override@JsonKey() final  bool isRestricted;
@override@JsonKey() final  bool isLoadingRestrict;
@override final  String? errorRestrict;
// ========== GENERAL STATE ==========
@override final  String? successMessage;

/// Create a copy of SocialRelationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialRelationStateCopyWith<_SocialRelationState> get copyWith => __$SocialRelationStateCopyWithImpl<_SocialRelationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialRelationState&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isLoadingFollow, isLoadingFollow) || other.isLoadingFollow == isLoadingFollow)&&(identical(other.errorFollow, errorFollow) || other.errorFollow == errorFollow)&&const DeepCollectionEquality().equals(other._pendingRequests, _pendingRequests)&&const DeepCollectionEquality().equals(other._sentRequests, _sentRequests)&&(identical(other.hasFollowRequestPending, hasFollowRequestPending) || other.hasFollowRequestPending == hasFollowRequestPending)&&(identical(other.isLoadingRequests, isLoadingRequests) || other.isLoadingRequests == isLoadingRequests)&&(identical(other.errorRequests, errorRequests) || other.errorRequests == errorRequests)&&const DeepCollectionEquality().equals(other._blockedUsers, _blockedUsers)&&(identical(other.isBlocked, isBlocked) || other.isBlocked == isBlocked)&&(identical(other.isLoadingBlock, isLoadingBlock) || other.isLoadingBlock == isLoadingBlock)&&(identical(other.errorBlock, errorBlock) || other.errorBlock == errorBlock)&&const DeepCollectionEquality().equals(other._mutedUsers, _mutedUsers)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted)&&(identical(other.isLoadingMute, isLoadingMute) || other.isLoadingMute == isLoadingMute)&&(identical(other.errorMute, errorMute) || other.errorMute == errorMute)&&const DeepCollectionEquality().equals(other._restrictedUsers, _restrictedUsers)&&(identical(other.isRestricted, isRestricted) || other.isRestricted == isRestricted)&&(identical(other.isLoadingRestrict, isLoadingRestrict) || other.isLoadingRestrict == isLoadingRestrict)&&(identical(other.errorRestrict, errorRestrict) || other.errorRestrict == errorRestrict)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage));
}


@override
int get hashCode => Object.hashAll([runtimeType,isFollowing,isLoadingFollow,errorFollow,const DeepCollectionEquality().hash(_pendingRequests),const DeepCollectionEquality().hash(_sentRequests),hasFollowRequestPending,isLoadingRequests,errorRequests,const DeepCollectionEquality().hash(_blockedUsers),isBlocked,isLoadingBlock,errorBlock,const DeepCollectionEquality().hash(_mutedUsers),isMuted,isLoadingMute,errorMute,const DeepCollectionEquality().hash(_restrictedUsers),isRestricted,isLoadingRestrict,errorRestrict,successMessage]);

@override
String toString() {
  return 'SocialRelationState(isFollowing: $isFollowing, isLoadingFollow: $isLoadingFollow, errorFollow: $errorFollow, pendingRequests: $pendingRequests, sentRequests: $sentRequests, hasFollowRequestPending: $hasFollowRequestPending, isLoadingRequests: $isLoadingRequests, errorRequests: $errorRequests, blockedUsers: $blockedUsers, isBlocked: $isBlocked, isLoadingBlock: $isLoadingBlock, errorBlock: $errorBlock, mutedUsers: $mutedUsers, isMuted: $isMuted, isLoadingMute: $isLoadingMute, errorMute: $errorMute, restrictedUsers: $restrictedUsers, isRestricted: $isRestricted, isLoadingRestrict: $isLoadingRestrict, errorRestrict: $errorRestrict, successMessage: $successMessage)';
}


}

/// @nodoc
abstract mixin class _$SocialRelationStateCopyWith<$Res> implements $SocialRelationStateCopyWith<$Res> {
  factory _$SocialRelationStateCopyWith(_SocialRelationState value, $Res Function(_SocialRelationState) _then) = __$SocialRelationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isFollowing, bool isLoadingFollow, String? errorFollow, List<FollowRequestEntity> pendingRequests, List<FollowRequestEntity> sentRequests, bool hasFollowRequestPending, bool isLoadingRequests, String? errorRequests, List<BlockedUserEntity> blockedUsers, bool isBlocked, bool isLoadingBlock, String? errorBlock, List<MutedUserEntity> mutedUsers, bool isMuted, bool isLoadingMute, String? errorMute, List<RestrictedUserEntity> restrictedUsers, bool isRestricted, bool isLoadingRestrict, String? errorRestrict, String? successMessage
});




}
/// @nodoc
class __$SocialRelationStateCopyWithImpl<$Res>
    implements _$SocialRelationStateCopyWith<$Res> {
  __$SocialRelationStateCopyWithImpl(this._self, this._then);

  final _SocialRelationState _self;
  final $Res Function(_SocialRelationState) _then;

/// Create a copy of SocialRelationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFollowing = null,Object? isLoadingFollow = null,Object? errorFollow = freezed,Object? pendingRequests = null,Object? sentRequests = null,Object? hasFollowRequestPending = null,Object? isLoadingRequests = null,Object? errorRequests = freezed,Object? blockedUsers = null,Object? isBlocked = null,Object? isLoadingBlock = null,Object? errorBlock = freezed,Object? mutedUsers = null,Object? isMuted = null,Object? isLoadingMute = null,Object? errorMute = freezed,Object? restrictedUsers = null,Object? isRestricted = null,Object? isLoadingRestrict = null,Object? errorRestrict = freezed,Object? successMessage = freezed,}) {
  return _then(_SocialRelationState(
isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingFollow: null == isLoadingFollow ? _self.isLoadingFollow : isLoadingFollow // ignore: cast_nullable_to_non_nullable
as bool,errorFollow: freezed == errorFollow ? _self.errorFollow : errorFollow // ignore: cast_nullable_to_non_nullable
as String?,pendingRequests: null == pendingRequests ? _self._pendingRequests : pendingRequests // ignore: cast_nullable_to_non_nullable
as List<FollowRequestEntity>,sentRequests: null == sentRequests ? _self._sentRequests : sentRequests // ignore: cast_nullable_to_non_nullable
as List<FollowRequestEntity>,hasFollowRequestPending: null == hasFollowRequestPending ? _self.hasFollowRequestPending : hasFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRequests: null == isLoadingRequests ? _self.isLoadingRequests : isLoadingRequests // ignore: cast_nullable_to_non_nullable
as bool,errorRequests: freezed == errorRequests ? _self.errorRequests : errorRequests // ignore: cast_nullable_to_non_nullable
as String?,blockedUsers: null == blockedUsers ? _self._blockedUsers : blockedUsers // ignore: cast_nullable_to_non_nullable
as List<BlockedUserEntity>,isBlocked: null == isBlocked ? _self.isBlocked : isBlocked // ignore: cast_nullable_to_non_nullable
as bool,isLoadingBlock: null == isLoadingBlock ? _self.isLoadingBlock : isLoadingBlock // ignore: cast_nullable_to_non_nullable
as bool,errorBlock: freezed == errorBlock ? _self.errorBlock : errorBlock // ignore: cast_nullable_to_non_nullable
as String?,mutedUsers: null == mutedUsers ? _self._mutedUsers : mutedUsers // ignore: cast_nullable_to_non_nullable
as List<MutedUserEntity>,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMute: null == isLoadingMute ? _self.isLoadingMute : isLoadingMute // ignore: cast_nullable_to_non_nullable
as bool,errorMute: freezed == errorMute ? _self.errorMute : errorMute // ignore: cast_nullable_to_non_nullable
as String?,restrictedUsers: null == restrictedUsers ? _self._restrictedUsers : restrictedUsers // ignore: cast_nullable_to_non_nullable
as List<RestrictedUserEntity>,isRestricted: null == isRestricted ? _self.isRestricted : isRestricted // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRestrict: null == isLoadingRestrict ? _self.isLoadingRestrict : isLoadingRestrict // ignore: cast_nullable_to_non_nullable
as bool,errorRestrict: freezed == errorRestrict ? _self.errorRestrict : errorRestrict // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
