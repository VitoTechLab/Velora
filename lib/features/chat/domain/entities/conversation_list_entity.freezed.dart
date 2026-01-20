// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationListEntity {
  String get conversationId => throw _privateConstructorUsedError;

  /// Other participant info (for direct conversations)
  String? get otherUserId => throw _privateConstructorUsedError;
  String? get otherUserUsername => throw _privateConstructorUsedError;
  String? get otherUserFullName => throw _privateConstructorUsedError;
  String? get otherUserAvatarUrl => throw _privateConstructorUsedError;

  /// Last message preview info
  String? get lastMessageBody => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  String? get lastMessageSenderId => throw _privateConstructorUsedError;

  /// Unread count for the current user
  int get unreadCount => throw _privateConstructorUsedError;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationListEntityCopyWith<ConversationListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListEntityCopyWith<$Res> {
  factory $ConversationListEntityCopyWith(ConversationListEntity value,
          $Res Function(ConversationListEntity) then) =
      _$ConversationListEntityCopyWithImpl<$Res, ConversationListEntity>;
  @useResult
  $Res call(
      {String conversationId,
      String? otherUserId,
      String? otherUserUsername,
      String? otherUserFullName,
      String? otherUserAvatarUrl,
      String? lastMessageBody,
      DateTime? lastMessageAt,
      String? lastMessageSenderId,
      int unreadCount});
}

/// @nodoc
class _$ConversationListEntityCopyWithImpl<$Res,
        $Val extends ConversationListEntity>
    implements $ConversationListEntityCopyWith<$Res> {
  _$ConversationListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? otherUserId = freezed,
    Object? otherUserUsername = freezed,
    Object? otherUserFullName = freezed,
    Object? otherUserAvatarUrl = freezed,
    Object? lastMessageBody = freezed,
    Object? lastMessageAt = freezed,
    Object? lastMessageSenderId = freezed,
    Object? unreadCount = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserId: freezed == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserUsername: freezed == otherUserUsername
          ? _value.otherUserUsername
          : otherUserUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserFullName: freezed == otherUserFullName
          ? _value.otherUserFullName
          : otherUserFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserAvatarUrl: freezed == otherUserAvatarUrl
          ? _value.otherUserAvatarUrl
          : otherUserAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageBody: freezed == lastMessageBody
          ? _value.lastMessageBody
          : lastMessageBody // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageSenderId: freezed == lastMessageSenderId
          ? _value.lastMessageSenderId
          : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationListEntityImplCopyWith<$Res>
    implements $ConversationListEntityCopyWith<$Res> {
  factory _$$ConversationListEntityImplCopyWith(
          _$ConversationListEntityImpl value,
          $Res Function(_$ConversationListEntityImpl) then) =
      __$$ConversationListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String conversationId,
      String? otherUserId,
      String? otherUserUsername,
      String? otherUserFullName,
      String? otherUserAvatarUrl,
      String? lastMessageBody,
      DateTime? lastMessageAt,
      String? lastMessageSenderId,
      int unreadCount});
}

/// @nodoc
class __$$ConversationListEntityImplCopyWithImpl<$Res>
    extends _$ConversationListEntityCopyWithImpl<$Res,
        _$ConversationListEntityImpl>
    implements _$$ConversationListEntityImplCopyWith<$Res> {
  __$$ConversationListEntityImplCopyWithImpl(
      _$ConversationListEntityImpl _value,
      $Res Function(_$ConversationListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? otherUserId = freezed,
    Object? otherUserUsername = freezed,
    Object? otherUserFullName = freezed,
    Object? otherUserAvatarUrl = freezed,
    Object? lastMessageBody = freezed,
    Object? lastMessageAt = freezed,
    Object? lastMessageSenderId = freezed,
    Object? unreadCount = null,
  }) {
    return _then(_$ConversationListEntityImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      otherUserId: freezed == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserUsername: freezed == otherUserUsername
          ? _value.otherUserUsername
          : otherUserUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserFullName: freezed == otherUserFullName
          ? _value.otherUserFullName
          : otherUserFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUserAvatarUrl: freezed == otherUserAvatarUrl
          ? _value.otherUserAvatarUrl
          : otherUserAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageBody: freezed == lastMessageBody
          ? _value.lastMessageBody
          : lastMessageBody // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageSenderId: freezed == lastMessageSenderId
          ? _value.lastMessageSenderId
          : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ConversationListEntityImpl implements _ConversationListEntity {
  const _$ConversationListEntityImpl(
      {required this.conversationId,
      this.otherUserId,
      this.otherUserUsername,
      this.otherUserFullName,
      this.otherUserAvatarUrl,
      this.lastMessageBody,
      this.lastMessageAt,
      this.lastMessageSenderId,
      this.unreadCount = 0});

  @override
  final String conversationId;

  /// Other participant info (for direct conversations)
  @override
  final String? otherUserId;
  @override
  final String? otherUserUsername;
  @override
  final String? otherUserFullName;
  @override
  final String? otherUserAvatarUrl;

  /// Last message preview info
  @override
  final String? lastMessageBody;
  @override
  final DateTime? lastMessageAt;
  @override
  final String? lastMessageSenderId;

  /// Unread count for the current user
  @override
  @JsonKey()
  final int unreadCount;

  @override
  String toString() {
    return 'ConversationListEntity(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationListEntityImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.otherUserId, otherUserId) ||
                other.otherUserId == otherUserId) &&
            (identical(other.otherUserUsername, otherUserUsername) ||
                other.otherUserUsername == otherUserUsername) &&
            (identical(other.otherUserFullName, otherUserFullName) ||
                other.otherUserFullName == otherUserFullName) &&
            (identical(other.otherUserAvatarUrl, otherUserAvatarUrl) ||
                other.otherUserAvatarUrl == otherUserAvatarUrl) &&
            (identical(other.lastMessageBody, lastMessageBody) ||
                other.lastMessageBody == lastMessageBody) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.lastMessageSenderId, lastMessageSenderId) ||
                other.lastMessageSenderId == lastMessageSenderId) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversationId,
      otherUserId,
      otherUserUsername,
      otherUserFullName,
      otherUserAvatarUrl,
      lastMessageBody,
      lastMessageAt,
      lastMessageSenderId,
      unreadCount);

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationListEntityImplCopyWith<_$ConversationListEntityImpl>
      get copyWith => __$$ConversationListEntityImplCopyWithImpl<
          _$ConversationListEntityImpl>(this, _$identity);
}

abstract class _ConversationListEntity implements ConversationListEntity {
  const factory _ConversationListEntity(
      {required final String conversationId,
      final String? otherUserId,
      final String? otherUserUsername,
      final String? otherUserFullName,
      final String? otherUserAvatarUrl,
      final String? lastMessageBody,
      final DateTime? lastMessageAt,
      final String? lastMessageSenderId,
      final int unreadCount}) = _$ConversationListEntityImpl;

  @override
  String get conversationId;

  /// Other participant info (for direct conversations)
  @override
  String? get otherUserId;
  @override
  String? get otherUserUsername;
  @override
  String? get otherUserFullName;
  @override
  String? get otherUserAvatarUrl;

  /// Last message preview info
  @override
  String? get lastMessageBody;
  @override
  DateTime? get lastMessageAt;
  @override
  String? get lastMessageSenderId;

  /// Unread count for the current user
  @override
  int get unreadCount;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationListEntityImplCopyWith<_$ConversationListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
