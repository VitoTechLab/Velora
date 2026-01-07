import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';

part 'conversation_list_model.freezed.dart';
part 'conversation_list_model.g.dart';

/// Model for v_conversation_list view
@freezed
abstract class ConversationListModel with _$ConversationListModel {
  const ConversationListModel._();

  const factory ConversationListModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'type') required String type, // 'direct' or 'group'
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @UtcDateTimeConverter()
    @JsonKey(name: 'last_message_at')
    DateTime? lastMessageAt,
    @JsonKey(name: 'last_message_id') String? lastMessageId,
    @JsonKey(name: 'last_message_kind') String? lastMessageKind,
    @JsonKey(name: 'last_message_preview') String? lastMessagePreview,
    @JsonKey(name: 'unread_count') @Default(0) int unreadCount,
    @UtcDateTimeConverter() @JsonKey(name: 'last_read_at') DateTime? lastReadAt,
  }) = _ConversationListModel;

  factory ConversationListModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationListModelFromJson(json);

  ConversationListEntity toEntity() => ConversationListEntity(
    userId: userId,
    conversationId: conversationId,
    type: type,
    title: title,
    photoUrl: photoUrl,
    lastMessageAt: lastMessageAt,
    lastMessageId: lastMessageId,
    lastMessageKind: lastMessageKind,
    lastMessagePreview: lastMessagePreview,
    unreadCount: unreadCount,
    lastReadAt: lastReadAt,
  );
}
