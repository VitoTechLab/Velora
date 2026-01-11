import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/data/models/chat_message_model.dart';
import 'package:velora/features/chat/data/models/conversation_list_model.dart';
import 'package:velora/features/chat/data/models/message_cursor_model.dart';
import 'package:velora/features/chat/data/models/message_pagination_model.dart';
import 'package:velora/features/chat/data/models/message_read_model.dart';
import 'package:velora/features/chat/data/models/typing_indicator_model.dart';
import 'package:velora/features/chat/data/models/user_presence_model.dart';
import 'package:velora/features/chat/data/models/user_search_model.dart';

import 'chat_remote_datasource.dart';

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  ChatRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;
  RealtimeChannel? _messageChannel;
  RealtimeChannel? _messageReadChannel;
  RealtimeChannel? _typingChannel;
  StreamController<ChatMessageModel>? _messageWatchController;
  StreamController<MessageReadModel>? _messageReadController;
  StreamController<TypingIndicatorModel>? _typingController;

  static const _logTag = 'ChatRemoteDataSource';

  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw UnauthenticatedException();
    }
    return userId;
  }

  @override
  Future<MessagePaginationModel> getMessages({
    required String conversationId,
    int limit = 50,
    MessageCursorModel? cursor,
  }) {
    return guardSupabase(
      () async {
        logi(
          'Fetching messages for conversation=$conversationId (limit=$limit)',
          tag: _logTag,
        );

        final params = <String, dynamic>{
          'p_conversation_id': conversationId,
          'p_limit': limit,
        };

        if (cursor != null) {
          params['p_cursor_created_at'] = cursor.createdAt
              .toUtc()
              .toIso8601String();
          params['p_cursor_id'] = cursor.id;
        }

        // New optimized RPC returns {messages: [], has_more: bool, count: int}
        final response = await _client.rpc(
          SupabaseRpc.getMessagesPage,
          params: params,
        );

        // Handle response based on format (backward compatible)
        late List<ChatMessageModel> messages;
        late bool hasMore;

        if (response is Map<String, dynamic>) {
          // New format: {messages: [], has_more: bool}
          final messagesData = response['messages'] as List? ?? [];
          hasMore = response['has_more'] as bool? ?? false;

          messages = messagesData
              .map(
                (e) => ChatMessageModel.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList();

          logi(
            'Loaded ${messages.length} messages, hasMore=$hasMore',
            tag: _logTag,
          );
        } else {
          // Old format: List (backward compatibility)
          final all = (response as List)
              .map(
                (e) => ChatMessageModel.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList();

          hasMore = all.length > limit;
          messages = hasMore ? all.sublist(0, limit) : all;
        }

        final nextCursor = messages.isEmpty
            ? null
            : MessageCursorModel(
                createdAt: messages.last.createdAt,
                id: messages.last.id,
              );

        return MessagePaginationModel(
          messages: messages,
          hasMore: hasMore,
          nextCursor: nextCursor,
        );
      },
      op: 'getMessages',
      tag: _logTag,
    );
  }

  @override
  Future<ChatMessageModel> sendTextMessage({
    required String conversationId,
    required String body,
    String? replyToMessageId,
  }) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        final payload = <String, dynamic>{
          'conversation_id': conversationId,
          'sender_id': userId,
          'kind': 'text',
          'body': body,
          'reply_to_message_id': replyToMessageId,
        };

        // Select only needed fields to reduce bandwidth
        final response = await _client
            .from(SupabaseTables.messages)
            .insert(payload)
            .select('id, conversation_id, sender_id, kind, body, reply_to_message_id, created_at, edited_at, deleted_at, deleted_by')
            .single();

        return ChatMessageModel.fromJson(response);
      },
      op: 'sendTextMessage',
      tag: _logTag,
    );
  }

  @override
  Future<ChatMessageModel> editMessage({
    required String messageId,
    required String newBody,
  }) {
    return guardSupabase(
      () async {
        final payload = <String, dynamic>{
          'body': newBody,
          'edited_at': DateTime.now().toUtc().toIso8601String(),
        };

        final response = await _client
            .from(SupabaseTables.messages)
            .update(payload)
            .eq('id', messageId)
            .select()
            .single();

        return ChatMessageModel.fromJson(response);
      },
      op: 'editMessage',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteMessage({required String messageId}) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        final payload = <String, dynamic>{
          'deleted_at': DateTime.now().toUtc().toIso8601String(),
          'deleted_by': userId,
        };

        await _client
            .from(SupabaseTables.messages)
            .update(payload)
            .eq('id', messageId);
      },
      op: 'deleteMessage',
      tag: _logTag,
    );
  }

  @override
  Future<String> createDirectConversation({required String otherUserId}) {
    return guardSupabase(
      () async {
        final response = await _client.rpc(
          SupabaseRpc.createDirectConversation,
          params: {'other_user_id': otherUserId},
        );

        return response as String;
      },
      op: 'createDirectConversation',
      tag: _logTag,
    );
  }

  @override
  Future<void> markConversationRead({
    required String conversationId,
    String? uptoMessageId,
  }) {
    return guardSupabase(
      () async {
        final params = <String, dynamic>{'p_conversation_id': conversationId};
        if (uptoMessageId != null) {
          params['p_upto_message_id'] = uptoMessageId;
        }

        await _client.rpc(SupabaseRpc.markConversationRead, params: params);
      },
      op: 'markConversationRead',
      tag: _logTag,
    );
  }

  @override
  Stream<ChatMessageModel> watchNewMessages({required String conversationId}) {
    final previousController = _messageWatchController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _messageWatchController = null;

    final controller = StreamController<ChatMessageModel>.broadcast();
    _messageWatchController = controller;

    // Ensure only one active subscription
    unawaited(_messageChannel?.unsubscribe());

    _messageChannel = _client
        .channel('messages:$conversationId')
        // Listen to INSERT events
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: SupabaseTables.messages,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'conversation_id',
            value: conversationId,
          ),
          callback: (payload) {
            try {
              final message = ChatMessageModel.fromJson(payload.newRecord);
              controller.add(message);
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        // Listen to UPDATE events (for edit)
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: SupabaseTables.messages,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'conversation_id',
            value: conversationId,
          ),
          callback: (payload) {
            try {
              final message = ChatMessageModel.fromJson(payload.newRecord);
              controller.add(message);
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        // Listen to DELETE events (soft delete: updated with deleted_at)
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: SupabaseTables.messages,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'conversation_id',
            value: conversationId,
          ),
          callback: (payload) {
            try {
              // Check if it's a delete (deleted_at is set)
              if (payload.newRecord['deleted_at'] != null) {
                final message = ChatMessageModel.fromJson(payload.newRecord);
                controller.add(message);
              }
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _messageChannel?.unsubscribe();
      _messageChannel = null;
      _messageWatchController = null;
    };

    return controller.stream;
  }

  @override
  Future<void> stopWatch() async {
    await _messageChannel?.unsubscribe();
    _messageChannel = null;
    final controller = _messageWatchController;
    if (controller != null && !controller.isClosed) {
      await controller.close();
    }
    _messageWatchController = null;
  }

  @override
  Stream<List<UserPresenceModel>> watchUserPresence({
    required String myUserId,
  }) {
    final controller = StreamController<List<UserPresenceModel>>.broadcast();

    // Subscribe to user_presence table changes (respects RLS)
    final channel = _client
        .channel('user_presence:realtime')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: SupabaseTables.userPresence,
          callback: (payload) async {
            try {
              // Fetch updated presence list (RLS filters automatically)
              final rows = await _client
                  .from(SupabaseTables.userPresenceView)
                  .select('user_id, last_seen_at, is_online');

              final presenceList = (rows as List).map((row) {
                final map = Map<String, dynamic>.from(row as Map);
                return UserPresenceModel(
                  userId: map['user_id'] as String,
                  lastSeenAt: DateTime.parse(
                    map['last_seen_at'] as String,
                  ).toLocal(),
                  isOnline: map['is_online'] as bool,
                );
              }).toList();

              controller.add(presenceList);
            } catch (e, s) {
              loge(
                'Error processing presence update',
                tag: _logTag,
                error: e,
                stackTrace: s,
              );
            }
          },
        )
        .subscribe();

    controller.onCancel = () {
      channel.unsubscribe();
    };

    return controller.stream;
  }

  @override
  Future<List<UserPresenceModel>> fetchLastSeenStatus({
    required List<String> userIds,
  }) {
    return guardSupabase(
      () async {
        if (userIds.isEmpty) return <UserPresenceModel>[];

        final rows = await _client
            .from(SupabaseTables.userPresenceView)
            .select('user_id, last_seen_at')
            .inFilter('user_id', userIds);

        return (rows as List).map((row) {
          final map = Map<String, dynamic>.from(row as Map);
          return UserPresenceModel(
            userId: map['user_id'] as String,
            lastSeenAt: DateTime.parse(map['last_seen_at']).toLocal(),
            isOnline: false, // Default false, nanti di-override realtime
          );
        }).toList();
      },
      op: 'fetchLastSeenStatus',
      tag: _logTag,
    );
  }

  @override
  Future<void> touchPresence() {
    return guardSupabase(
      () async {
        await _client.rpc(SupabaseRpc.touchPresence);
      },
      op: 'touchPresence',
      tag: _logTag,
    );
  }

  // =========================================================
  // CONVERSATION LIST
  // =========================================================

  @override
  Future<List<ConversationListModel>> getConversationList() {
    return guardSupabase(
      () async {
        logi('Fetching conversation list', tag: _logTag);

        // Select only essential fields to minimize bandwidth
        final rows = await _client
            .from(SupabaseTables.conversationListView)
            .select(
              'conversation_id, other_user_id, other_user_username, '
              'other_user_full_name, other_user_avatar_url, '
              'last_message_body, last_message_at, unread_count'
            )
            .order('last_message_at', ascending: false)
            .limit(100); // Reasonable limit for conversation list

        return (rows as List)
            .map((row) => ConversationListModel.fromJson(row))
            .toList();
      },
      op: 'getConversationList',
      tag: _logTag,
    );
  }

  // =========================================================
  // MESSAGE READS (Read Receipts)
  // =========================================================

  @override
  Future<List<MessageReadModel>> getMessageReads({required String messageId}) {
    return guardSupabase(
      () async {
        logi('Fetching message reads for message: $messageId', tag: _logTag);

        final rows = await _client
            .from(SupabaseTables.messageReads)
            .select()
            .eq('message_id', messageId)
            .order('read_at', ascending: false);

        return (rows as List)
            .map((row) => MessageReadModel.fromJson(row))
            .toList();
      },
      op: 'getMessageReads',
      tag: _logTag,
    );
  }

  @override
  Future<void> markMessageRead({required String messageId}) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();

        final payload = <String, dynamic>{
          'message_id': messageId,
          'user_id': userId,
        };

        await _client.from(SupabaseTables.messageReads).upsert(payload);
      },
      op: 'markMessageRead',
      tag: _logTag,
    );
  }

  @override
  Stream<MessageReadModel> watchMessageReads({required String conversationId}) {
    final previousController = _messageReadController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _messageReadController = null;

    final controller = StreamController<MessageReadModel>.broadcast();
    _messageReadController = controller;

    unawaited(_messageReadChannel?.unsubscribe());

    _messageReadChannel = _client
        .channel('message_reads:$conversationId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: SupabaseTables.messageReads,
          callback: (payload) {
            try {
              final read = MessageReadModel.fromJson(payload.newRecord);
              controller.add(read);
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _messageReadChannel?.unsubscribe();
      _messageReadChannel = null;
      _messageReadController = null;
    };

    return controller.stream;
  }

  // =========================================================
  // TYPING INDICATOR (Broadcast - RAM to RAM)
  // =========================================================

  @override
  Future<void> sendTypingIndicator({
    required String conversationId,
    required bool isTyping,
  }) async {
    try {
      final userId = _requireUserId();

      // Pastikan channel sudah tersubscribe
      if (_typingChannel == null) {
        _typingChannel = _client.channel('typing:$conversationId');
        _typingChannel!.subscribe();
      }

      final payload = TypingIndicatorModel.create(
        userId: userId,
        conversationId: conversationId,
        isTyping: isTyping,
      ).toJson();

      await _typingChannel!.sendBroadcastMessage(
        event: 'typing',
        payload: payload,
      );

      logi(
        'Sent typing indicator: $isTyping for conversation: $conversationId',
        tag: _logTag,
      );
    } catch (e, st) {
      loge('Error sending typing indicator', error: e, stackTrace: st);
    }
  }

  @override
  Stream<TypingIndicatorModel> watchTypingIndicators({
    required String conversationId,
  }) {
    final previousController = _typingController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _typingController = null;

    final controller = StreamController<TypingIndicatorModel>.broadcast();
    _typingController = controller;

    unawaited(_typingChannel?.unsubscribe());

    _typingChannel = _client
        .channel('typing:$conversationId')
        .onBroadcast(
          event: 'typing',
          callback: (payload) {
            try {
              final typing = TypingIndicatorModel.fromJson(
                Map<String, dynamic>.from(payload as Map),
              );

              // Jangan emit typing indicator dari diri sendiri
              final myUserId = _client.auth.currentUser?.id;
              if (typing.userId != myUserId) {
                controller.add(typing);
              }
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _typingChannel?.unsubscribe();
      _typingChannel = null;
      _typingController = null;
    };

    return controller.stream;
  }

  @override
  Future<void> stopTypingWatch() async {
    await _typingChannel?.unsubscribe();
    _typingChannel = null;
    final controller = _typingController;
    if (controller != null && !controller.isClosed) {
      await controller.close();
    }
    _typingController = null;
  }

  // =========================================================
  // SEARCH FOLLOWED USERS
  // =========================================================

  @override
  Future<List<UserSearchModel>> searchFollowedUsers({
    required String query,
    required int limit,
  }) {
    return guardSupabase(
      () async {
        final myUserId = _requireUserId();

        // Get list of users that current user follows
        final followingIds = await _client
            .from(SupabaseTables.userFollows)
            .select('following_id')
            .eq('follower_id', myUserId)
            .then(
              (data) => data.map((e) => e['following_id'] as String).toList(),
            );

        if (followingIds.isEmpty) {
          return <UserSearchModel>[];
        }

        // Search only among followed users by username
        final response = await _client
            .from(SupabaseTables.userProfiles)
            .select('id, username, avatar_url, bio')
            .inFilter('id', followingIds)
            .ilike('username', '%$query%')
            .limit(limit);

        return (response as List)
            .map((json) => UserSearchModel.fromJson(json))
            .toList();
      },
      op: 'searchFollowedUsers',
      tag: _logTag,
    );
  }
}
