// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  String? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_to_message_id')
  String? get replyToMessageId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'edited_at')
  DateTime? get editedAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_by')
  String? get deletedBy => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_poll_payload')
  PollPayloadModel? get pollPayload => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_event_payload')
  EventPayloadModel? get eventPayload => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_attachments')
  List<MessageAttachmentModel> get attachments =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'sender_id') String? senderId,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'reply_to_message_id') String? replyToMessageId,
      @UtcDateTimeConverter() @JsonKey(name: 'edited_at') DateTime? editedAt,
      @UtcDateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'deleted_by') String? deletedBy,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'message_poll_payload') PollPayloadModel? pollPayload,
      @JsonKey(name: 'message_event_payload') EventPayloadModel? eventPayload,
      @JsonKey(name: 'message_attachments')
      List<MessageAttachmentModel> attachments});

  $PollPayloadModelCopyWith<$Res>? get pollPayload;
  $EventPayloadModelCopyWith<$Res>? get eventPayload;
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = null,
    Object? senderId = freezed,
    Object? kind = null,
    Object? body = freezed,
    Object? replyToMessageId = freezed,
    Object? editedAt = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pollPayload = freezed,
    Object? eventPayload = freezed,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pollPayload: freezed == pollPayload
          ? _value.pollPayload
          : pollPayload // ignore: cast_nullable_to_non_nullable
              as PollPayloadModel?,
      eventPayload: freezed == eventPayload
          ? _value.eventPayload
          : eventPayload // ignore: cast_nullable_to_non_nullable
              as EventPayloadModel?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<MessageAttachmentModel>,
    ) as $Val);
  }

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollPayloadModelCopyWith<$Res>? get pollPayload {
    if (_value.pollPayload == null) {
      return null;
    }

    return $PollPayloadModelCopyWith<$Res>(_value.pollPayload!, (value) {
      return _then(_value.copyWith(pollPayload: value) as $Val);
    });
  }

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventPayloadModelCopyWith<$Res>? get eventPayload {
    if (_value.eventPayload == null) {
      return null;
    }

    return $EventPayloadModelCopyWith<$Res>(_value.eventPayload!, (value) {
      return _then(_value.copyWith(eventPayload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'sender_id') String? senderId,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'reply_to_message_id') String? replyToMessageId,
      @UtcDateTimeConverter() @JsonKey(name: 'edited_at') DateTime? editedAt,
      @UtcDateTimeConverter() @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'deleted_by') String? deletedBy,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'message_poll_payload') PollPayloadModel? pollPayload,
      @JsonKey(name: 'message_event_payload') EventPayloadModel? eventPayload,
      @JsonKey(name: 'message_attachments')
      List<MessageAttachmentModel> attachments});

  @override
  $PollPayloadModelCopyWith<$Res>? get pollPayload;
  @override
  $EventPayloadModelCopyWith<$Res>? get eventPayload;
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(_$ChatMessageModelImpl _value,
      $Res Function(_$ChatMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = null,
    Object? senderId = freezed,
    Object? kind = null,
    Object? body = freezed,
    Object? replyToMessageId = freezed,
    Object? editedAt = freezed,
    Object? deletedAt = freezed,
    Object? deletedBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? pollPayload = freezed,
    Object? eventPayload = freezed,
    Object? attachments = null,
  }) {
    return _then(_$ChatMessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      replyToMessageId: freezed == replyToMessageId
          ? _value.replyToMessageId
          : replyToMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      editedAt: freezed == editedAt
          ? _value.editedAt
          : editedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pollPayload: freezed == pollPayload
          ? _value.pollPayload
          : pollPayload // ignore: cast_nullable_to_non_nullable
              as PollPayloadModel?,
      eventPayload: freezed == eventPayload
          ? _value.eventPayload
          : eventPayload // ignore: cast_nullable_to_non_nullable
              as EventPayloadModel?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<MessageAttachmentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl extends _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'conversation_id') required this.conversationId,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'reply_to_message_id') this.replyToMessageId,
      @UtcDateTimeConverter() @JsonKey(name: 'edited_at') this.editedAt,
      @UtcDateTimeConverter() @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'deleted_by') this.deletedBy,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @UtcDateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      @JsonKey(name: 'message_poll_payload') this.pollPayload,
      @JsonKey(name: 'message_event_payload') this.eventPayload,
      @JsonKey(name: 'message_attachments')
      final List<MessageAttachmentModel> attachments = const []})
      : _attachments = attachments,
        super._();

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @override
  @JsonKey(name: 'sender_id')
  final String? senderId;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'reply_to_message_id')
  final String? replyToMessageId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'edited_at')
  final DateTime? editedAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'deleted_by')
  final String? deletedBy;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'message_poll_payload')
  final PollPayloadModel? pollPayload;
  @override
  @JsonKey(name: 'message_event_payload')
  final EventPayloadModel? eventPayload;
  final List<MessageAttachmentModel> _attachments;
  @override
  @JsonKey(name: 'message_attachments')
  List<MessageAttachmentModel> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, pollPayload: $pollPayload, eventPayload: $eventPayload, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.replyToMessageId, replyToMessageId) ||
                other.replyToMessageId == replyToMessageId) &&
            (identical(other.editedAt, editedAt) ||
                other.editedAt == editedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pollPayload, pollPayload) ||
                other.pollPayload == pollPayload) &&
            (identical(other.eventPayload, eventPayload) ||
                other.eventPayload == eventPayload) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      conversationId,
      senderId,
      kind,
      body,
      replyToMessageId,
      editedAt,
      deletedAt,
      deletedBy,
      createdAt,
      updatedAt,
      pollPayload,
      eventPayload,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel extends ChatMessageModel {
  const factory _ChatMessageModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'conversation_id') required final String conversationId,
      @JsonKey(name: 'sender_id') final String? senderId,
      @JsonKey(name: 'kind') required final String kind,
      @JsonKey(name: 'body') final String? body,
      @JsonKey(name: 'reply_to_message_id') final String? replyToMessageId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'edited_at')
      final DateTime? editedAt,
      @UtcDateTimeConverter()
      @JsonKey(name: 'deleted_at')
      final DateTime? deletedAt,
      @JsonKey(name: 'deleted_by') final String? deletedBy,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @UtcDateTimeConverter()
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt,
      @JsonKey(name: 'message_poll_payload')
      final PollPayloadModel? pollPayload,
      @JsonKey(name: 'message_event_payload')
      final EventPayloadModel? eventPayload,
      @JsonKey(name: 'message_attachments')
      final List<MessageAttachmentModel> attachments}) = _$ChatMessageModelImpl;
  const _ChatMessageModel._() : super._();

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;
  @override
  @JsonKey(name: 'sender_id')
  String? get senderId;
  @override
  @JsonKey(name: 'kind')
  String get kind;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'reply_to_message_id')
  String? get replyToMessageId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'edited_at')
  DateTime? get editedAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'deleted_by')
  String? get deletedBy;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'message_poll_payload')
  PollPayloadModel? get pollPayload;
  @override
  @JsonKey(name: 'message_event_payload')
  EventPayloadModel? get eventPayload;
  @override
  @JsonKey(name: 'message_attachments')
  List<MessageAttachmentModel> get attachments;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
