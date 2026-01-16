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

        // Use direct query with views for vote counts and RSVP info
        // v_poll_options_with_votes provides vote_count and is_selected
        // v_event_with_rsvp provides going_count, interested_count, not_going_count, user_response
        final effectiveLimit = limit + 1;

        var query = _client
            .from(SupabaseTables.messages)
            .select('''
              *,
              message_poll_payload(
                *,
                poll_options:v_poll_options_with_votes(*)
              ),
              message_event_payload:v_event_with_rsvp(*)
            ''')
            .eq('conversation_id', conversationId)
            .order('created_at', ascending: false)
            .limit(effectiveLimit);

        if (cursor != null) {
          query = query.lt(
            'created_at',
            cursor.createdAt.toUtc().toIso8601String(),
          );
        }

        final List<dynamic> response = await query;
        final hasMore = response.length > limit;
        final results = hasMore ? response.sublist(0, limit) : response;

        final messages = results
            .map(
              (e) => ChatMessageModel.fromJson(Map<String, dynamic>.from(e)),
            )
            .toList();

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

        // Select with poll/event joins (though null for text) to maintain consistency if needed
        // But for text, standard return is fine.
        final response = await _client
            .from(SupabaseTables.messages)
            .insert(payload)
            .select(
                '*, message_poll_payload(*, poll_options(*)), message_event_payload(*)')
            .single();

        return ChatMessageModel.fromJson(response);
      },
      op: 'sendTextMessage',
      tag: _logTag,
    );
  }

  @override
  Future<ChatMessageModel> sendPollMessage({
    required String conversationId,
    required String question,
    required List<String> options,
    required bool multipleChoice,
  }) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();

        // 1. Insert message
        final msgRes = await _client
            .from(SupabaseTables.messages)
            .insert({
              'conversation_id': conversationId,
              'sender_id': userId,
              'kind': 'poll',
              'body': question,
            })
            .select()
            .single();

        final messageId = msgRes['id'] as String;

        // 2. Insert payload
        await _client.from('message_poll_payload').insert({
          'message_id': messageId,
          'question': question,
          'multiple_choice': multipleChoice,
        });

        // 3. Insert options
        final optionsPayload = options
            .asMap()
            .entries
            .map(
              (e) => {
                'poll_message_id': messageId,
                'text': e.value,
                'position': e.key,
              },
            )
            .toList();

        await _client.from('poll_options').insert(optionsPayload);

        // 4. Return full object with views for vote counts
        final fullMsg = await _client.from(SupabaseTables.messages).select('''
              *,
              message_poll_payload(
                *,
                poll_options:v_poll_options_with_votes(*)
              ),
              message_event_payload:v_event_with_rsvp(*)
            ''').eq('id', messageId).single();

        return ChatMessageModel.fromJson(fullMsg);
      },
      op: 'sendPollMessage',
      tag: _logTag,
    );
  }

  @override
  Future<ChatMessageModel> sendEventMessage({
    required String conversationId,
    required String title,
    String? description,
    String? location,
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();

        // 1. Insert message
        final msgRes = await _client
            .from(SupabaseTables.messages)
            .insert({
              'conversation_id': conversationId,
              'sender_id': userId,
              'kind': 'event',
              'body': title,
            })
            .select()
            .single();

        final messageId = msgRes['id'] as String;

        // 2. Insert payload
        await _client.from('message_event_payload').insert({
          'message_id': messageId,
          'title': title,
          'notes': description,
          'location': location,
          'starts_at': startDate.toUtc().toIso8601String(),
          'ends_at': endDate.toUtc().toIso8601String(),
        });

        // 3. Return full object with RSVP counts view
        final fullMsg = await _client.from(SupabaseTables.messages).select('''
              *,
              message_poll_payload(
                *,
                poll_options:v_poll_options_with_votes(*)
              ),
              message_event_payload:v_event_with_rsvp(*)
            ''').eq('id', messageId).single();

        return ChatMessageModel.fromJson(fullMsg);
      },
      op: 'sendEventMessage',
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

        // Use optimized RPC function
        final rows = await _client.rpc(
          SupabaseRpc.getConversationListOptimized,
        );

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
  // POLL VOTING
  // =========================================================

  @override
  Future<void> votePollOption({
    required String pollMessageId,
    required String optionId,
  }) {
    return guardSupabase(
      () async {
        await _client.rpc('vote_poll_option', params: {
          'p_poll_message_id': pollMessageId,
          'p_option_id': optionId,
        });
      },
      op: 'votePollOption',
      tag: _logTag,
    );
  }

  @override
  Future<void> unvotePollOption({required String optionId}) {
    return guardSupabase(
      () async {
        await _client.rpc('unvote_poll_option', params: {
          'p_option_id': optionId,
        });
      },
      op: 'unvotePollOption',
      tag: _logTag,
    );
  }

  // =========================================================
  // EVENT RSVP
  // =========================================================

  @override
  Future<void> respondToEvent({
    required String eventMessageId,
    required String status,
  }) {
    return guardSupabase(
      () async {
        await _client.rpc('respond_to_event', params: {
          'p_event_message_id': eventMessageId,
          'p_status': status,
        });
      },
      op: 'respondToEvent',
      tag: _logTag,
    );
  }

  @override
  Future<void> cancelEventRsvp({required String eventMessageId}) {
    return guardSupabase(
      () async {
        await _client.rpc('cancel_event_rsvp', params: {
          'p_event_message_id': eventMessageId,
        });
      },
      op: 'cancelEventRsvp',
      tag: _logTag,
    );
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
