// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConversationListEntity {

 String get conversationId;/// Other participant info (for direct conversations)
 String? get otherUserId; String? get otherUserUsername; String? get otherUserFullName; String? get otherUserAvatarUrl;/// Last message preview info
 String? get lastMessageBody; DateTime? get lastMessageAt; String? get lastMessageSenderId;/// Unread count for the current user
 int get unreadCount;
/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationListEntityCopyWith<ConversationListEntity> get copyWith => _$ConversationListEntityCopyWithImpl<ConversationListEntity>(this as ConversationListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationListEntity&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.otherUserId, otherUserId) || other.otherUserId == otherUserId)&&(identical(other.otherUserUsername, otherUserUsername) || other.otherUserUsername == otherUserUsername)&&(identical(other.otherUserFullName, otherUserFullName) || other.otherUserFullName == otherUserFullName)&&(identical(other.otherUserAvatarUrl, otherUserAvatarUrl) || other.otherUserAvatarUrl == otherUserAvatarUrl)&&(identical(other.lastMessageBody, lastMessageBody) || other.lastMessageBody == lastMessageBody)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageSenderId, lastMessageSenderId) || other.lastMessageSenderId == lastMessageSenderId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,otherUserId,otherUserUsername,otherUserFullName,otherUserAvatarUrl,lastMessageBody,lastMessageAt,lastMessageSenderId,unreadCount);

@override
String toString() {
  return 'ConversationListEntity(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ConversationListEntityCopyWith<$Res>  {
  factory $ConversationListEntityCopyWith(ConversationListEntity value, $Res Function(ConversationListEntity) _then) = _$ConversationListEntityCopyWithImpl;
@useResult
$Res call({
 String conversationId, String? otherUserId, String? otherUserUsername, String? otherUserFullName, String? otherUserAvatarUrl, String? lastMessageBody, DateTime? lastMessageAt, String? lastMessageSenderId, int unreadCount
});




}
/// @nodoc
class _$ConversationListEntityCopyWithImpl<$Res>
    implements $ConversationListEntityCopyWith<$Res> {
  _$ConversationListEntityCopyWithImpl(this._self, this._then);

  final ConversationListEntity _self;
  final $Res Function(ConversationListEntity) _then;

/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversationId = null,Object? otherUserId = freezed,Object? otherUserUsername = freezed,Object? otherUserFullName = freezed,Object? otherUserAvatarUrl = freezed,Object? lastMessageBody = freezed,Object? lastMessageAt = freezed,Object? lastMessageSenderId = freezed,Object? unreadCount = null,}) {
  return _then(_self.copyWith(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,otherUserId: freezed == otherUserId ? _self.otherUserId : otherUserId // ignore: cast_nullable_to_non_nullable
as String?,otherUserUsername: freezed == otherUserUsername ? _self.otherUserUsername : otherUserUsername // ignore: cast_nullable_to_non_nullable
as String?,otherUserFullName: freezed == otherUserFullName ? _self.otherUserFullName : otherUserFullName // ignore: cast_nullable_to_non_nullable
as String?,otherUserAvatarUrl: freezed == otherUserAvatarUrl ? _self.otherUserAvatarUrl : otherUserAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMessageBody: freezed == lastMessageBody ? _self.lastMessageBody : lastMessageBody // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageSenderId: freezed == lastMessageSenderId ? _self.lastMessageSenderId : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationListEntity].
extension ConversationListEntityPatterns on ConversationListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationListEntity value)  $default,){
final _that = this;
switch (_that) {
case _ConversationListEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String conversationId,  String? otherUserId,  String? otherUserUsername,  String? otherUserFullName,  String? otherUserAvatarUrl,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
return $default(_that.conversationId,_that.otherUserId,_that.otherUserUsername,_that.otherUserFullName,_that.otherUserAvatarUrl,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String conversationId,  String? otherUserId,  String? otherUserUsername,  String? otherUserFullName,  String? otherUserAvatarUrl,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ConversationListEntity():
return $default(_that.conversationId,_that.otherUserId,_that.otherUserUsername,_that.otherUserFullName,_that.otherUserAvatarUrl,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String conversationId,  String? otherUserId,  String? otherUserUsername,  String? otherUserFullName,  String? otherUserAvatarUrl,  String? lastMessageBody,  DateTime? lastMessageAt,  String? lastMessageSenderId,  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
return $default(_that.conversationId,_that.otherUserId,_that.otherUserUsername,_that.otherUserFullName,_that.otherUserAvatarUrl,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc


class _ConversationListEntity implements ConversationListEntity {
  const _ConversationListEntity({required this.conversationId, this.otherUserId, this.otherUserUsername, this.otherUserFullName, this.otherUserAvatarUrl, this.lastMessageBody, this.lastMessageAt, this.lastMessageSenderId, this.unreadCount = 0});
  

@override final  String conversationId;
/// Other participant info (for direct conversations)
@override final  String? otherUserId;
@override final  String? otherUserUsername;
@override final  String? otherUserFullName;
@override final  String? otherUserAvatarUrl;
/// Last message preview info
@override final  String? lastMessageBody;
@override final  DateTime? lastMessageAt;
@override final  String? lastMessageSenderId;
/// Unread count for the current user
@override@JsonKey() final  int unreadCount;

/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationListEntityCopyWith<_ConversationListEntity> get copyWith => __$ConversationListEntityCopyWithImpl<_ConversationListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationListEntity&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.otherUserId, otherUserId) || other.otherUserId == otherUserId)&&(identical(other.otherUserUsername, otherUserUsername) || other.otherUserUsername == otherUserUsername)&&(identical(other.otherUserFullName, otherUserFullName) || other.otherUserFullName == otherUserFullName)&&(identical(other.otherUserAvatarUrl, otherUserAvatarUrl) || other.otherUserAvatarUrl == otherUserAvatarUrl)&&(identical(other.lastMessageBody, lastMessageBody) || other.lastMessageBody == lastMessageBody)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageSenderId, lastMessageSenderId) || other.lastMessageSenderId == lastMessageSenderId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}


@override
int get hashCode => Object.hash(runtimeType,conversationId,otherUserId,otherUserUsername,otherUserFullName,otherUserAvatarUrl,lastMessageBody,lastMessageAt,lastMessageSenderId,unreadCount);

@override
String toString() {
  return 'ConversationListEntity(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ConversationListEntityCopyWith<$Res> implements $ConversationListEntityCopyWith<$Res> {
  factory _$ConversationListEntityCopyWith(_ConversationListEntity value, $Res Function(_ConversationListEntity) _then) = __$ConversationListEntityCopyWithImpl;
@override @useResult
$Res call({
 String conversationId, String? otherUserId, String? otherUserUsername, String? otherUserFullName, String? otherUserAvatarUrl, String? lastMessageBody, DateTime? lastMessageAt, String? lastMessageSenderId, int unreadCount
});




}
/// @nodoc
class __$ConversationListEntityCopyWithImpl<$Res>
    implements _$ConversationListEntityCopyWith<$Res> {
  __$ConversationListEntityCopyWithImpl(this._self, this._then);

  final _ConversationListEntity _self;
  final $Res Function(_ConversationListEntity) _then;

/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? otherUserId = freezed,Object? otherUserUsername = freezed,Object? otherUserFullName = freezed,Object? otherUserAvatarUrl = freezed,Object? lastMessageBody = freezed,Object? lastMessageAt = freezed,Object? lastMessageSenderId = freezed,Object? unreadCount = null,}) {
  return _then(_ConversationListEntity(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,otherUserId: freezed == otherUserId ? _self.otherUserId : otherUserId // ignore: cast_nullable_to_non_nullable
as String?,otherUserUsername: freezed == otherUserUsername ? _self.otherUserUsername : otherUserUsername // ignore: cast_nullable_to_non_nullable
as String?,otherUserFullName: freezed == otherUserFullName ? _self.otherUserFullName : otherUserFullName // ignore: cast_nullable_to_non_nullable
as String?,otherUserAvatarUrl: freezed == otherUserAvatarUrl ? _self.otherUserAvatarUrl : otherUserAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMessageBody: freezed == lastMessageBody ? _self.lastMessageBody : lastMessageBody // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageSenderId: freezed == lastMessageSenderId ? _self.lastMessageSenderId : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
