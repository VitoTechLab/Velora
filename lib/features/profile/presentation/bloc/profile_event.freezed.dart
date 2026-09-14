// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadProfileEvent value)?  loadProfile,TResult Function( UpdateProfileEvent value)?  updateProfile,TResult Function( ToggleFollowEvent value)?  toggleFollow,TResult Function( BlockUserEvent value)?  blockUser,TResult Function( UnblockUserEvent value)?  unblockUser,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadProfileEvent() when loadProfile != null:
return loadProfile(_that);case UpdateProfileEvent() when updateProfile != null:
return updateProfile(_that);case ToggleFollowEvent() when toggleFollow != null:
return toggleFollow(_that);case BlockUserEvent() when blockUser != null:
return blockUser(_that);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadProfileEvent value)  loadProfile,required TResult Function( UpdateProfileEvent value)  updateProfile,required TResult Function( ToggleFollowEvent value)  toggleFollow,required TResult Function( BlockUserEvent value)  blockUser,required TResult Function( UnblockUserEvent value)  unblockUser,}){
final _that = this;
switch (_that) {
case LoadProfileEvent():
return loadProfile(_that);case UpdateProfileEvent():
return updateProfile(_that);case ToggleFollowEvent():
return toggleFollow(_that);case BlockUserEvent():
return blockUser(_that);case UnblockUserEvent():
return unblockUser(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadProfileEvent value)?  loadProfile,TResult? Function( UpdateProfileEvent value)?  updateProfile,TResult? Function( ToggleFollowEvent value)?  toggleFollow,TResult? Function( BlockUserEvent value)?  blockUser,TResult? Function( UnblockUserEvent value)?  unblockUser,}){
final _that = this;
switch (_that) {
case LoadProfileEvent() when loadProfile != null:
return loadProfile(_that);case UpdateProfileEvent() when updateProfile != null:
return updateProfile(_that);case ToggleFollowEvent() when toggleFollow != null:
return toggleFollow(_that);case BlockUserEvent() when blockUser != null:
return blockUser(_that);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  loadProfile,TResult Function( UpdateProfileModel updateModel)?  updateProfile,TResult Function( String targetUserId,  bool isPrivate)?  toggleFollow,TResult Function( String targetUserId)?  blockUser,TResult Function( String targetUserId)?  unblockUser,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadProfileEvent() when loadProfile != null:
return loadProfile(_that.userId);case UpdateProfileEvent() when updateProfile != null:
return updateProfile(_that.updateModel);case ToggleFollowEvent() when toggleFollow != null:
return toggleFollow(_that.targetUserId,_that.isPrivate);case BlockUserEvent() when blockUser != null:
return blockUser(_that.targetUserId);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that.targetUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  loadProfile,required TResult Function( UpdateProfileModel updateModel)  updateProfile,required TResult Function( String targetUserId,  bool isPrivate)  toggleFollow,required TResult Function( String targetUserId)  blockUser,required TResult Function( String targetUserId)  unblockUser,}) {final _that = this;
switch (_that) {
case LoadProfileEvent():
return loadProfile(_that.userId);case UpdateProfileEvent():
return updateProfile(_that.updateModel);case ToggleFollowEvent():
return toggleFollow(_that.targetUserId,_that.isPrivate);case BlockUserEvent():
return blockUser(_that.targetUserId);case UnblockUserEvent():
return unblockUser(_that.targetUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  loadProfile,TResult? Function( UpdateProfileModel updateModel)?  updateProfile,TResult? Function( String targetUserId,  bool isPrivate)?  toggleFollow,TResult? Function( String targetUserId)?  blockUser,TResult? Function( String targetUserId)?  unblockUser,}) {final _that = this;
switch (_that) {
case LoadProfileEvent() when loadProfile != null:
return loadProfile(_that.userId);case UpdateProfileEvent() when updateProfile != null:
return updateProfile(_that.updateModel);case ToggleFollowEvent() when toggleFollow != null:
return toggleFollow(_that.targetUserId,_that.isPrivate);case BlockUserEvent() when blockUser != null:
return blockUser(_that.targetUserId);case UnblockUserEvent() when unblockUser != null:
return unblockUser(_that.targetUserId);case _:
  return null;

}
}

}

/// @nodoc


class LoadProfileEvent implements ProfileEvent {
  const LoadProfileEvent({required this.userId});
  

 final  String userId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadProfileEventCopyWith<LoadProfileEvent> get copyWith => _$LoadProfileEventCopyWithImpl<LoadProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent.loadProfile(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadProfileEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $LoadProfileEventCopyWith(LoadProfileEvent value, $Res Function(LoadProfileEvent) _then) = _$LoadProfileEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadProfileEventCopyWithImpl<$Res>
    implements $LoadProfileEventCopyWith<$Res> {
  _$LoadProfileEventCopyWithImpl(this._self, this._then);

  final LoadProfileEvent _self;
  final $Res Function(LoadProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadProfileEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateProfileEvent implements ProfileEvent {
  const UpdateProfileEvent({required this.updateModel});
  

 final  UpdateProfileModel updateModel;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileEventCopyWith<UpdateProfileEvent> get copyWith => _$UpdateProfileEventCopyWithImpl<UpdateProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileEvent&&(identical(other.updateModel, updateModel) || other.updateModel == updateModel));
}


@override
int get hashCode => Object.hash(runtimeType,updateModel);

@override
String toString() {
  return 'ProfileEvent.updateProfile(updateModel: $updateModel)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(UpdateProfileEvent value, $Res Function(UpdateProfileEvent) _then) = _$UpdateProfileEventCopyWithImpl;
@useResult
$Res call({
 UpdateProfileModel updateModel
});


$UpdateProfileModelCopyWith<$Res> get updateModel;

}
/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._self, this._then);

  final UpdateProfileEvent _self;
  final $Res Function(UpdateProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateModel = null,}) {
  return _then(UpdateProfileEvent(
updateModel: null == updateModel ? _self.updateModel : updateModel // ignore: cast_nullable_to_non_nullable
as UpdateProfileModel,
  ));
}

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateProfileModelCopyWith<$Res> get updateModel {
  
  return $UpdateProfileModelCopyWith<$Res>(_self.updateModel, (value) {
    return _then(_self.copyWith(updateModel: value));
  });
}
}

/// @nodoc


class ToggleFollowEvent implements ProfileEvent {
  const ToggleFollowEvent({required this.targetUserId, required this.isPrivate});
  

 final  String targetUserId;
 final  bool isPrivate;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFollowEventCopyWith<ToggleFollowEvent> get copyWith => _$ToggleFollowEventCopyWithImpl<ToggleFollowEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFollowEvent&&(identical(other.targetUserId, targetUserId) || other.targetUserId == targetUserId)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate));
}


@override
int get hashCode => Object.hash(runtimeType,targetUserId,isPrivate);

@override
String toString() {
  return 'ProfileEvent.toggleFollow(targetUserId: $targetUserId, isPrivate: $isPrivate)';
}


}

/// @nodoc
abstract mixin class $ToggleFollowEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ToggleFollowEventCopyWith(ToggleFollowEvent value, $Res Function(ToggleFollowEvent) _then) = _$ToggleFollowEventCopyWithImpl;
@useResult
$Res call({
 String targetUserId, bool isPrivate
});




}
/// @nodoc
class _$ToggleFollowEventCopyWithImpl<$Res>
    implements $ToggleFollowEventCopyWith<$Res> {
  _$ToggleFollowEventCopyWithImpl(this._self, this._then);

  final ToggleFollowEvent _self;
  final $Res Function(ToggleFollowEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,Object? isPrivate = null,}) {
  return _then(ToggleFollowEvent(
targetUserId: null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BlockUserEvent implements ProfileEvent {
  const BlockUserEvent({required this.targetUserId});
  

 final  String targetUserId;

/// Create a copy of ProfileEvent
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
  return 'ProfileEvent.blockUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $BlockUserEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
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

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(BlockUserEvent(
targetUserId: null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnblockUserEvent implements ProfileEvent {
  const UnblockUserEvent({required this.targetUserId});
  

 final  String targetUserId;

/// Create a copy of ProfileEvent
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
  return 'ProfileEvent.unblockUser(targetUserId: $targetUserId)';
}


}

/// @nodoc
abstract mixin class $UnblockUserEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
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

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUserId = null,}) {
  return _then(UnblockUserEvent(
targetUserId: null == targetUserId ? _self.targetUserId : targetUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
