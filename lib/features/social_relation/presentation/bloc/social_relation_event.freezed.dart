// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_relation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialRelationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialRelationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent()';
}


}

/// @nodoc
class $SocialRelationEventCopyWith<$Res>  {
$SocialRelationEventCopyWith(SocialRelationEvent _, $Res Function(SocialRelationEvent) __);
}


/// Adds pattern-matching-related methods to [SocialRelationEvent].
extension SocialRelationEventPatterns on SocialRelationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FollowUserEvent value)?  followUser,TResult Function( UnfollowUserEvent value)?  unfollowUser,TResult Function( CheckIfFollowingEvent value)?  checkIfFollowing,TResult Function( SendFollowRequestEvent value)?  sendFollowRequest,TResult Function( CancelFollowRequestEvent value)?  cancelFollowRequest,TResult Function( AcceptFollowRequestEvent value)?  acceptFollowRequest,TResult Function( RejectFollowRequestEvent value)?  rejectFollowRequest,TResult Function( LoadPendingFollowRequestsEvent value)?  loadPendingFollowRequests,TResult Function( LoadSentFollowRequestsEvent value)?  loadSentFollowRequests,TResult Function( BlockUserEvent value)?  blockUser,TResult Function( UnblockUserEvent value)?  unblockUser,TResult Function( LoadBlockedUsersEvent value)?  loadBlockedUsers,TResult Function( MuteUserEvent value)?  muteUser,TResult Function( UnmuteUserEvent value)?  unmuteUser,TResult Function( LoadMutedUsersEvent value)?  loadMutedUsers,TResult Function( RestrictUserEvent value)?  restrictUser,TResult Function( UnrestrictUserEvent value)?  unrestrictUser,TResult Function( LoadRestrictedUsersEvent value)?  loadRestrictedUsers,TResult Function( ClearErrorEvent value)?  clearError,TResult Function( ClearMessageEvent value)?  clearMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FollowUserEvent() when followUser != null:
return followUser(_that);case UnfollowUserEvent() when unfollowUser != null:
return unfollowUser(_that);case CheckIfFollowingEvent() when checkIfFollowing != null:
return checkIfFollowing(_that);case SendFollowRequestEvent() when sendFollowRequest != null:
return sendFollowRequest(_that);case CancelFollowRequestEvent() when cancelFollowRequest != null:
return cancelFollowRequest(_that);case AcceptFollowRequestEvent() when acceptFollowRequest != null:
return acceptFollowRequest(_that);case RejectFollowRequestEvent() when rejectFollowRequest != null:
return rejectFollowRequest(_that);case LoadPendingFollowRequestsEvent() when loadPendingFollowRequests != null:
return loadPendingFollowRequests(_that);case LoadSentFollowRequestsEvent() when loadSentFollowRequests != null:
return loadSentFollowRequests(_that);case BlockUserEvent() when blockUser != null:
return blockUser(_that);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that);case LoadBlockedUsersEvent() when loadBlockedUsers != null:
return loadBlockedUsers(_that);case MuteUserEvent() when muteUser != null:
return muteUser(_that);case UnmuteUserEvent() when unmuteUser != null:
return unmuteUser(_that);case LoadMutedUsersEvent() when loadMutedUsers != null:
return loadMutedUsers(_that);case RestrictUserEvent() when restrictUser != null:
return restrictUser(_that);case UnrestrictUserEvent() when unrestrictUser != null:
return unrestrictUser(_that);case LoadRestrictedUsersEvent() when loadRestrictedUsers != null:
return loadRestrictedUsers(_that);case ClearErrorEvent() when clearError != null:
return clearError(_that);case ClearMessageEvent() when clearMessage != null:
return clearMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FollowUserEvent value)  followUser,required TResult Function( UnfollowUserEvent value)  unfollowUser,required TResult Function( CheckIfFollowingEvent value)  checkIfFollowing,required TResult Function( SendFollowRequestEvent value)  sendFollowRequest,required TResult Function( CancelFollowRequestEvent value)  cancelFollowRequest,required TResult Function( AcceptFollowRequestEvent value)  acceptFollowRequest,required TResult Function( RejectFollowRequestEvent value)  rejectFollowRequest,required TResult Function( LoadPendingFollowRequestsEvent value)  loadPendingFollowRequests,required TResult Function( LoadSentFollowRequestsEvent value)  loadSentFollowRequests,required TResult Function( BlockUserEvent value)  blockUser,required TResult Function( UnblockUserEvent value)  unblockUser,required TResult Function( LoadBlockedUsersEvent value)  loadBlockedUsers,required TResult Function( MuteUserEvent value)  muteUser,required TResult Function( UnmuteUserEvent value)  unmuteUser,required TResult Function( LoadMutedUsersEvent value)  loadMutedUsers,required TResult Function( RestrictUserEvent value)  restrictUser,required TResult Function( UnrestrictUserEvent value)  unrestrictUser,required TResult Function( LoadRestrictedUsersEvent value)  loadRestrictedUsers,required TResult Function( ClearErrorEvent value)  clearError,required TResult Function( ClearMessageEvent value)  clearMessage,}){
final _that = this;
switch (_that) {
case FollowUserEvent():
return followUser(_that);case UnfollowUserEvent():
return unfollowUser(_that);case CheckIfFollowingEvent():
return checkIfFollowing(_that);case SendFollowRequestEvent():
return sendFollowRequest(_that);case CancelFollowRequestEvent():
return cancelFollowRequest(_that);case AcceptFollowRequestEvent():
return acceptFollowRequest(_that);case RejectFollowRequestEvent():
return rejectFollowRequest(_that);case LoadPendingFollowRequestsEvent():
return loadPendingFollowRequests(_that);case LoadSentFollowRequestsEvent():
return loadSentFollowRequests(_that);case BlockUserEvent():
return blockUser(_that);case UnblockUserEvent():
return unblockUser(_that);case LoadBlockedUsersEvent():
return loadBlockedUsers(_that);case MuteUserEvent():
return muteUser(_that);case UnmuteUserEvent():
return unmuteUser(_that);case LoadMutedUsersEvent():
return loadMutedUsers(_that);case RestrictUserEvent():
return restrictUser(_that);case UnrestrictUserEvent():
return unrestrictUser(_that);case LoadRestrictedUsersEvent():
return loadRestrictedUsers(_that);case ClearErrorEvent():
return clearError(_that);case ClearMessageEvent():
return clearMessage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FollowUserEvent value)?  followUser,TResult? Function( UnfollowUserEvent value)?  unfollowUser,TResult? Function( CheckIfFollowingEvent value)?  checkIfFollowing,TResult? Function( SendFollowRequestEvent value)?  sendFollowRequest,TResult? Function( CancelFollowRequestEvent value)?  cancelFollowRequest,TResult? Function( AcceptFollowRequestEvent value)?  acceptFollowRequest,TResult? Function( RejectFollowRequestEvent value)?  rejectFollowRequest,TResult? Function( LoadPendingFollowRequestsEvent value)?  loadPendingFollowRequests,TResult? Function( LoadSentFollowRequestsEvent value)?  loadSentFollowRequests,TResult? Function( BlockUserEvent value)?  blockUser,TResult? Function( UnblockUserEvent value)?  unblockUser,TResult? Function( LoadBlockedUsersEvent value)?  loadBlockedUsers,TResult? Function( MuteUserEvent value)?  muteUser,TResult? Function( UnmuteUserEvent value)?  unmuteUser,TResult? Function( LoadMutedUsersEvent value)?  loadMutedUsers,TResult? Function( RestrictUserEvent value)?  restrictUser,TResult? Function( UnrestrictUserEvent value)?  unrestrictUser,TResult? Function( LoadRestrictedUsersEvent value)?  loadRestrictedUsers,TResult? Function( ClearErrorEvent value)?  clearError,TResult? Function( ClearMessageEvent value)?  clearMessage,}){
final _that = this;
switch (_that) {
case FollowUserEvent() when followUser != null:
return followUser(_that);case UnfollowUserEvent() when unfollowUser != null:
return unfollowUser(_that);case CheckIfFollowingEvent() when checkIfFollowing != null:
return checkIfFollowing(_that);case SendFollowRequestEvent() when sendFollowRequest != null:
return sendFollowRequest(_that);case CancelFollowRequestEvent() when cancelFollowRequest != null:
return cancelFollowRequest(_that);case AcceptFollowRequestEvent() when acceptFollowRequest != null:
return acceptFollowRequest(_that);case RejectFollowRequestEvent() when rejectFollowRequest != null:
return rejectFollowRequest(_that);case LoadPendingFollowRequestsEvent() when loadPendingFollowRequests != null:
return loadPendingFollowRequests(_that);case LoadSentFollowRequestsEvent() when loadSentFollowRequests != null:
return loadSentFollowRequests(_that);case BlockUserEvent() when blockUser != null:
return blockUser(_that);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that);case LoadBlockedUsersEvent() when loadBlockedUsers != null:
return loadBlockedUsers(_that);case MuteUserEvent() when muteUser != null:
return muteUser(_that);case UnmuteUserEvent() when unmuteUser != null:
return unmuteUser(_that);case LoadMutedUsersEvent() when loadMutedUsers != null:
return loadMutedUsers(_that);case RestrictUserEvent() when restrictUser != null:
return restrictUser(_that);case UnrestrictUserEvent() when unrestrictUser != null:
return unrestrictUser(_that);case LoadRestrictedUsersEvent() when loadRestrictedUsers != null:
return loadRestrictedUsers(_that);case ClearErrorEvent() when clearError != null:
return clearError(_that);case ClearMessageEvent() when clearMessage != null:
return clearMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String targetUserId)?  followUser,TResult Function( String targetUserId)?  unfollowUser,TResult Function( String targetUserId)?  checkIfFollowing,TResult Function( String targetUserId)?  sendFollowRequest,TResult Function( String targetUserId)?  cancelFollowRequest,TResult Function( String requesterId)?  acceptFollowRequest,TResult Function( String requesterId)?  rejectFollowRequest,TResult Function()?  loadPendingFollowRequests,TResult Function()?  loadSentFollowRequests,TResult Function( String targetUserId)?  blockUser,TResult Function( String targetUserId)?  unblockUser,TResult Function()?  loadBlockedUsers,TResult Function( String targetUserId)?  muteUser,TResult Function( String targetUserId)?  unmuteUser,TResult Function()?  loadMutedUsers,TResult Function( String targetUserId)?  restrictUser,TResult Function( String targetUserId)?  unrestrictUser,TResult Function()?  loadRestrictedUsers,TResult Function()?  clearError,TResult Function()?  clearMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FollowUserEvent() when followUser != null:
return followUser(_that.targetUserId);case UnfollowUserEvent() when unfollowUser != null:
return unfollowUser(_that.targetUserId);case CheckIfFollowingEvent() when checkIfFollowing != null:
return checkIfFollowing(_that.targetUserId);case SendFollowRequestEvent() when sendFollowRequest != null:
return sendFollowRequest(_that.targetUserId);case CancelFollowRequestEvent() when cancelFollowRequest != null:
return cancelFollowRequest(_that.targetUserId);case AcceptFollowRequestEvent() when acceptFollowRequest != null:
return acceptFollowRequest(_that.requesterId);case RejectFollowRequestEvent() when rejectFollowRequest != null:
return rejectFollowRequest(_that.requesterId);case LoadPendingFollowRequestsEvent() when loadPendingFollowRequests != null:
return loadPendingFollowRequests();case LoadSentFollowRequestsEvent() when loadSentFollowRequests != null:
return loadSentFollowRequests();case BlockUserEvent() when blockUser != null:
return blockUser(_that.targetUserId);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that.targetUserId);case LoadBlockedUsersEvent() when loadBlockedUsers != null:
return loadBlockedUsers();case MuteUserEvent() when muteUser != null:
return muteUser(_that.targetUserId);case UnmuteUserEvent() when unmuteUser != null:
return unmuteUser(_that.targetUserId);case LoadMutedUsersEvent() when loadMutedUsers != null:
return loadMutedUsers();case RestrictUserEvent() when restrictUser != null:
return restrictUser(_that.targetUserId);case UnrestrictUserEvent() when unrestrictUser != null:
return unrestrictUser(_that.targetUserId);case LoadRestrictedUsersEvent() when loadRestrictedUsers != null:
return loadRestrictedUsers();case ClearErrorEvent() when clearError != null:
return clearError();case ClearMessageEvent() when clearMessage != null:
return clearMessage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String targetUserId)  followUser,required TResult Function( String targetUserId)  unfollowUser,required TResult Function( String targetUserId)  checkIfFollowing,required TResult Function( String targetUserId)  sendFollowRequest,required TResult Function( String targetUserId)  cancelFollowRequest,required TResult Function( String requesterId)  acceptFollowRequest,required TResult Function( String requesterId)  rejectFollowRequest,required TResult Function()  loadPendingFollowRequests,required TResult Function()  loadSentFollowRequests,required TResult Function( String targetUserId)  blockUser,required TResult Function( String targetUserId)  unblockUser,required TResult Function()  loadBlockedUsers,required TResult Function( String targetUserId)  muteUser,required TResult Function( String targetUserId)  unmuteUser,required TResult Function()  loadMutedUsers,required TResult Function( String targetUserId)  restrictUser,required TResult Function( String targetUserId)  unrestrictUser,required TResult Function()  loadRestrictedUsers,required TResult Function()  clearError,required TResult Function()  clearMessage,}) {final _that = this;
switch (_that) {
case FollowUserEvent():
return followUser(_that.targetUserId);case UnfollowUserEvent():
return unfollowUser(_that.targetUserId);case CheckIfFollowingEvent():
return checkIfFollowing(_that.targetUserId);case SendFollowRequestEvent():
return sendFollowRequest(_that.targetUserId);case CancelFollowRequestEvent():
return cancelFollowRequest(_that.targetUserId);case AcceptFollowRequestEvent():
return acceptFollowRequest(_that.requesterId);case RejectFollowRequestEvent():
return rejectFollowRequest(_that.requesterId);case LoadPendingFollowRequestsEvent():
return loadPendingFollowRequests();case LoadSentFollowRequestsEvent():
return loadSentFollowRequests();case BlockUserEvent():
return blockUser(_that.targetUserId);case UnblockUserEvent():
return unblockUser(_that.targetUserId);case LoadBlockedUsersEvent():
return loadBlockedUsers();case MuteUserEvent():
return muteUser(_that.targetUserId);case UnmuteUserEvent():
return unmuteUser(_that.targetUserId);case LoadMutedUsersEvent():
return loadMutedUsers();case RestrictUserEvent():
return restrictUser(_that.targetUserId);case UnrestrictUserEvent():
return unrestrictUser(_that.targetUserId);case LoadRestrictedUsersEvent():
return loadRestrictedUsers();case ClearErrorEvent():
return clearError();case ClearMessageEvent():
return clearMessage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String targetUserId)?  followUser,TResult? Function( String targetUserId)?  unfollowUser,TResult? Function( String targetUserId)?  checkIfFollowing,TResult? Function( String targetUserId)?  sendFollowRequest,TResult? Function( String targetUserId)?  cancelFollowRequest,TResult? Function( String requesterId)?  acceptFollowRequest,TResult? Function( String requesterId)?  rejectFollowRequest,TResult? Function()?  loadPendingFollowRequests,TResult? Function()?  loadSentFollowRequests,TResult? Function( String targetUserId)?  blockUser,TResult? Function( String targetUserId)?  unblockUser,TResult? Function()?  loadBlockedUsers,TResult? Function( String targetUserId)?  muteUser,TResult? Function( String targetUserId)?  unmuteUser,TResult? Function()?  loadMutedUsers,TResult? Function( String targetUserId)?  restrictUser,TResult? Function( String targetUserId)?  unrestrictUser,TResult? Function()?  loadRestrictedUsers,TResult? Function()?  clearError,TResult? Function()?  clearMessage,}) {final _that = this;
switch (_that) {
case FollowUserEvent() when followUser != null:
return followUser(_that.targetUserId);case UnfollowUserEvent() when unfollowUser != null:
return unfollowUser(_that.targetUserId);case CheckIfFollowingEvent() when checkIfFollowing != null:
return checkIfFollowing(_that.targetUserId);case SendFollowRequestEvent() when sendFollowRequest != null:
return sendFollowRequest(_that.targetUserId);case CancelFollowRequestEvent() when cancelFollowRequest != null:
return cancelFollowRequest(_that.targetUserId);case AcceptFollowRequestEvent() when acceptFollowRequest != null:
return acceptFollowRequest(_that.requesterId);case RejectFollowRequestEvent() when rejectFollowRequest != null:
return rejectFollowRequest(_that.requesterId);case LoadPendingFollowRequestsEvent() when loadPendingFollowRequests != null:
return loadPendingFollowRequests();case LoadSentFollowRequestsEvent() when loadSentFollowRequests != null:
return loadSentFollowRequests();case BlockUserEvent() when blockUser != null:
return blockUser(_that.targetUserId);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that.targetUserId);case LoadBlockedUsersEvent() when loadBlockedUsers != null:
return loadBlockedUsers();case MuteUserEvent() when muteUser != null:
return muteUser(_that.targetUserId);case UnmuteUserEvent() when unmuteUser != null:
return unmuteUser(_that.targetUserId);case LoadMutedUsersEvent() when loadMutedUsers != null:
return loadMutedUsers();case RestrictUserEvent() when restrictUser != null:
return restrictUser(_that.targetUserId);case UnrestrictUserEvent() when unrestrictUser != null:
return unrestrictUser(_that.targetUserId);case LoadRestrictedUsersEvent() when loadRestrictedUsers != null:
return loadRestrictedUsers();case ClearErrorEvent() when clearError != null:
return clearError();case ClearMessageEvent() when clearMessage != null:
return clearMessage();case _:
  return null;

}
}

}

/// @nodoc


class FollowUserEvent implements SocialRelationEvent {
  const FollowUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowUserEventCopyWith<FollowUserEvent> get copyWith => _$FollowUserEventCopyWithImpl<FollowUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.followUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $FollowUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $FollowUserEventCopyWith(FollowUserEvent value, $Res Function(FollowUserEvent) _then) = _$FollowUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$FollowUserEventCopyWithImpl<$Res>
    implements $FollowUserEventCopyWith<$Res> {
  _$FollowUserEventCopyWithImpl(this._self, this._then);

  final FollowUserEvent _self;
  final $Res Function(FollowUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(FollowUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnfollowUserEvent implements SocialRelationEvent {
  const UnfollowUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnfollowUserEventCopyWith<UnfollowUserEvent> get copyWith => _$UnfollowUserEventCopyWithImpl<UnfollowUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnfollowUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.unfollowUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $UnfollowUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $UnfollowUserEventCopyWith(UnfollowUserEvent value, $Res Function(UnfollowUserEvent) _then) = _$UnfollowUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$UnfollowUserEventCopyWithImpl<$Res>
    implements $UnfollowUserEventCopyWith<$Res> {
  _$UnfollowUserEventCopyWithImpl(this._self, this._then);

  final UnfollowUserEvent _self;
  final $Res Function(UnfollowUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(UnfollowUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CheckIfFollowingEvent implements SocialRelationEvent {
  const CheckIfFollowingEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckIfFollowingEventCopyWith<CheckIfFollowingEvent> get copyWith => _$CheckIfFollowingEventCopyWithImpl<CheckIfFollowingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckIfFollowingEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.checkIfFollowing(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $CheckIfFollowingEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $CheckIfFollowingEventCopyWith(CheckIfFollowingEvent value, $Res Function(CheckIfFollowingEvent) _then) = _$CheckIfFollowingEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$CheckIfFollowingEventCopyWithImpl<$Res>
    implements $CheckIfFollowingEventCopyWith<$Res> {
  _$CheckIfFollowingEventCopyWithImpl(this._self, this._then);

  final CheckIfFollowingEvent _self;
  final $Res Function(CheckIfFollowingEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(CheckIfFollowingEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SendFollowRequestEvent implements SocialRelationEvent {
  const SendFollowRequestEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendFollowRequestEventCopyWith<SendFollowRequestEvent> get copyWith => _$SendFollowRequestEventCopyWithImpl<SendFollowRequestEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendFollowRequestEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.sendFollowRequest(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $SendFollowRequestEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $SendFollowRequestEventCopyWith(SendFollowRequestEvent value, $Res Function(SendFollowRequestEvent) _then) = _$SendFollowRequestEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$SendFollowRequestEventCopyWithImpl<$Res>
    implements $SendFollowRequestEventCopyWith<$Res> {
  _$SendFollowRequestEventCopyWithImpl(this._self, this._then);

  final SendFollowRequestEvent _self;
  final $Res Function(SendFollowRequestEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(SendFollowRequestEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CancelFollowRequestEvent implements SocialRelationEvent {
  const CancelFollowRequestEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelFollowRequestEventCopyWith<CancelFollowRequestEvent> get copyWith => _$CancelFollowRequestEventCopyWithImpl<CancelFollowRequestEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelFollowRequestEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.cancelFollowRequest(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $CancelFollowRequestEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $CancelFollowRequestEventCopyWith(CancelFollowRequestEvent value, $Res Function(CancelFollowRequestEvent) _then) = _$CancelFollowRequestEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$CancelFollowRequestEventCopyWithImpl<$Res>
    implements $CancelFollowRequestEventCopyWith<$Res> {
  _$CancelFollowRequestEventCopyWithImpl(this._self, this._then);

  final CancelFollowRequestEvent _self;
  final $Res Function(CancelFollowRequestEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(CancelFollowRequestEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AcceptFollowRequestEvent implements SocialRelationEvent {
  const AcceptFollowRequestEvent(this.requesterId);
  

 final  String requesterId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptFollowRequestEventCopyWith<AcceptFollowRequestEvent> get copyWith => _$AcceptFollowRequestEventCopyWithImpl<AcceptFollowRequestEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptFollowRequestEvent&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId));
}


@override
int get hashCode => Object.hash(runtimeType,requesterId);

@override
String toString() {
  return 'SocialRelationEvent.acceptFollowRequest(requesterId: $requesterId)';
}


}

/// @nodoc
abstract mixin class $AcceptFollowRequestEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $AcceptFollowRequestEventCopyWith(AcceptFollowRequestEvent value, $Res Function(AcceptFollowRequestEvent) _then) = _$AcceptFollowRequestEventCopyWithImpl;
@useResult
$Res call({
 String requesterId
});




}
/// @nodoc
class _$AcceptFollowRequestEventCopyWithImpl<$Res>
    implements $AcceptFollowRequestEventCopyWith<$Res> {
  _$AcceptFollowRequestEventCopyWithImpl(this._self, this._then);

  final AcceptFollowRequestEvent _self;
  final $Res Function(AcceptFollowRequestEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requesterId = null,}) {
  return _then(AcceptFollowRequestEvent(
null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectFollowRequestEvent implements SocialRelationEvent {
  const RejectFollowRequestEvent(this.requesterId);
  

 final  String requesterId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectFollowRequestEventCopyWith<RejectFollowRequestEvent> get copyWith => _$RejectFollowRequestEventCopyWithImpl<RejectFollowRequestEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectFollowRequestEvent&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId));
}


@override
int get hashCode => Object.hash(runtimeType,requesterId);

@override
String toString() {
  return 'SocialRelationEvent.rejectFollowRequest(requesterId: $requesterId)';
}


}

/// @nodoc
abstract mixin class $RejectFollowRequestEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $RejectFollowRequestEventCopyWith(RejectFollowRequestEvent value, $Res Function(RejectFollowRequestEvent) _then) = _$RejectFollowRequestEventCopyWithImpl;
@useResult
$Res call({
 String requesterId
});




}
/// @nodoc
class _$RejectFollowRequestEventCopyWithImpl<$Res>
    implements $RejectFollowRequestEventCopyWith<$Res> {
  _$RejectFollowRequestEventCopyWithImpl(this._self, this._then);

  final RejectFollowRequestEvent _self;
  final $Res Function(RejectFollowRequestEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? requesterId = null,}) {
  return _then(RejectFollowRequestEvent(
null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadPendingFollowRequestsEvent implements SocialRelationEvent {
  const LoadPendingFollowRequestsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPendingFollowRequestsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.loadPendingFollowRequests()';
}


}




/// @nodoc


class LoadSentFollowRequestsEvent implements SocialRelationEvent {
  const LoadSentFollowRequestsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSentFollowRequestsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.loadSentFollowRequests()';
}


}




/// @nodoc


class BlockUserEvent implements SocialRelationEvent {
  const BlockUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockUserEventCopyWith<BlockUserEvent> get copyWith => _$BlockUserEventCopyWithImpl<BlockUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.blockUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $BlockUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $BlockUserEventCopyWith(BlockUserEvent value, $Res Function(BlockUserEvent) _then) = _$BlockUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$BlockUserEventCopyWithImpl<$Res>
    implements $BlockUserEventCopyWith<$Res> {
  _$BlockUserEventCopyWithImpl(this._self, this._then);

  final BlockUserEvent _self;
  final $Res Function(BlockUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(BlockUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnblockUserEvent implements SocialRelationEvent {
  const UnblockUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnblockUserEventCopyWith<UnblockUserEvent> get copyWith => _$UnblockUserEventCopyWithImpl<UnblockUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnblockUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.unblockUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $UnblockUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $UnblockUserEventCopyWith(UnblockUserEvent value, $Res Function(UnblockUserEvent) _then) = _$UnblockUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$UnblockUserEventCopyWithImpl<$Res>
    implements $UnblockUserEventCopyWith<$Res> {
  _$UnblockUserEventCopyWithImpl(this._self, this._then);

  final UnblockUserEvent _self;
  final $Res Function(UnblockUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(UnblockUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadBlockedUsersEvent implements SocialRelationEvent {
  const LoadBlockedUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadBlockedUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.loadBlockedUsers()';
}


}




/// @nodoc


class MuteUserEvent implements SocialRelationEvent {
  const MuteUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuteUserEventCopyWith<MuteUserEvent> get copyWith => _$MuteUserEventCopyWithImpl<MuteUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuteUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.muteUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $MuteUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $MuteUserEventCopyWith(MuteUserEvent value, $Res Function(MuteUserEvent) _then) = _$MuteUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$MuteUserEventCopyWithImpl<$Res>
    implements $MuteUserEventCopyWith<$Res> {
  _$MuteUserEventCopyWithImpl(this._self, this._then);

  final MuteUserEvent _self;
  final $Res Function(MuteUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(MuteUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnmuteUserEvent implements SocialRelationEvent {
  const UnmuteUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnmuteUserEventCopyWith<UnmuteUserEvent> get copyWith => _$UnmuteUserEventCopyWithImpl<UnmuteUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnmuteUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.unmuteUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $UnmuteUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $UnmuteUserEventCopyWith(UnmuteUserEvent value, $Res Function(UnmuteUserEvent) _then) = _$UnmuteUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$UnmuteUserEventCopyWithImpl<$Res>
    implements $UnmuteUserEventCopyWith<$Res> {
  _$UnmuteUserEventCopyWithImpl(this._self, this._then);

  final UnmuteUserEvent _self;
  final $Res Function(UnmuteUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(UnmuteUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadMutedUsersEvent implements SocialRelationEvent {
  const LoadMutedUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMutedUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.loadMutedUsers()';
}


}




/// @nodoc


class RestrictUserEvent implements SocialRelationEvent {
  const RestrictUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestrictUserEventCopyWith<RestrictUserEvent> get copyWith => _$RestrictUserEventCopyWithImpl<RestrictUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestrictUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.restrictUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $RestrictUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $RestrictUserEventCopyWith(RestrictUserEvent value, $Res Function(RestrictUserEvent) _then) = _$RestrictUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$RestrictUserEventCopyWithImpl<$Res>
    implements $RestrictUserEventCopyWith<$Res> {
  _$RestrictUserEventCopyWithImpl(this._self, this._then);

  final RestrictUserEvent _self;
  final $Res Function(RestrictUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(RestrictUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnrestrictUserEvent implements SocialRelationEvent {
  const UnrestrictUserEvent(this.targetUserId);
  

 final  String targetUserId;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnrestrictUserEventCopyWith<UnrestrictUserEvent> get copyWith => _$UnrestrictUserEventCopyWithImpl<UnrestrictUserEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnrestrictUserEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId);

@override
String toString() {
  return 'SocialRelationEvent.unrestrictUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $UnrestrictUserEventCopyWith<$Res> implements $SocialRelationEventCopyWith<$Res> {
  factory $UnrestrictUserEventCopyWith(UnrestrictUserEvent value, $Res Function(UnrestrictUserEvent) _then) = _$UnrestrictUserEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId
});




}
/// @nodoc
class _$UnrestrictUserEventCopyWithImpl<$Res>
    implements $UnrestrictUserEventCopyWith<$Res> {
  _$UnrestrictUserEventCopyWithImpl(this._self, this._then);

  final UnrestrictUserEvent _self;
  final $Res Function(UnrestrictUserEvent) _then;

/// Create a copy of SocialRelationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(UnrestrictUserEvent(
null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadRestrictedUsersEvent implements SocialRelationEvent {
  const LoadRestrictedUsersEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRestrictedUsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.loadRestrictedUsers()';
}


}




/// @nodoc


class ClearErrorEvent implements SocialRelationEvent {
  const ClearErrorEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearErrorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.clearError()';
}


}




/// @nodoc


class ClearMessageEvent implements SocialRelationEvent {
  const ClearMessageEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearMessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SocialRelationEvent.clearMessage()';
}


}




// dart format on
