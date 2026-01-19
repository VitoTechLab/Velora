import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result_entity.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor_entity.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/entities/realtime_message_event_entity.dart';
import 'package:velora/features/chat/domain/entities/user_presence_entity.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';

/// Chat repository contract
abstract class ChatRepository {
  // =========================================================
  // MESSAGES
  // =========================================================

  /// Get messages in a conversation using cursor-based pagination
  Future<Either<Failure, ChatMessagePaginationResultEntity>> getMessages({
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

  /// Send a media message (image, video, document, audio)
  Future<Either<Failure, ChatMessageEntity>> sendMediaMessage({
    required String conversationId,
    required String mediaUrl,
    required String mediaType, // 'image', 'video', 'document', 'audio'
    String? mimeType,
    String? fileName,
    int? fileSize,
    String? caption,
    double? durationSeconds, // For audio/video
  });

  /// Send a poll message with SQL v2 fields
  Future<Either<Failure, ChatMessageEntity>> sendPollMessage({
    required String conversationId,
    required String question,
    required List<String> options,
    required bool multipleChoice,
    int maxUserVotes = 1,
  });

  /// Send an event message with SQL v2 fields
  Future<Either<Failure, ChatMessageEntity>> sendEventMessage({
    required String conversationId,
    required String title,
    String? description,
    String? locationName,
    String? address,
    bool isOnline = false,
    String? meetingUrl,
    String? coverUrl,
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Edit an existing message
  Future<Either<Failure, ChatMessageEntity>> editMessage({
    required String messageId,
    required String newBody,
  });

  /// Delete a message (soft delete)
  Future<Either<Failure, void>> deleteMessage({required String messageId});

  /// Watch realtime new messages in a conversation
  /// Returns a stream of [RealtimeMessageEventEntity] containing message and event type (insert/update)
  Stream<Either<Failure, RealtimeMessageEventEntity>> watchNewMessages({
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

  /// Mark a single message as read
  Future<Either<Failure, void>> markMessageRead({required String messageId});

  /// Batch mark multiple messages as read (more efficient for scrolling)
  /// Returns the count of messages actually marked
  Future<Either<Failure, int>> markMessagesReadBatch({
    required List<String> messageIds,
  });

  /// Watch realtime read receipts in a conversation
  Stream<Either<Failure, MessageReadEntity>> watchMessageReads({
    required String conversationId,
  });

  // =========================================================
  // POLL VOTING
  // =========================================================

  /// Vote on a poll option (single choice polls auto-remove previous vote)
  Future<Either<Failure, void>> votePollOption({
    required String pollMessageId,
    required String optionId,
  });

  /// Remove vote from a poll option (for multiple choice toggle)
  Future<Either<Failure, void>> unvotePollOption({required String optionId});

  // =========================================================
  // EVENT RSVP
  // =========================================================

  /// Respond to an event with RSVP status
  Future<Either<Failure, void>> respondToEvent({
    required String eventMessageId,
    required String status, // 'going', 'interested', 'not_going'
  });

  /// Cancel RSVP response to an event
  Future<Either<Failure, void>> cancelEventRsvp(
      {required String eventMessageId});

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
