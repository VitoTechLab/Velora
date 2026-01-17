import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';

part 'conversation_list_model.freezed.dart';
part 'conversation_list_model.g.dart';

/// Model for get_conversation_list_optimized RPC result
@freezed
abstract class ConversationListModel with _$ConversationListModel {
  const ConversationListModel._();

  const factory ConversationListModel({
    @JsonKey(name: 'conversation_id') required String conversationId,

    /// Other participant info (for direct conversations)
    @JsonKey(name: 'other_user_id') String? otherUserId,
    @JsonKey(name: 'other_user_username') String? otherUserUsername,
    @JsonKey(name: 'other_user_full_name') String? otherUserFullName,
    @JsonKey(name: 'other_user_avatar_url') String? otherUserAvatarUrl,

    /// Last message preview info
    @JsonKey(name: 'last_message_body') String? lastMessageBody,
    @UtcDateTimeConverter()
    @JsonKey(name: 'last_message_at')
    DateTime? lastMessageAt,
    @JsonKey(name: 'last_message_sender_id') String? lastMessageSenderId,

    /// Unread count for the current user
    @JsonKey(name: 'unread_count') @Default(0) int unreadCount,
  }) = _ConversationListModel;

  factory ConversationListModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationListModelFromJson(json);

  ConversationListEntity toEntity() => ConversationListEntity(
        conversationId: conversationId,
        otherUserId: otherUserId,
        otherUserUsername: otherUserUsername,
        otherUserFullName: otherUserFullName,
        otherUserAvatarUrl: otherUserAvatarUrl,
        lastMessageBody: lastMessageBody,
        lastMessageAt: lastMessageAt,
        lastMessageSenderId: lastMessageSenderId,
        unreadCount: unreadCount,
      );
}
