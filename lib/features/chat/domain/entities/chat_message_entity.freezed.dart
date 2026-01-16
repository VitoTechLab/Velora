// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessageEntity {
  String get id => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get replyToMessageId => throw _privateConstructorUsedError;
  DateTime? get editedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  PollPayloadEntity? get poll => throw _privateConstructorUsedError;
  EventPayloadEntity? get event => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEntityCopyWith<$Res> {
  factory $ChatMessageEntityCopyWith(
          ChatMessageEntity value, $Res Function(ChatMessageEntity) then) =
      _$ChatMessageEntityCopyWithImpl<$Res, ChatMessageEntity>;
  @useResult
  $Res call(
      {String id,
      String conversationId,
      String? senderId,
      String kind,
      String? body,
      String? replyToMessageId,
      DateTime? editedAt,
      DateTime? deletedAt,
      String? deletedBy,
      DateTime createdAt,
      DateTime updatedAt,
      PollPayloadEntity? poll,
      EventPayloadEntity? event});

  $PollPayloadEntityCopyWith<$Res>? get poll;
  $EventPayloadEntityCopyWith<$Res>? get event;
}

/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res, $Val extends ChatMessageEntity>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEntity
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
    Object? poll = freezed,
    Object? event = freezed,
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
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as PollPayloadEntity?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventPayloadEntity?,
    ) as $Val);
  }

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollPayloadEntityCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $PollPayloadEntityCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value) as $Val);
    });
  }

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventPayloadEntityCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventPayloadEntityCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageEntityImplCopyWith<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  factory _$$ChatMessageEntityImplCopyWith(_$ChatMessageEntityImpl value,
          $Res Function(_$ChatMessageEntityImpl) then) =
      __$$ChatMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String conversationId,
      String? senderId,
      String kind,
      String? body,
      String? replyToMessageId,
      DateTime? editedAt,
      DateTime? deletedAt,
      String? deletedBy,
      DateTime createdAt,
      DateTime updatedAt,
      PollPayloadEntity? poll,
      EventPayloadEntity? event});

  @override
  $PollPayloadEntityCopyWith<$Res>? get poll;
  @override
  $EventPayloadEntityCopyWith<$Res>? get event;
}

/// @nodoc
class __$$ChatMessageEntityImplCopyWithImpl<$Res>
    extends _$ChatMessageEntityCopyWithImpl<$Res, _$ChatMessageEntityImpl>
    implements _$$ChatMessageEntityImplCopyWith<$Res> {
  __$$ChatMessageEntityImplCopyWithImpl(_$ChatMessageEntityImpl _value,
      $Res Function(_$ChatMessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEntity
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
    Object? poll = freezed,
    Object? event = freezed,
  }) {
    return _then(_$ChatMessageEntityImpl(
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
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as PollPayloadEntity?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventPayloadEntity?,
    ));
  }
}

/// @nodoc

class _$ChatMessageEntityImpl implements _ChatMessageEntity {
  const _$ChatMessageEntityImpl(
      {required this.id,
      required this.conversationId,
      required this.senderId,
      required this.kind,
      this.body,
      this.replyToMessageId,
      this.editedAt,
      this.deletedAt,
      this.deletedBy,
      required this.createdAt,
      required this.updatedAt,
      this.poll,
      this.event});

  @override
  final String id;
  @override
  final String conversationId;
  @override
  final String? senderId;
  @override
  final String kind;
  @override
  final String? body;
  @override
  final String? replyToMessageId;
  @override
  final DateTime? editedAt;
  @override
  final DateTime? deletedAt;
  @override
  final String? deletedBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final PollPayloadEntity? poll;
  @override
  final EventPayloadEntity? event;

  @override
  String toString() {
    return 'ChatMessageEntity(id: $id, conversationId: $conversationId, senderId: $senderId, kind: $kind, body: $body, replyToMessageId: $replyToMessageId, editedAt: $editedAt, deletedAt: $deletedAt, deletedBy: $deletedBy, createdAt: $createdAt, updatedAt: $updatedAt, poll: $poll, event: $event)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageEntityImpl &&
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
            (identical(other.poll, poll) || other.poll == poll) &&
            (identical(other.event, event) || other.event == event));
  }

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
      poll,
      event);

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      __$$ChatMessageEntityImplCopyWithImpl<_$ChatMessageEntityImpl>(
          this, _$identity);
}

abstract class _ChatMessageEntity implements ChatMessageEntity {
  const factory _ChatMessageEntity(
      {required final String id,
      required final String conversationId,
      required final String? senderId,
      required final String kind,
      final String? body,
      final String? replyToMessageId,
      final DateTime? editedAt,
      final DateTime? deletedAt,
      final String? deletedBy,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final PollPayloadEntity? poll,
      final EventPayloadEntity? event}) = _$ChatMessageEntityImpl;

  @override
  String get id;
  @override
  String get conversationId;
  @override
  String? get senderId;
  @override
  String get kind;
  @override
  String? get body;
  @override
  String? get replyToMessageId;
  @override
  DateTime? get editedAt;
  @override
  DateTime? get deletedAt;
  @override
  String? get deletedBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  PollPayloadEntity? get poll;
  @override
  EventPayloadEntity? get event;

  /// Create a copy of ChatMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
