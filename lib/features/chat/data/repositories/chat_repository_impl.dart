import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/chat_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/data/datasources/chat_remote_datasource.dart';
import 'package:velora/features/chat/data/models/message_cursor.dart';
import 'package:velora/features/chat/domain/entities/chat_message_entity.dart';
import 'package:velora/features/chat/domain/entities/chat_message_pagination_result.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/domain/entities/message_cursor.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/entities/user_presence_entity.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';
import 'package:velora/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({required this.remoteDataSource});

  final ChatRemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, ChatMessagePaginationResult>> getMessages({
    required String conversationId,
    required int limit,
    MessageCursorEntity? cursor,
  }) async {
    try {
      logi('[CHAT REPOSITORY] getMessages - conversation: $conversationId');
      final result = await remoteDataSource.getMessages(
        conversationId: conversationId,
        limit: limit,
        cursor: cursor == null
            ? null
            : MessageCursor(createdAt: cursor.createdAt, id: cursor.id),
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] getMessages', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendTextMessage({
    required String conversationId,
    required String body,
    String? replyToMessageId,
  }) async {
    try {
      logi('[CHAT REPOSITORY] sendTextMessage - conversation: $conversationId');
      final result = await remoteDataSource.sendTextMessage(
        conversationId: conversationId,
        body: body,
        replyToMessageId: replyToMessageId,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] sendTextMessage', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> editMessage({
    required String messageId,
    required String newBody,
  }) async {
    try {
      logi('[CHAT REPOSITORY] editMessage - message: $messageId');
      final result = await remoteDataSource.editMessage(
        messageId: messageId,
        newBody: newBody,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] editMessage', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteMessage({
    required String messageId,
  }) async {
    try {
      logi('[CHAT REPOSITORY] deleteMessage - message: $messageId');
      await remoteDataSource.deleteMessage(messageId: messageId);
      return const Right(null);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] deleteMessage', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, String>> createDirectConversation({
    required String otherUserId,
  }) async {
    try {
      logi('[CHAT REPOSITORY] createDirectConversation - user: $otherUserId');
      final conversationId = await remoteDataSource.createDirectConversation(
        otherUserId: otherUserId,
      );
      return Right(conversationId);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] createDirectConversation', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> markConversationRead({
    required String conversationId,
    String? uptoMessageId,
  }) async {
    try {
      logi(
        '[CHAT REPOSITORY] markConversationRead - conversation: $conversationId',
      );
      await remoteDataSource.markConversationRead(
        conversationId: conversationId,
        uptoMessageId: uptoMessageId,
      );
      return const Right(null);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] markConversationRead', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Stream<Either<Failure, ChatMessageEntity>> watchNewMessages({
    required String conversationId,
  }) async* {
    try {
      await for (final model in remoteDataSource.watchNewMessages(
        conversationId: conversationId,
      )) {
        yield Right(model.toEntity());
      }
    } catch (e) {
      yield Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<void> stopWatchMessages() => remoteDataSource.stopWatch();

  @override
  Stream<Either<Failure, List<UserPresenceEntity>>> watchUserPresence({
    required String myUserId,
  }) async* {
    try {
      await for (final models in remoteDataSource.watchUserPresence(
        myUserId: myUserId,
      )) {
        final entities = models
            .map(
              (e) => UserPresenceEntity(
                userId: e.userId,
                isOnline: e.isOnline ?? false,
                lastSeenAt: e.lastSeenAt,
              ),
            )
            .toList();
        yield Right(entities);
      }
    } catch (e) {
      yield Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> sendHeartbeat() async {
    try {
      await remoteDataSource.touchPresence();
      return const Right(null);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] sendHeartbeat', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<UserPresenceEntity>>> fetchLastSeenStatus({
    required List<String> userIds,
  }) async {
    try {
      final result = await remoteDataSource.fetchLastSeenStatus(
        userIds: userIds,
      );
      final entities = result
          .map(
            (e) => UserPresenceEntity(
              userId: e.userId,
              isOnline: e.isOnline ?? false,
              lastSeenAt: e.lastSeenAt,
            ),
          )
          .toList();
      return Right(entities);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] fetchLastSeenStatus', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  // =========================================================
  // CONVERSATION LIST
  // =========================================================

  @override
  Future<Either<Failure, List<ConversationListEntity>>>
  getConversationList() async {
    try {
      logi('[CHAT REPOSITORY] getConversationList');
      final result = await remoteDataSource.getConversationList();
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] getConversationList', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================

  @override
  Future<Either<Failure, List<MessageReadEntity>>> getMessageReads({
    required String messageId,
  }) async {
    try {
      logi('[CHAT REPOSITORY] getMessageReads - message: $messageId');
      final result = await remoteDataSource.getMessageReads(
        messageId: messageId,
      );
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] getMessageReads', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> markMessageRead({
    required String messageId,
  }) async {
    try {
      logi('[CHAT REPOSITORY] markMessageRead - message: $messageId');
      await remoteDataSource.markMessageRead(messageId: messageId);
      return const Right(null);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] markMessageRead', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Stream<Either<Failure, MessageReadEntity>> watchMessageReads({
    required String conversationId,
  }) async* {
    try {
      await for (final model in remoteDataSource.watchMessageReads(
        conversationId: conversationId,
      )) {
        yield Right(model.toEntity());
      }
    } catch (e) {
      yield Left(ChatFailure.fromException(e));
    }
  }

  // =========================================================
  // TYPING INDICATOR
  // =========================================================

  @override
  Future<Either<Failure, void>> sendTypingIndicator({
    required String conversationId,
    required bool isTyping,
  }) async {
    try {
      await remoteDataSource.sendTypingIndicator(
        conversationId: conversationId,
        isTyping: isTyping,
      );
      return const Right(null);
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] sendTypingIndicator', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }

  @override
  Stream<String> watchTypingIndicators({
    required String conversationId,
  }) async* {
    try {
      await for (final model in remoteDataSource.watchTypingIndicators(
        conversationId: conversationId,
      )) {
        if (model.isTyping) {
          yield model.userId;
        }
      }
    } catch (e) {
      // Silent fail untuk typing indicator
      loge('[CHAT REPOSITORY ERROR] watchTypingIndicators', error: e);
    }
  }

  @override
  Future<void> stopTypingWatch() => remoteDataSource.stopTypingWatch();

  // =========================================================
  // SEARCH
  // =========================================================

  @override
  Future<Either<Failure, List<UserSearchEntity>>> searchFollowedUsers({
    required String query,
    int limit = 20,
  }) async {
    try {
      logi('[CHAT REPOSITORY] searchFollowedUsers - query: $query');
      final result = await remoteDataSource.searchFollowedUsers(
        query: query,
        limit: limit,
      );
      return Right(result.map((e) => e.toEntity()).toList());
    } catch (e) {
      loge('[CHAT REPOSITORY ERROR] searchFollowedUsers', error: e);
      return Left(ChatFailure.fromException(e));
    }
  }
}
