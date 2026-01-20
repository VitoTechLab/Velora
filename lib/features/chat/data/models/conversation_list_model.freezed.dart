// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationListModel _$ConversationListModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationListModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationListModel {
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;

  /// Other participant info (for direct conversations)
  @JsonKey(name: 'other_user_id')
  String? get otherUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_user_username')
  String? get otherUserUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_user_full_name')
  String? get otherUserFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_user_avatar_url')
  String? get otherUserAvatarUrl => throw _privateConstructorUsedError;

  /// Last message preview info
  @JsonKey(name: 'last_message_body')
  String? get lastMessageBody => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_sender_id')
  String? get lastMessageSenderId => throw _privateConstructorUsedError;

  /// Unread count for the current user
  @JsonKey(name: 'unread_count')
  int get unreadCount => throw _privateConstructorUsedError;

  /// Serializes this ConversationListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationListModelCopyWith<ConversationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListModelCopyWith<$Res> {
  factory $ConversationListModelCopyWith(ConversationListModel value,
          $Res Function(ConversationListModel) then) =
      _$ConversationListModelCopyWithImpl<$Res, ConversationListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'other_user_id') String? otherUserId,
      @JsonKey(name: 'other_user_username') String? otherUserUsername,
      @JsonKey(name: 'other_user_full_name') String? otherUserFullName,
      @JsonKey(name: 'other_user_avatar_url') String? otherUserAvatarUrl,
      @JsonKey(name: 'last_message_body') String? lastMessageBody,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_sender_id') String? lastMessageSenderId,
      @JsonKey(name: 'unread_count') int unreadCount});
}

/// @nodoc
class _$ConversationListModelCopyWithImpl<$Res,
        $Val extends ConversationListModel>
    implements $ConversationListModelCopyWith<$Res> {
  _$ConversationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListModel
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
abstract class _$$ConversationListModelImplCopyWith<$Res>
    implements $ConversationListModelCopyWith<$Res> {
  factory _$$ConversationListModelImplCopyWith(
          _$ConversationListModelImpl value,
          $Res Function(_$ConversationListModelImpl) then) =
      __$$ConversationListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'other_user_id') String? otherUserId,
      @JsonKey(name: 'other_user_username') String? otherUserUsername,
      @JsonKey(name: 'other_user_full_name') String? otherUserFullName,
      @JsonKey(name: 'other_user_avatar_url') String? otherUserAvatarUrl,
      @JsonKey(name: 'last_message_body') String? lastMessageBody,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_sender_id') String? lastMessageSenderId,
      @JsonKey(name: 'unread_count') int unreadCount});
}

/// @nodoc
class __$$ConversationListModelImplCopyWithImpl<$Res>
    extends _$ConversationListModelCopyWithImpl<$Res,
        _$ConversationListModelImpl>
    implements _$$ConversationListModelImplCopyWith<$Res> {
  __$$ConversationListModelImplCopyWithImpl(_$ConversationListModelImpl _value,
      $Res Function(_$ConversationListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListModel
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
    return _then(_$ConversationListModelImpl(
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
@JsonSerializable()
class _$ConversationListModelImpl extends _ConversationListModel {
  const _$ConversationListModelImpl(
      {@JsonKey(name: 'conversation_id') required this.conversationId,
      @JsonKey(name: 'other_user_id') this.otherUserId,
      @JsonKey(name: 'other_user_username') this.otherUserUsername,
      @JsonKey(name: 'other_user_full_name') this.otherUserFullName,
      @JsonKey(name: 'other_user_avatar_url') this.otherUserAvatarUrl,
      @JsonKey(name: 'last_message_body') this.lastMessageBody,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      this.lastMessageAt,
      @JsonKey(name: 'last_message_sender_id') this.lastMessageSenderId,
      @JsonKey(name: 'unread_count') this.unreadCount = 0})
      : super._();

  factory _$ConversationListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationListModelImplFromJson(json);

  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;

  /// Other participant info (for direct conversations)
  @override
  @JsonKey(name: 'other_user_id')
  final String? otherUserId;
  @override
  @JsonKey(name: 'other_user_username')
  final String? otherUserUsername;
  @override
  @JsonKey(name: 'other_user_full_name')
  final String? otherUserFullName;
  @override
  @JsonKey(name: 'other_user_avatar_url')
  final String? otherUserAvatarUrl;

  /// Last message preview info
  @override
  @JsonKey(name: 'last_message_body')
  final String? lastMessageBody;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  final DateTime? lastMessageAt;
  @override
  @JsonKey(name: 'last_message_sender_id')
  final String? lastMessageSenderId;

  /// Unread count for the current user
  @override
  @JsonKey(name: 'unread_count')
  final int unreadCount;

  @override
  String toString() {
    return 'ConversationListModel(conversationId: $conversationId, otherUserId: $otherUserId, otherUserUsername: $otherUserUsername, otherUserFullName: $otherUserFullName, otherUserAvatarUrl: $otherUserAvatarUrl, lastMessageBody: $lastMessageBody, lastMessageAt: $lastMessageAt, lastMessageSenderId: $lastMessageSenderId, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationListModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationListModelImplCopyWith<_$ConversationListModelImpl>
      get copyWith => __$$ConversationListModelImplCopyWithImpl<
          _$ConversationListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationListModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationListModel extends ConversationListModel {
  const factory _ConversationListModel(
      {@JsonKey(name: 'conversation_id') required final String conversationId,
      @JsonKey(name: 'other_user_id') final String? otherUserId,
      @JsonKey(name: 'other_user_username') final String? otherUserUsername,
      @JsonKey(name: 'other_user_full_name') final String? otherUserFullName,
      @JsonKey(name: 'other_user_avatar_url') final String? otherUserAvatarUrl,
      @JsonKey(name: 'last_message_body') final String? lastMessageBody,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      final DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_sender_id')
      final String? lastMessageSenderId,
      @JsonKey(name: 'unread_count')
      final int unreadCount}) = _$ConversationListModelImpl;
  const _ConversationListModel._() : super._();

  factory _ConversationListModel.fromJson(Map<String, dynamic> json) =
      _$ConversationListModelImpl.fromJson;

  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;

  /// Other participant info (for direct conversations)
  @override
  @JsonKey(name: 'other_user_id')
  String? get otherUserId;
  @override
  @JsonKey(name: 'other_user_username')
  String? get otherUserUsername;
  @override
  @JsonKey(name: 'other_user_full_name')
  String? get otherUserFullName;
  @override
  @JsonKey(name: 'other_user_avatar_url')
  String? get otherUserAvatarUrl;

  /// Last message preview info
  @override
  @JsonKey(name: 'last_message_body')
  String? get lastMessageBody;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  DateTime? get lastMessageAt;
  @override
  @JsonKey(name: 'last_message_sender_id')
  String? get lastMessageSenderId;

  /// Unread count for the current user
  @override
  @JsonKey(name: 'unread_count')
  int get unreadCount;

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationListModelImplCopyWith<_$ConversationListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
