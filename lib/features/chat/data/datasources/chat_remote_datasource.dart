import 'package:velora/features/chat/data/models/chat_message_model.dart';
import 'package:velora/features/chat/data/models/conversation_list_model.dart';
import 'package:velora/features/chat/data/models/message_cursor.dart';
import 'package:velora/features/chat/data/models/message_pagination_model.dart';
import 'package:velora/features/chat/data/models/message_read_model.dart';
import 'package:velora/features/chat/data/models/typing_indicator_model.dart';
import 'package:velora/features/chat/data/models/user_presence_model.dart';
import 'package:velora/features/chat/data/models/user_search_model.dart';

abstract class ChatRemoteDataSource {
  // =========================================================
  // MESSAGES
  // =========================================================

  /// Get messages for a conversation with cursor-based pagination
  Future<MessagePaginationModel> getMessages({
    required String conversationId,
    int limit = 50,
    MessageCursor? cursor,
  });

  /// Send a plain-text message
  Future<ChatMessageModel> sendTextMessage({
    required String conversationId,
    required String body,
    String? replyToMessageId,
  });

  /// Edit existing message (update body, set edited_at)
  Future<ChatMessageModel> editMessage({
    required String messageId,
    required String newBody,
  });

  /// Delete message (soft delete: set deleted_at and deleted_by)
  Future<void> deleteMessage({required String messageId});

  /// Watch realtime inserts for messages in a conversation
  Stream<ChatMessageModel> watchNewMessages({required String conversationId});

  /// Stop any active message watch channel
  Future<void> stopWatch();

  // =========================================================
  // CONVERSATIONS
  // =========================================================

  /// Get conversation list from v_conversation_list view
  Future<List<ConversationListModel>> getConversationList();

  /// Create or get direct conversation with another user (uses create_direct_conversation RPC)
  Future<String> createDirectConversation({required String otherUserId});

  /// Mark a conversation as read (uses mark_conversation_read RPC)
  Future<void> markConversationRead({
    required String conversationId,
    String? uptoMessageId,
  });

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================

  /// Get read receipts for a specific message
  Future<List<MessageReadModel>> getMessageReads({required String messageId});

  /// Mark a message as read (insert into message_reads)
  Future<void> markMessageRead({required String messageId});

  /// Watch realtime read receipts for messages in a conversation
  Stream<MessageReadModel> watchMessageReads({required String conversationId});

  // =========================================================
  // TYPING INDICATOR (Broadcast - RAM to RAM)
  // =========================================================

  /// Send typing indicator broadcast
  Future<void> sendTypingIndicator({
    required String conversationId,
    required bool isTyping,
  });

  /// Watch typing indicators in a conversation (broadcast channel)
  Stream<TypingIndicatorModel> watchTypingIndicators({
    required String conversationId,
  });

  /// Stop typing indicator channel
  Future<void> stopTypingWatch();

  // =========================================================
  // USER PRESENCE
  // =========================================================

  /// Fetch last seen from user_presence_view (batch query)
  Future<List<UserPresenceModel>> fetchLastSeenStatus({
    required List<String> userIds,
  });

  /// Watch realtime presence updates via Supabase Realtime
  Stream<List<UserPresenceModel>> watchUserPresence({required String myUserId});

  /// Heartbeat to update online status (calls touch_presence RPC)
  Future<void> touchPresence();

  /// Search users by username (within followed users only)
  Future<List<UserSearchModel>> searchFollowedUsers({
    required String query,
    required int limit,
  });
}
