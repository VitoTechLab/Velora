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

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'conversation_id') String get conversationId;@JsonKey(name: 'type') String get type;// 'direct' or 'group'
@JsonKey(name: 'title') String? get title;@JsonKey(name: 'photo_url') String? get photoUrl;@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? get lastMessageAt;@JsonKey(name: 'last_message_id') String? get lastMessageId;@JsonKey(name: 'last_message_kind') String? get lastMessageKind;@JsonKey(name: 'last_message_preview') String? get lastMessagePreview;@JsonKey(name: 'unread_count') int get unreadCount;@UtcDateTimeConverter()@JsonKey(name: 'last_read_at') DateTime? get lastReadAt;
/// Create a copy of ConversationListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationListModelCopyWith<ConversationListModel> get copyWith => _$ConversationListModelCopyWithImpl<ConversationListModel>(this as ConversationListModel, _$identity);

  /// Serializes this ConversationListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationListModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageId, lastMessageId) || other.lastMessageId == lastMessageId)&&(identical(other.lastMessageKind, lastMessageKind) || other.lastMessageKind == lastMessageKind)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,type,title,photoUrl,lastMessageAt,lastMessageId,lastMessageKind,lastMessagePreview,unreadCount,lastReadAt);

@override
String toString() {
  return 'ConversationListModel(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
}


}

/// @nodoc
abstract mixin class $ConversationListModelCopyWith<$Res>  {
  factory $ConversationListModelCopyWith(ConversationListModel value, $Res Function(ConversationListModel) _then) = _$ConversationListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String? title,@JsonKey(name: 'photo_url') String? photoUrl,@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'last_message_id') String? lastMessageId,@JsonKey(name: 'last_message_kind') String? lastMessageKind,@JsonKey(name: 'last_message_preview') String? lastMessagePreview,@JsonKey(name: 'unread_count') int unreadCount,@UtcDateTimeConverter()@JsonKey(name: 'last_read_at') DateTime? lastReadAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? conversationId = null,Object? type = null,Object? title = freezed,Object? photoUrl = freezed,Object? lastMessageAt = freezed,Object? lastMessageId = freezed,Object? lastMessageKind = freezed,Object? lastMessagePreview = freezed,Object? unreadCount = null,Object? lastReadAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageId: freezed == lastMessageId ? _self.lastMessageId : lastMessageId // ignore: cast_nullable_to_non_nullable
as String?,lastMessageKind: freezed == lastMessageKind ? _self.lastMessageKind : lastMessageKind // ignore: cast_nullable_to_non_nullable
as String?,lastMessagePreview: freezed == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'photo_url')  String? photoUrl, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_id')  String? lastMessageId, @JsonKey(name: 'last_message_kind')  String? lastMessageKind, @JsonKey(name: 'last_message_preview')  String? lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @UtcDateTimeConverter()@JsonKey(name: 'last_read_at')  DateTime? lastReadAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
return $default(_that.userId,_that.conversationId,_that.type,_that.title,_that.photoUrl,_that.lastMessageAt,_that.lastMessageId,_that.lastMessageKind,_that.lastMessagePreview,_that.unreadCount,_that.lastReadAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'photo_url')  String? photoUrl, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_id')  String? lastMessageId, @JsonKey(name: 'last_message_kind')  String? lastMessageKind, @JsonKey(name: 'last_message_preview')  String? lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @UtcDateTimeConverter()@JsonKey(name: 'last_read_at')  DateTime? lastReadAt)  $default,) {final _that = this;
switch (_that) {
case _ConversationListModel():
return $default(_that.userId,_that.conversationId,_that.type,_that.title,_that.photoUrl,_that.lastMessageAt,_that.lastMessageId,_that.lastMessageKind,_that.lastMessagePreview,_that.unreadCount,_that.lastReadAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'photo_url')  String? photoUrl, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at')  DateTime? lastMessageAt, @JsonKey(name: 'last_message_id')  String? lastMessageId, @JsonKey(name: 'last_message_kind')  String? lastMessageKind, @JsonKey(name: 'last_message_preview')  String? lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @UtcDateTimeConverter()@JsonKey(name: 'last_read_at')  DateTime? lastReadAt)?  $default,) {final _that = this;
switch (_that) {
case _ConversationListModel() when $default != null:
return $default(_that.userId,_that.conversationId,_that.type,_that.title,_that.photoUrl,_that.lastMessageAt,_that.lastMessageId,_that.lastMessageKind,_that.lastMessagePreview,_that.unreadCount,_that.lastReadAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationListModel extends ConversationListModel {
  const _ConversationListModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'conversation_id') required this.conversationId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'title') this.title, @JsonKey(name: 'photo_url') this.photoUrl, @UtcDateTimeConverter()@JsonKey(name: 'last_message_at') this.lastMessageAt, @JsonKey(name: 'last_message_id') this.lastMessageId, @JsonKey(name: 'last_message_kind') this.lastMessageKind, @JsonKey(name: 'last_message_preview') this.lastMessagePreview, @JsonKey(name: 'unread_count') this.unreadCount = 0, @UtcDateTimeConverter()@JsonKey(name: 'last_read_at') this.lastReadAt}): super._();
  factory _ConversationListModel.fromJson(Map<String, dynamic> json) => _$ConversationListModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'conversation_id') final  String conversationId;
@override@JsonKey(name: 'type') final  String type;
// 'direct' or 'group'
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') final  DateTime? lastMessageAt;
@override@JsonKey(name: 'last_message_id') final  String? lastMessageId;
@override@JsonKey(name: 'last_message_kind') final  String? lastMessageKind;
@override@JsonKey(name: 'last_message_preview') final  String? lastMessagePreview;
@override@JsonKey(name: 'unread_count') final  int unreadCount;
@override@UtcDateTimeConverter()@JsonKey(name: 'last_read_at') final  DateTime? lastReadAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationListModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageId, lastMessageId) || other.lastMessageId == lastMessageId)&&(identical(other.lastMessageKind, lastMessageKind) || other.lastMessageKind == lastMessageKind)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,type,title,photoUrl,lastMessageAt,lastMessageId,lastMessageKind,lastMessagePreview,unreadCount,lastReadAt);

@override
String toString() {
  return 'ConversationListModel(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
}


}

/// @nodoc
abstract mixin class _$ConversationListModelCopyWith<$Res> implements $ConversationListModelCopyWith<$Res> {
  factory _$ConversationListModelCopyWith(_ConversationListModel value, $Res Function(_ConversationListModel) _then) = __$ConversationListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'type') String type,@JsonKey(name: 'title') String? title,@JsonKey(name: 'photo_url') String? photoUrl,@UtcDateTimeConverter()@JsonKey(name: 'last_message_at') DateTime? lastMessageAt,@JsonKey(name: 'last_message_id') String? lastMessageId,@JsonKey(name: 'last_message_kind') String? lastMessageKind,@JsonKey(name: 'last_message_preview') String? lastMessagePreview,@JsonKey(name: 'unread_count') int unreadCount,@UtcDateTimeConverter()@JsonKey(name: 'last_read_at') DateTime? lastReadAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? conversationId = null,Object? type = null,Object? title = freezed,Object? photoUrl = freezed,Object? lastMessageAt = freezed,Object? lastMessageId = freezed,Object? lastMessageKind = freezed,Object? lastMessagePreview = freezed,Object? unreadCount = null,Object? lastReadAt = freezed,}) {
  return _then(_ConversationListModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageId: freezed == lastMessageId ? _self.lastMessageId : lastMessageId // ignore: cast_nullable_to_non_nullable
as String?,lastMessageKind: freezed == lastMessageKind ? _self.lastMessageKind : lastMessageKind // ignore: cast_nullable_to_non_nullable
as String?,lastMessagePreview: freezed == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
