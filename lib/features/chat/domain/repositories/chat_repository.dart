import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/entities/user_presence_entity.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';

/// Chat repository contract
abstract class ChatRepository {
  // =========================================================
  // MESSAGES
  // =========================================================

  /// Get messages in a conversation using cursor-based pagination
  Future<Either<Failure, ChatMessagePaginationResult>> getMessages({
    required String conversationId,
    required int limit,
    MessageCursorEntity? cursor,
  });

  /// Send a plain text message
  Future<Either<Failure, ChatMessageEntity>> sendTextMessage({
    required String conversationId,
    required String body,
    String? replyToMessageId,
  });

  /// Edit an existing message
  Future<Either<Failure, ChatMessageEntity>> editMessage({
    required String messageId,
    required String newBody,
  });

  /// Delete a message (soft delete)
  Future<Either<Failure, void>> deleteMessage({required String messageId});

  /// Watch realtime new messages in a conversation
  Stream<Either<Failure, ChatMessageEntity>> watchNewMessages({
    required String conversationId,
  });

  /// Stop any active message watch channel
  Future<void> stopWatchMessages();

  // =========================================================
  // CONVERSATIONS
  // =========================================================

  /// Get conversation list
  Future<Either<Failure, List<ConversationListEntity>>> getConversationList();

  /// Create or get direct conversation with another user
  Future<Either<Failure, String>> createDirectConversation({
    required String otherUserId,
  });

  /// Mark a conversation as read up to an optional message
  Future<Either<Failure, void>> markConversationRead({
    required String conversationId,
    String? uptoMessageId,
  });

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================

  /// Get read receipts for a message
  Future<Either<Failure, List<MessageReadEntity>>> getMessageReads({
    required String messageId,
  });

  /// Mark a message as read
  Future<Either<Failure, void>> markMessageRead({required String messageId});

  /// Watch realtime read receipts in a conversation
  Stream<Either<Failure, MessageReadEntity>> watchMessageReads({
    required String conversationId,
  });

  // =========================================================
  // TYPING INDICATOR
  // =========================================================

  /// Send typing indicator
  Future<Either<Failure, void>> sendTypingIndicator({
    required String conversationId,
    required bool isTyping,
  });

  /// Watch typing indicators in a conversation
  Stream<String> watchTypingIndicators({required String conversationId});

  /// Stop typing indicator watch
  Future<void> stopTypingWatch();

  // =========================================================
  // USER PRESENCE
  // =========================================================

  /// Watch realtime user presence
  Stream<Either<Failure, List<UserPresenceEntity>>> watchUserPresence({
    required String myUserId,
  });

  /// Send heartbeat to indicate online status
  Future<Either<Failure, void>> sendHeartbeat();

  /// Fetch last seen status for users
  Future<Either<Failure, List<UserPresenceEntity>>> fetchLastSeenStatus({
    required List<String> userIds,
  });

  // =========================================================
  // SEARCH
  // =========================================================

  /// Search users that current user follows by username
  Future<Either<Failure, List<UserSearchEntity>>> searchFollowedUsers({
    required String query,
    int limit = 20,
  });
}
