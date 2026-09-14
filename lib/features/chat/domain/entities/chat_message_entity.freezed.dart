// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessageEntity {

 String get id; String get conversationId; String? get senderId; String get kind; String? get body; String? get replyToMessageId; DateTime? get editedAt; DateTime? get deletedAt; String? get deletedBy; DateTime get createdAt; DateTime get updatedAt;// Related payloads
 PollPayloadEntity? get poll; EventPayloadEntity? get event;// Attachments (images, videos, audio, files)
 List<MessageAttachmentEntity> get attachments; MessageStatus get status;
/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith => _$ChatMessageEntityCopyWithImpl<ChatMessageEntity>(this as ChatMessageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.body, body) || other.body == body)&&(identical(other.replyToMessageId, replyToMessageId) || other.replyToMessageId == replyToMessageId)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.deletedBy, deletedBy) || other.deletedBy == deletedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,conversationId,senderId,kind,body,replyToMessageId,editedAt,deletedAt,deletedBy,createdAt,updatedAt,poll,event,const DeepCollectionEquality().hash(attachments),status);

@override
String toString() {
  return 'ChatMessageEntity(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, poll: $poll, event: $event, attachments: $attachments, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatMessageEntityCopyWith<$Res>  {
  factory $ChatMessageEntityCopyWith(ChatMessageEntity value, $Res Function(ChatMessageEntity) _then) = _$ChatMessageEntityCopyWithImpl;
@useResult
$Res call({
 String id, String conversationId, String? senderId, String kind, String? body, String? replyToMessageId, DateTime? editedAt, DateTime? deletedAt, String? deletedBy, DateTime createdAt, DateTime updatedAt, PollPayloadEntity? poll, EventPayloadEntity? event, List<MessageAttachmentEntity> attachments, MessageStatus status
});


$PollPayloadEntityCopyWith<$Res>? get poll;$EventPayloadEntityCopyWith<$Res>? get event;

}
/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._self, this._then);

  final ChatMessageEntity _self;
  final $Res Function(ChatMessageEntity) _then;

/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? conversationId = null,Object? senderId = freezed,Object? kind = null,Object? body = freezed,Object? replyToMessageId = freezed,Object? editedAt = freezed,Object? deletedAt = freezed,Object? deletedBy = freezed,Object? createdAt = null,Object? updatedAt = null,Object? poll = freezed,Object? event = freezed,Object? attachments = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,replyToMessageId: freezed == replyToMessageId ? _self.replyToMessageId : replyToMessageId // ignore: cast_nullable_to_non_nullable
as String?,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedBy: freezed == deletedBy ? _self.deletedBy : deletedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as PollPayloadEntity?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EventPayloadEntity?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<MessageAttachmentEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}
/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollPayloadEntityCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $PollPayloadEntityCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventPayloadEntityCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EventPayloadEntityCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessageEntity].
extension ChatMessageEntityPatterns on ChatMessageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String conversationId,  String? senderId,  String kind,  String? body,  String? replyToMessageId,  DateTime? editedAt,  DateTime? deletedAt,  String? deletedBy,  DateTime createdAt,  DateTime updatedAt,  PollPayloadEntity? poll,  EventPayloadEntity? event,  List<MessageAttachmentEntity> attachments,  MessageStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageEntity() when $default != null:
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.poll,_that.event,_that.attachments,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String conversationId,  String? senderId,  String kind,  String? body,  String? replyToMessageId,  DateTime? editedAt,  DateTime? deletedAt,  String? deletedBy,  DateTime createdAt,  DateTime updatedAt,  PollPayloadEntity? poll,  EventPayloadEntity? event,  List<MessageAttachmentEntity> attachments,  MessageStatus status)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageEntity():
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.poll,_that.event,_that.attachments,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String conversationId,  String? senderId,  String kind,  String? body,  String? replyToMessageId,  DateTime? editedAt,  DateTime? deletedAt,  String? deletedBy,  DateTime createdAt,  DateTime updatedAt,  PollPayloadEntity? poll,  EventPayloadEntity? event,  List<MessageAttachmentEntity> attachments,  MessageStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageEntity() when $default != null:
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.poll,_that.event,_that.attachments,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessageEntity extends ChatMessageEntity {
  const _ChatMessageEntity({required this.id, required this.conversationId, required this.senderId, required this.kind, this.body, this.replyToMessageId, this.editedAt, this.deletedAt, this.deletedBy, required this.createdAt, required this.updatedAt, this.poll, this.event, final  List<MessageAttachmentEntity> attachments = const [], this.status = MessageStatus.sent}): _attachments = attachments,super._();
  

@override final  String id;
@override final  String conversationId;
@override final  String? senderId;
@override final  String kind;
@override final  String? body;
@override final  String? replyToMessageId;
@override final  DateTime? editedAt;
@override final  DateTime? deletedAt;
@override final  String? deletedBy;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
// Related payloads
@override final  PollPayloadEntity? poll;
@override final  EventPayloadEntity? event;
// Attachments (images, videos, audio, files)
 final  List<MessageAttachmentEntity> _attachments;
// Attachments (images, videos, audio, files)
@override@JsonKey() List<MessageAttachmentEntity> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey() final  MessageStatus status;

/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageEntityCopyWith<_ChatMessageEntity> get copyWith => __$ChatMessageEntityCopyWithImpl<_ChatMessageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.body, body) || other.body == body)&&(identical(other.replyToMessageId, replyToMessageId) || other.replyToMessageId == replyToMessageId)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.deletedBy, deletedBy) || other.deletedBy == deletedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.poll, poll) || other.poll == poll)&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,id,conversationId,senderId,kind,body,replyToMessageId,editedAt,deletedAt,deletedBy,createdAt,updatedAt,poll,event,const DeepCollectionEquality().hash(_attachments),status);

@override
String toString() {
  return 'ChatMessageEntity(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, poll: $poll, event: $event, attachments: $attachments, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageEntityCopyWith<$Res> implements $ChatMessageEntityCopyWith<$Res> {
  factory _$ChatMessageEntityCopyWith(_ChatMessageEntity value, $Res Function(_ChatMessageEntity) _then) = __$ChatMessageEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String conversationId, String? senderId, String kind, String? body, String? replyToMessageId, DateTime? editedAt, DateTime? deletedAt, String? deletedBy, DateTime createdAt, DateTime updatedAt, PollPayloadEntity? poll, EventPayloadEntity? event, List<MessageAttachmentEntity> attachments, MessageStatus status
});


@override $PollPayloadEntityCopyWith<$Res>? get poll;@override $EventPayloadEntityCopyWith<$Res>? get event;

}
/// @nodoc
class __$ChatMessageEntityCopyWithImpl<$Res>
    implements _$ChatMessageEntityCopyWith<$Res> {
  __$ChatMessageEntityCopyWithImpl(this._self, this._then);

  final _ChatMessageEntity _self;
  final $Res Function(_ChatMessageEntity) _then;

/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? conversationId = null,Object? senderId = freezed,Object? kind = null,Object? body = freezed,Object? replyToMessageId = freezed,Object? editedAt = freezed,Object? deletedAt = freezed,Object? deletedBy = freezed,Object? createdAt = null,Object? updatedAt = null,Object? poll = freezed,Object? event = freezed,Object? attachments = null,Object? status = null,}) {
  return _then(_ChatMessageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,senderId: freezed == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String?,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,replyToMessageId: freezed == replyToMessageId ? _self.replyToMessageId : replyToMessageId // ignore: cast_nullable_to_non_nullable
as String?,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedBy: freezed == deletedBy ? _self.deletedBy : deletedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,poll: freezed == poll ? _self.poll : poll // ignore: cast_nullable_to_non_nullable
as PollPayloadEntity?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EventPayloadEntity?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<MessageAttachmentEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}

/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollPayloadEntityCopyWith<$Res>? get poll {
    if (_self.poll == null) {
    return null;
  }

  return $PollPayloadEntityCopyWith<$Res>(_self.poll!, (value) {
    return _then(_self.copyWith(poll: value));
  });
}/// Create a copy of ChatMessageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventPayloadEntityCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EventPayloadEntityCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}

// dart format on
