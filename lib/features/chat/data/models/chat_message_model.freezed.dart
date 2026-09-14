// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'conversation_id') String get conversationId;@JsonKey(name: 'sender_id') String? get senderId;@JsonKey(name: 'kind') String get kind;@JsonKey(name: 'body') String? get body;@JsonKey(name: 'reply_to_message_id') String? get replyToMessageId;@UtcDateTimeConverter()@JsonKey(name: 'edited_at') DateTime? get editedAt;@UtcDateTimeConverter()@JsonKey(name: 'deleted_at') DateTime? get deletedAt;@JsonKey(name: 'deleted_by') String? get deletedBy;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'message_poll_payload') PollPayloadModel? get pollPayload;@JsonKey(name: 'message_event_payload') EventPayloadModel? get eventPayload;@JsonKey(name: 'message_attachments') List<MessageAttachmentModel> get attachments;@JsonKey(includeFromJson: false, includeToJson: false) MessageStatus get status;
/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageModelCopyWith<ChatMessageModel> get copyWith => _$ChatMessageModelCopyWithImpl<ChatMessageModel>(this as ChatMessageModel, _$identity);

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.body, body) || other.body == body)&&(identical(other.replyToMessageId, replyToMessageId) || other.replyToMessageId == replyToMessageId)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.deletedBy, deletedBy) || other.deletedBy == deletedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pollPayload, pollPayload) || other.pollPayload == pollPayload)&&(identical(other.eventPayload, eventPayload) || other.eventPayload == eventPayload)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversationId,senderId,kind,body,replyToMessageId,editedAt,deletedAt,deletedBy,createdAt,updatedAt,pollPayload,eventPayload,const DeepCollectionEquality().hash(attachments),status);

@override
String toString() {
  return 'ChatMessageModel(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, pollPayload: $pollPayload, eventPayload: $eventPayload, attachments: $attachments, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatMessageModelCopyWith<$Res>  {
  factory $ChatMessageModelCopyWith(ChatMessageModel value, $Res Function(ChatMessageModel) _then) = _$ChatMessageModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'sender_id') String? senderId,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'body') String? body,@JsonKey(name: 'reply_to_message_id') String? replyToMessageId,@UtcDateTimeConverter()@JsonKey(name: 'edited_at') DateTime? editedAt,@UtcDateTimeConverter()@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'deleted_by') String? deletedBy,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'message_poll_payload') PollPayloadModel? pollPayload,@JsonKey(name: 'message_event_payload') EventPayloadModel? eventPayload,@JsonKey(name: 'message_attachments') List<MessageAttachmentModel> attachments,@JsonKey(includeFromJson: false, includeToJson: false) MessageStatus status
});


$PollPayloadModelCopyWith<$Res>? get pollPayload;$EventPayloadModelCopyWith<$Res>? get eventPayload;

}
/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._self, this._then);

  final ChatMessageModel _self;
  final $Res Function(ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? conversationId = null,Object? senderId = freezed,Object? kind = null,Object? body = freezed,Object? replyToMessageId = freezed,Object? editedAt = freezed,Object? deletedAt = freezed,Object? deletedBy = freezed,Object? createdAt = null,Object? updatedAt = null,Object? pollPayload = freezed,Object? eventPayload = freezed,Object? attachments = null,Object? status = null,}) {
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
as DateTime,pollPayload: freezed == pollPayload ? _self.pollPayload : pollPayload // ignore: cast_nullable_to_non_nullable
as PollPayloadModel?,eventPayload: freezed == eventPayload ? _self.eventPayload : eventPayload // ignore: cast_nullable_to_non_nullable
as EventPayloadModel?,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<MessageAttachmentModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}
/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollPayloadModelCopyWith<$Res>? get pollPayload {
    if (_self.pollPayload == null) {
    return null;
  }

  return $PollPayloadModelCopyWith<$Res>(_self.pollPayload!, (value) {
    return _then(_self.copyWith(pollPayload: value));
  });
}/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventPayloadModelCopyWith<$Res>? get eventPayload {
    if (_self.eventPayload == null) {
    return null;
  }

  return $EventPayloadModelCopyWith<$Res>(_self.eventPayload!, (value) {
    return _then(_self.copyWith(eventPayload: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessageModel].
extension ChatMessageModelPatterns on ChatMessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'sender_id')  String? senderId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'reply_to_message_id')  String? replyToMessageId, @UtcDateTimeConverter()@JsonKey(name: 'edited_at')  DateTime? editedAt, @UtcDateTimeConverter()@JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'deleted_by')  String? deletedBy, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'message_poll_payload')  PollPayloadModel? pollPayload, @JsonKey(name: 'message_event_payload')  EventPayloadModel? eventPayload, @JsonKey(name: 'message_attachments')  List<MessageAttachmentModel> attachments, @JsonKey(includeFromJson: false, includeToJson: false)  MessageStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.pollPayload,_that.eventPayload,_that.attachments,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'sender_id')  String? senderId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'reply_to_message_id')  String? replyToMessageId, @UtcDateTimeConverter()@JsonKey(name: 'edited_at')  DateTime? editedAt, @UtcDateTimeConverter()@JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'deleted_by')  String? deletedBy, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'message_poll_payload')  PollPayloadModel? pollPayload, @JsonKey(name: 'message_event_payload')  EventPayloadModel? eventPayload, @JsonKey(name: 'message_attachments')  List<MessageAttachmentModel> attachments, @JsonKey(includeFromJson: false, includeToJson: false)  MessageStatus status)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel():
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.pollPayload,_that.eventPayload,_that.attachments,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'sender_id')  String? senderId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'body')  String? body, @JsonKey(name: 'reply_to_message_id')  String? replyToMessageId, @UtcDateTimeConverter()@JsonKey(name: 'edited_at')  DateTime? editedAt, @UtcDateTimeConverter()@JsonKey(name: 'deleted_at')  DateTime? deletedAt, @JsonKey(name: 'deleted_by')  String? deletedBy, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'message_poll_payload')  PollPayloadModel? pollPayload, @JsonKey(name: 'message_event_payload')  EventPayloadModel? eventPayload, @JsonKey(name: 'message_attachments')  List<MessageAttachmentModel> attachments, @JsonKey(includeFromJson: false, includeToJson: false)  MessageStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageModel() when $default != null:
return $default(_that.id,_that.conversationId,_that.senderId,_that.kind,_that.body,_that.replyToMessageId,_that.editedAt,_that.deletedAt,_that.deletedBy,_that.createdAt,_that.updatedAt,_that.pollPayload,_that.eventPayload,_that.attachments,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageModel extends ChatMessageModel {
  const _ChatMessageModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'conversation_id') required this.conversationId, @JsonKey(name: 'sender_id') this.senderId, @JsonKey(name: 'kind') required this.kind, @JsonKey(name: 'body') this.body, @JsonKey(name: 'reply_to_message_id') this.replyToMessageId, @UtcDateTimeConverter()@JsonKey(name: 'edited_at') this.editedAt, @UtcDateTimeConverter()@JsonKey(name: 'deleted_at') this.deletedAt, @JsonKey(name: 'deleted_by') this.deletedBy, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'message_poll_payload') this.pollPayload, @JsonKey(name: 'message_event_payload') this.eventPayload, @JsonKey(name: 'message_attachments') final  List<MessageAttachmentModel> attachments = const [], @JsonKey(includeFromJson: false, includeToJson: false) this.status = MessageStatus.sent}): _attachments = attachments,super._();
  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) => _$ChatMessageModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'conversation_id') final  String conversationId;
@override@JsonKey(name: 'sender_id') final  String? senderId;
@override@JsonKey(name: 'kind') final  String kind;
@override@JsonKey(name: 'body') final  String? body;
@override@JsonKey(name: 'reply_to_message_id') final  String? replyToMessageId;
@override@UtcDateTimeConverter()@JsonKey(name: 'edited_at') final  DateTime? editedAt;
@override@UtcDateTimeConverter()@JsonKey(name: 'deleted_at') final  DateTime? deletedAt;
@override@JsonKey(name: 'deleted_by') final  String? deletedBy;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@UtcDateTimeConverter()@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'message_poll_payload') final  PollPayloadModel? pollPayload;
@override@JsonKey(name: 'message_event_payload') final  EventPayloadModel? eventPayload;
 final  List<MessageAttachmentModel> _attachments;
@override@JsonKey(name: 'message_attachments') List<MessageAttachmentModel> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

@override@JsonKey(includeFromJson: false, includeToJson: false) final  MessageStatus status;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageModelCopyWith<_ChatMessageModel> get copyWith => __$ChatMessageModelCopyWithImpl<_ChatMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.body, body) || other.body == body)&&(identical(other.replyToMessageId, replyToMessageId) || other.replyToMessageId == replyToMessageId)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.deletedBy, deletedBy) || other.deletedBy == deletedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pollPayload, pollPayload) || other.pollPayload == pollPayload)&&(identical(other.eventPayload, eventPayload) || other.eventPayload == eventPayload)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversationId,senderId,kind,body,replyToMessageId,editedAt,deletedAt,deletedBy,createdAt,updatedAt,pollPayload,eventPayload,const DeepCollectionEquality().hash(_attachments),status);

@override
String toString() {
  return 'ChatMessageModel(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, pollPayload: $pollPayload, eventPayload: $eventPayload, attachments: $attachments, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageModelCopyWith<$Res> implements $ChatMessageModelCopyWith<$Res> {
  factory _$ChatMessageModelCopyWith(_ChatMessageModel value, $Res Function(_ChatMessageModel) _then) = __$ChatMessageModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'sender_id') String? senderId,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'body') String? body,@JsonKey(name: 'reply_to_message_id') String? replyToMessageId,@UtcDateTimeConverter()@JsonKey(name: 'edited_at') DateTime? editedAt,@UtcDateTimeConverter()@JsonKey(name: 'deleted_at') DateTime? deletedAt,@JsonKey(name: 'deleted_by') String? deletedBy,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'message_poll_payload') PollPayloadModel? pollPayload,@JsonKey(name: 'message_event_payload') EventPayloadModel? eventPayload,@JsonKey(name: 'message_attachments') List<MessageAttachmentModel> attachments,@JsonKey(includeFromJson: false, includeToJson: false) MessageStatus status
});


@override $PollPayloadModelCopyWith<$Res>? get pollPayload;@override $EventPayloadModelCopyWith<$Res>? get eventPayload;

}
/// @nodoc
class __$ChatMessageModelCopyWithImpl<$Res>
    implements _$ChatMessageModelCopyWith<$Res> {
  __$ChatMessageModelCopyWithImpl(this._self, this._then);

  final _ChatMessageModel _self;
  final $Res Function(_ChatMessageModel) _then;

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? conversationId = null,Object? senderId = freezed,Object? kind = null,Object? body = freezed,Object? replyToMessageId = freezed,Object? editedAt = freezed,Object? deletedAt = freezed,Object? deletedBy = freezed,Object? createdAt = null,Object? updatedAt = null,Object? pollPayload = freezed,Object? eventPayload = freezed,Object? attachments = null,Object? status = null,}) {
  return _then(_ChatMessageModel(
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
as DateTime,pollPayload: freezed == pollPayload ? _self.pollPayload : pollPayload // ignore: cast_nullable_to_non_nullable
as PollPayloadModel?,eventPayload: freezed == eventPayload ? _self.eventPayload : eventPayload // ignore: cast_nullable_to_non_nullable
as EventPayloadModel?,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<MessageAttachmentModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MessageStatus,
  ));
}

/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PollPayloadModelCopyWith<$Res>? get pollPayload {
    if (_self.pollPayload == null) {
    return null;
  }

  return $PollPayloadModelCopyWith<$Res>(_self.pollPayload!, (value) {
    return _then(_self.copyWith(pollPayload: value));
  });
}/// Create a copy of ChatMessageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventPayloadModelCopyWith<$Res>? get eventPayload {
    if (_self.eventPayload == null) {
    return null;
  }

  return $EventPayloadModelCopyWith<$Res>(_self.eventPayload!, (value) {
    return _then(_self.copyWith(eventPayload: value));
  });
}
}

// dart format on
