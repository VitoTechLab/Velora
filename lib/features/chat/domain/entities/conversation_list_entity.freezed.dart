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

 String get userId; String get conversationId; String get type;// 'direct' or 'group'
 String? get title; String? get photoUrl; DateTime? get lastMessageAt; String? get lastMessageId; String? get lastMessageKind; String? get lastMessagePreview; int get unreadCount; DateTime? get lastReadAt;
/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationListEntityCopyWith<ConversationListEntity> get copyWith => _$ConversationListEntityCopyWithImpl<ConversationListEntity>(this as ConversationListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationListEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageId, lastMessageId) || other.lastMessageId == lastMessageId)&&(identical(other.lastMessageKind, lastMessageKind) || other.lastMessageKind == lastMessageKind)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,type,title,photoUrl,lastMessageAt,lastMessageId,lastMessageKind,lastMessagePreview,unreadCount,lastReadAt);

@override
String toString() {
  return 'ConversationListEntity(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
}


}

/// @nodoc
abstract mixin class $ConversationListEntityCopyWith<$Res>  {
  factory $ConversationListEntityCopyWith(ConversationListEntity value, $Res Function(ConversationListEntity) _then) = _$ConversationListEntityCopyWithImpl;
@useResult
$Res call({
 String userId, String conversationId, String type, String? title, String? photoUrl, DateTime? lastMessageAt, String? lastMessageId, String? lastMessageKind, String? lastMessagePreview, int unreadCount, DateTime? lastReadAt
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String conversationId,  String type,  String? title,  String? photoUrl,  DateTime? lastMessageAt,  String? lastMessageId,  String? lastMessageKind,  String? lastMessagePreview,  int unreadCount,  DateTime? lastReadAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String conversationId,  String type,  String? title,  String? photoUrl,  DateTime? lastMessageAt,  String? lastMessageId,  String? lastMessageKind,  String? lastMessagePreview,  int unreadCount,  DateTime? lastReadAt)  $default,) {final _that = this;
switch (_that) {
case _ConversationListEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String conversationId,  String type,  String? title,  String? photoUrl,  DateTime? lastMessageAt,  String? lastMessageId,  String? lastMessageKind,  String? lastMessagePreview,  int unreadCount,  DateTime? lastReadAt)?  $default,) {final _that = this;
switch (_that) {
case _ConversationListEntity() when $default != null:
return $default(_that.userId,_that.conversationId,_that.type,_that.title,_that.photoUrl,_that.lastMessageAt,_that.lastMessageId,_that.lastMessageKind,_that.lastMessagePreview,_that.unreadCount,_that.lastReadAt);case _:
  return null;

}
}

}

/// @nodoc


class _ConversationListEntity implements ConversationListEntity {
  const _ConversationListEntity({required this.userId, required this.conversationId, required this.type, this.title, this.photoUrl, this.lastMessageAt, this.lastMessageId, this.lastMessageKind, this.lastMessagePreview, this.unreadCount = 0, this.lastReadAt});
  

@override final  String userId;
@override final  String conversationId;
@override final  String type;
// 'direct' or 'group'
@override final  String? title;
@override final  String? photoUrl;
@override final  DateTime? lastMessageAt;
@override final  String? lastMessageId;
@override final  String? lastMessageKind;
@override final  String? lastMessagePreview;
@override@JsonKey() final  int unreadCount;
@override final  DateTime? lastReadAt;

/// Create a copy of ConversationListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationListEntityCopyWith<_ConversationListEntity> get copyWith => __$ConversationListEntityCopyWithImpl<_ConversationListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationListEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessageId, lastMessageId) || other.lastMessageId == lastMessageId)&&(identical(other.lastMessageKind, lastMessageKind) || other.lastMessageKind == lastMessageKind)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,type,title,photoUrl,lastMessageAt,lastMessageId,lastMessageKind,lastMessagePreview,unreadCount,lastReadAt);

@override
String toString() {
  return 'ConversationListEntity(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
}


}

/// @nodoc
abstract mixin class _$ConversationListEntityCopyWith<$Res> implements $ConversationListEntityCopyWith<$Res> {
  factory _$ConversationListEntityCopyWith(_ConversationListEntity value, $Res Function(_ConversationListEntity) _then) = __$ConversationListEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, String conversationId, String type, String? title, String? photoUrl, DateTime? lastMessageAt, String? lastMessageId, String? lastMessageKind, String? lastMessagePreview, int unreadCount, DateTime? lastReadAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? conversationId = null,Object? type = null,Object? title = freezed,Object? photoUrl = freezed,Object? lastMessageAt = freezed,Object? lastMessageId = freezed,Object? lastMessageKind = freezed,Object? lastMessagePreview = freezed,Object? unreadCount = null,Object? lastReadAt = freezed,}) {
  return _then(_ConversationListEntity(
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
