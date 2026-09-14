// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationListModel {

@JsonKey(name: 'conversation_id') String get conversationId;/// Other participant info (for direct conversations)
@JsonKey(name: 'other_user_id') String? get otherUserId;@JsonKey(name: 'other_user_username') String? get otherUserUsername;@JsonKey(name: 'other_user_full_name') String? get otherUserFullName;@JsonKey(name: 'other_user_avatar_url') String? get otherUserAvatarUrl;/// Last message preview info
@JsonKey(name: 'last_message_body') String? get lastMessageBody;@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? get lastMessageAt;@JsonKey(name: 'last_message_sender_id') String? get lastMessageSenderId;/// Unread count for the current user
@JsonKey(name: 'unread_count') int get unreadCount;
/// Create a copy of ConversationListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationListModelCopyWith<ConversationListModel> get copyWith => _$ConversationListModelCopyWithImpl<ConversationListModel>(this as ConversationListModel, _$identity);

  /// Serializes this ConversationListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationListModel&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.otherUserId, otherUserId) || other.otherUserId == otherUserId)&&(identical(other.otherUserUsername, otherUserUsername) || other.otherUserUsername == otherUserUsername)&&(identical(other.otherUserFullName, otherUserFullName) || other.otherUserFullName == otherUserFullName)&&(identical(other.otherUserAvatarUrl, otherUserAvatarUrl) || other.otherUserAvatarUrl == otherUserAvatarUrl)&&(identical(other.lastMessageBody, lastMessageBody) || other.lastMessageBody == lastMessageBody)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageSenderId, lastMessageSenderId) || other.lastMessageSenderId == lastMessageSenderId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversationId,otherUserId,otherUserUsername,otherUserFullName,otherUserAvatarUrl,lastMessageBody,lastMessageAt,lastMessageSenderId,unreadCount);

@override
String toString() {
  return 'ConversationListModel(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ConversationListModelCopyWith<$Res>  {
  factory $ConversationListModelCopyWith(ConversationListModel value, $Res Function(ConversationListModel) _then) = _$ConversationListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'other_user_id') String? otherUserId,@JsonKey(name: 'other_user_username') String? otherUserUsername,@JsonKey(name: 'other_user_full_name') String? otherUserFullName,@JsonKey(name: 'other_user_avatar_url') String? otherUserAvatarUrl,@JsonKey(name: 'last_message_body') String? lastMessageBody,@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'last_message_sender_id') String? lastMessageSenderId,@JsonKey(name: 'unread_count') int unreadCount
});




}
/// @nodoc
class _$ConversationListModelCopyWithImpl<$Res>
    implements $ConversationListModelCopyWith<$Res> {
  _$ConversationListModelCopyWithImpl(this._self, this._then);

  final ConversationListModel _self;
  final $Res Function(ConversationListModel) _then;

/// Create a copy of ConversationListModel
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


/// Adds pattern-matching-related methods to [ConversationListModel].
extension ConversationListModelPatterns on ConversationListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationListModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationListModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'other_user_id')  String? otherUserId, @JsonKey(name: 'other_user_username')  String? otherUserUsername, @JsonKey(name: 'other_user_full_name')  String? otherUserFullName, @JsonKey(name: 'other_user_avatar_url')  String? otherUserAvatarUrl, @JsonKey(name: 'last_message_body')  String? lastMessageBody, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_sender_id')  String? lastMessageSenderId, @JsonKey(name: 'unread_count')  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'other_user_id')  String? otherUserId, @JsonKey(name: 'other_user_username')  String? otherUserUsername, @JsonKey(name: 'other_user_full_name')  String? otherUserFullName, @JsonKey(name: 'other_user_avatar_url')  String? otherUserAvatarUrl, @JsonKey(name: 'last_message_body')  String? lastMessageBody, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_sender_id')  String? lastMessageSenderId, @JsonKey(name: 'unread_count')  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _ConversationListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'other_user_id')  String? otherUserId, @JsonKey(name: 'other_user_username')  String? otherUserUsername, @JsonKey(name: 'other_user_full_name')  String? otherUserFullName, @JsonKey(name: 'other_user_avatar_url')  String? otherUserAvatarUrl, @JsonKey(name: 'last_message_body')  String? lastMessageBody, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_sender_id')  String? lastMessageSenderId, @JsonKey(name: 'unread_count')  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
return $default(_that.conversationId,_that.otherUserId,_that.otherUserUsername,_that.otherUserFullName,_that.otherUserAvatarUrl,_that.lastMessageBody,_that.lastMessageAt,_that.lastMessageSenderId,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationListModel extends ConversationListModel {
  const _ConversationListModel({@JsonKey(name: 'conversation_id') required this.conversationId, @JsonKey(name: 'other_user_id') this.otherUserId, @JsonKey(name: 'other_user_username') this.otherUserUsername, @JsonKey(name: 'other_user_full_name') this.otherUserFullName, @JsonKey(name: 'other_user_avatar_url') this.otherUserAvatarUrl, @JsonKey(name: 'last_message_body') this.lastMessageBody, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at') this.lastMessageAt, @JsonKey(name: 'last_message_sender_id') this.lastMessageSenderId, @JsonKey(name: 'unread_count') this.unreadCount = 0}): super._();
  factory _ConversationListModel.fromJson(Map<String, dynamic> json) => _$ConversationListModelFromJson(json);

@override@JsonKey(name: 'conversation_id') final  String conversationId;
/// Other participant info (for direct conversations)
@override@JsonKey(name: 'other_user_id') final  String? otherUserId;
@override@JsonKey(name: 'other_user_username') final  String? otherUserUsername;
@override@JsonKey(name: 'other_user_full_name') final  String? otherUserFullName;
@override@JsonKey(name: 'other_user_avatar_url') final  String? otherUserAvatarUrl;
/// Last message preview info
@override@JsonKey(name: 'last_message_body') final  String? lastMessageBody;
@override@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') final  DateTime? lastMessageAt;
@override@JsonKey(name: 'last_message_sender_id') final  String? lastMessageSenderId;
/// Unread count for the current user
@override@JsonKey(name: 'unread_count') final  int unreadCount;

/// Create a copy of ConversationListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationListModelCopyWith<_ConversationListModel> get copyWith => __$ConversationListModelCopyWithImpl<_ConversationListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationListModel&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.otherUserId, otherUserId) || other.otherUserId == otherUserId)&&(identical(other.otherUserUsername, otherUserUsername) || other.otherUserUsername == otherUserUsername)&&(identical(other.otherUserFullName, otherUserFullName) || other.otherUserFullName == otherUserFullName)&&(identical(other.otherUserAvatarUrl, otherUserAvatarUrl) || other.otherUserAvatarUrl == otherUserAvatarUrl)&&(identical(other.lastMessageBody, lastMessageBody) || other.lastMessageBody == lastMessageBody)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageSenderId, lastMessageSenderId) || other.lastMessageSenderId == lastMessageSenderId)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversationId,otherUserId,otherUserUsername,otherUserFullName,otherUserAvatarUrl,lastMessageBody,lastMessageAt,lastMessageSenderId,unreadCount);

@override
String toString() {
  return 'ConversationListModel(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ConversationListModelCopyWith<$Res> implements $ConversationListModelCopyWith<$Res> {
  factory _$ConversationListModelCopyWith(_ConversationListModel value, $Res Function(_ConversationListModel) _then) = __$ConversationListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'other_user_id') String? otherUserId,@JsonKey(name: 'other_user_username') String? otherUserUsername,@JsonKey(name: 'other_user_full_name') String? otherUserFullName,@JsonKey(name: 'other_user_avatar_url') String? otherUserAvatarUrl,@JsonKey(name: 'last_message_body') String? lastMessageBody,@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'last_message_sender_id') String? lastMessageSenderId,@JsonKey(name: 'unread_count') int unreadCount
});




}
/// @nodoc
class __$ConversationListModelCopyWithImpl<$Res>
    implements _$ConversationListModelCopyWith<$Res> {
  __$ConversationListModelCopyWithImpl(this._self, this._then);

  final _ConversationListModel _self;
  final $Res Function(_ConversationListModel) _then;

/// Create a copy of ConversationListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? otherUserId = freezed,Object? otherUserUsername = freezed,Object? otherUserFullName = freezed,Object? otherUserAvatarUrl = freezed,Object? lastMessageBody = freezed,Object? lastMessageAt = freezed,Object? lastMessageSenderId = freezed,Object? unreadCount = null,}) {
  return _then(_ConversationListModel(
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
