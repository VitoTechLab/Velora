import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/chat_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/usecases/delete_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/edit_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_conversation_list_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_conversation_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_message_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_text_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_typing_indicator_usecase.dart';
import 'package:velora/features/chat/domain/usecases/stop_watch_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_new_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_typing_indicators_usecase.dart';

import 'chat_message_event.dart';
import 'chat_message_state.dart';

class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState> {
  ChatMessageBloc({
    required this.getMessagesUseCase,
    required this.sendTextMessageUseCase,
    required this.editMessageUseCase,
    required this.deleteMessageUseCase,
    required this.markConversationReadUseCase,
    required this.watchNewMessagesUseCase,
    required this.stopWatchMessagesUseCase,
    required this.getConversationListUseCase,
    required this.getMessageReadsUseCase,
    required this.markMessageReadUseCase,
    required this.watchMessageReadsUseCase,
    required this.sendTypingIndicatorUseCase,
    required this.watchTypingIndicatorsUseCase,
  }) : super(const ChatMessageState()) {
    on<LoadChatMessagesEvent>(_onLoadInitialMessages);
    on<LoadMoreChatMessagesEvent>(
      _onLoadMoreMessages,
      transformer: bloc_concurrency.droppable(),
    );
    on<SendChatMessageEvent>(_onSendMessage);
    on<EditChatMessageEvent>(_onEditMessage);
    on<DeleteChatMessageEvent>(_onDeleteMessage);
    on<MarkConversationReadEvent>(_onMarkConversationRead);
    on<ClearChatMessagesInfoEvent>(
      (event, emit) => emit(
        state.copyWith(
          message: null,
          errorMessage: null,
          sendError: null,
          editError: null,
          deleteError: null,
          markReadError: null,
          watchError: null,
          conversationsError: null,
          readsError: null,
        ),
      ),
    );
    on<StartWatchMessagesEvent>(_onStartWatch);
    on<StopWatchMessagesEvent>(_onStopWatch);
    on<WatchMessageArrivedEvent>(_onWatchMessageArrived);
    on<WatchMessageUpdatedEvent>(_onWatchMessageUpdated);
    on<WatchMessageDeletedEvent>(_onWatchMessageDeleted);
    on<WatchMessageErrorEvent>(
      (event, emit) => emit(state.copyWith(watchError: event.message)),
    );

    // Conversation List
    on<LoadConversationListEvent>(_onLoadConversationList);
    on<SetChatFilterEvent>(_onSetChatFilter);
    on<SetSearchQueryEvent>(_onSetSearchQuery);

    // Message Reads
    on<LoadMessageReadsEvent>(_onLoadMessageReads);
    on<MarkMessageReadEvent>(_onMarkMessageRead);
    on<StartWatchReadsEvent>(_onStartWatchReads);
    on<StopWatchReadsEvent>(_onStopWatchReads);
    on<WatchReadArrivedEvent>(_onWatchReadArrived);

    // Typing Indicator
    on<SendTypingEvent>(_onSendTyping);
    on<StartWatchTypingEvent>(_onStartWatchTyping);
    on<StopWatchTypingEvent>(_onStopWatchTyping);
    on<WatchTypingArrivedEvent>(_onWatchTypingArrived);
    on<CleanupTypingEvent>(_onCleanupTyping);
  }

  final GetMessagesUseCase getMessagesUseCase;
  final SendTextMessageUseCase sendTextMessageUseCase;
  final EditMessageUseCase editMessageUseCase;
  final DeleteMessageUseCase deleteMessageUseCase;
  final MarkConversationReadUseCase markConversationReadUseCase;
  final WatchNewMessagesUseCase watchNewMessagesUseCase;
  final StopWatchMessagesUseCase stopWatchMessagesUseCase;

  // Conversation List
  final GetConversationListUseCase getConversationListUseCase;

  // Message Reads
  final GetMessageReadsUseCase getMessageReadsUseCase;
  final MarkMessageReadUseCase markMessageReadUseCase;
  final WatchMessageReadsUseCase watchMessageReadsUseCase;

  // Typing Indicator
  final SendTypingIndicatorUseCase sendTypingIndicatorUseCase;
  final WatchTypingIndicatorsUseCase watchTypingIndicatorsUseCase;

  StreamSubscription? _watchSub;
  StreamSubscription? _readWatchSub;
  StreamSubscription? _typingWatchSub;
  Timer? _typingCleanupTimer;

  static const _logTag = 'ChatMessageBloc';
  static const int _maxMessageLength = 1000;
  static const Duration _typingTimeout = Duration(seconds: 5);

  Future<void> _onLoadInitialMessages(
    LoadChatMessagesEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) {
      emit(state.copyWith(errorMessage: 'Conversation id is required'));
      return;
    }

    emit(
      state.copyWith(
        isLoading: true,
        isLoadingMore: false,
        conversationId: conversationId,
        messages: const [],
        hasMore: false,
        cursor: null,
        errorMessage: null,
        message: null,
      ),
    );

    final limit = event.limit ?? 50;

    final result = await getMessagesUseCase(
      conversationId: conversationId,
      limit: limit,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (pagination) {
        emit(
          state.copyWith(
            isLoading: false,
            messages: pagination.messages,
            hasMore: pagination.hasMore,
            cursor: pagination.cursor,
            errorMessage: null,
            conversationId: conversationId,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreMessages(
    LoadMoreChatMessagesEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoading) {
      return;
    }
    if (!state.hasMore ||
        state.cursor == null ||
        state.conversationId == null) {
      return;
    }

    final limit = event.limit;

    logi(
      'Loading more messages limit=$limit cursor=${state.cursor}',
      tag: _logTag,
    );

    emit(
      state.copyWith(isLoadingMore: true, errorMessage: null, message: null),
    );

    final cursor = state.cursor;
    final conversationId = state.conversationId;

    if (cursor == null || conversationId == null) return;

    final result = await getMessagesUseCase(
      conversationId: conversationId,
      limit: limit,
      cursor: cursor,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(isLoadingMore: false, errorMessage: failure.message),
        );
      },
      (pagination) {
        final seen = state.messages.map((m) => m.id).toSet();
        final newOnes = pagination.messages
            .where((m) => seen.add(m.id))
            .toList();
        final merged = [...state.messages, ...newOnes];

        emit(
          state.copyWith(
            messages: merged,
            hasMore: pagination.hasMore,
            cursor: pagination.cursor,
            isLoadingMore: false,
            errorMessage: null,
          ),
        );
      },
    );
  }

  Future<void> _onSendMessage(
    SendChatMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) {
      emit(state.copyWith(sendError: 'Conversation id is required'));
      return;
    }

    final trimmed = event.content.trim();
    if (trimmed.isEmpty) {
      emit(state.copyWith(sendError: 'Message content cannot be empty'));
      return;
    }
    if (trimmed.length > _maxMessageLength) {
      emit(
        state.copyWith(
          sendError: 'Message is too long (max $_maxMessageLength characters)',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isSending: true,
        sendError: null,
        sentMessage: null,
        message: null,
      ),
    );

    final result = await sendTextMessageUseCase(
      conversationId: conversationId,
      body: trimmed,
      replyToMessageId: event.replyToMessageId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isSending: false, sendError: failure.message));
      },
      (chatMessage) {
        emit(
          state.copyWith(
            isSending: false,
            messages: [chatMessage, ...state.messages],
            sentMessage: chatMessage,
            message: 'Message sent',
          ),
        );
      },
    );
  }

  Future<void> _onEditMessage(
    EditChatMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final messageId = event.messageId.trim();
    if (messageId.isEmpty) {
      emit(state.copyWith(editError: 'Message id is required'));
      return;
    }

    final trimmed = event.newContent.trim();
    if (trimmed.isEmpty) {
      emit(state.copyWith(editError: 'Message content cannot be empty'));
      return;
    }
    if (trimmed.length > _maxMessageLength) {
      emit(
        state.copyWith(
          editError: 'Message is too long (max $_maxMessageLength characters)',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isEditing: true,
        editError: null,
        editedMessage: null,
        message: null,
      ),
    );

    final result = await editMessageUseCase(
      messageId: messageId,
      newBody: trimmed,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isEditing: false, editError: failure.message));
      },
      (chatMessage) {
        // Update message in list
        final updatedMessages = state.messages.map((m) {
          if (m.id == messageId) {
            return chatMessage;
          }
          return m;
        }).toList();

        emit(
          state.copyWith(
            isEditing: false,
            editError: null,
            editedMessage: chatMessage,
            messages: updatedMessages,
            message: 'Message edited successfully',
          ),
        );
      },
    );
  }

  Future<void> _onDeleteMessage(
    DeleteChatMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final messageId = event.messageId.trim();
    if (messageId.isEmpty) {
      emit(state.copyWith(deleteError: 'Message id is required'));
      return;
    }

    emit(state.copyWith(isDeleting: true, deleteError: null, message: null));

    final result = await deleteMessageUseCase(messageId: messageId);

    result.fold(
      (failure) {
        emit(state.copyWith(isDeleting: false, deleteError: failure.message));
      },
      (_) {
        // Mark message as deleted in list
        final updatedMessages = state.messages.map((m) {
          if (m.id == messageId) {
            return m.copyWith(
              deletedAt: DateTime.now(),
              body: null, // Clear body for deleted message
            );
          }
          return m;
        }).toList();

        emit(
          state.copyWith(
            isDeleting: false,
            deleteError: null,
            messages: updatedMessages,
            message: 'Message deleted successfully',
          ),
        );
      },
    );
  }

  Future<void> _onMarkConversationRead(
    MarkConversationReadEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) {
      emit(state.copyWith(markReadError: 'Conversation id is required'));
      return;
    }

    emit(
      state.copyWith(isMarkingRead: true, markReadError: null, message: null),
    );

    final result = await markConversationReadUseCase(
      conversationId: conversationId,
      uptoMessageId: event.uptoMessageId,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(isMarkingRead: false, markReadError: failure.message),
        );
      },
      (_) {
        emit(
          state.copyWith(
            isMarkingRead: false,
            message: 'Conversation marked as read',
          ),
        );
      },
    );
  }

  Future<void> _onStartWatch(
    StartWatchMessagesEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) return;

    await _watchSub?.cancel();
    _watchSub = null;
    await stopWatchMessagesUseCase();

    emit(
      state.copyWith(
        isWatching: true,
        watchError: null,
        conversationId: conversationId,
      ),
    );

    _watchSub = watchNewMessagesUseCase(conversationId: conversationId).listen(
      (either) {
        either.fold((failure) => add(WatchMessageErrorEvent(failure.message)), (
          message,
        ) {
          // Check if it's INSERT, UPDATE, or DELETE
          if (message.deletedAt != null) {
            add(WatchMessageDeletedEvent(message));
          } else if (message.editedAt != null) {
            add(WatchMessageUpdatedEvent(message));
          } else {
            add(WatchMessageArrivedEvent(message));
          }
        });
      },
      onError: (error, stack) {
        final message = ChatFailure.fromException(error).message;
        add(WatchMessageErrorEvent(message));
      },
    );
  }

  Future<void> _onStopWatch(
    StopWatchMessagesEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    await _watchSub?.cancel();
    _watchSub = null;
    await stopWatchMessagesUseCase();
    emit(state.copyWith(isWatching: false, watchError: null));
  }

  Future<void> _onWatchMessageArrived(
    WatchMessageArrivedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final incoming = event.message;
    final exists = state.messages.any((m) => m.id == incoming.id);
    if (exists) return;

    // Insert new message (realtime)
    emit(state.copyWith(messages: [incoming, ...state.messages]));
  }

  Future<void> _onWatchMessageUpdated(
    WatchMessageUpdatedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final updated = event.message;

    // Update existing message in list (realtime edit)
    final updatedMessages = state.messages.map((m) {
      if (m.id == updated.id) {
        return updated;
      }
      return m;
    }).toList();

    emit(state.copyWith(messages: updatedMessages));
  }

  Future<void> _onWatchMessageDeleted(
    WatchMessageDeletedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final deleted = event.message;

    // Mark message as deleted in list (realtime delete)
    final updatedMessages = state.messages.map((m) {
      if (m.id == deleted.id) {
        return deleted;
      }
      return m;
    }).toList();

    emit(state.copyWith(messages: updatedMessages));
  }

  // =========================================================
  // CONVERSATION LIST HANDLE
  // =========================================================

  Future<void> _onSetChatFilter(
    SetChatFilterEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(state.copyWith(selectedFilter: event.filter));
  }

  Future<void> _onSetSearchQuery(
    SetSearchQueryEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(state.copyWith(searchQuery: event.query));
  }

  Future<void> _onLoadConversationList(
    LoadConversationListEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(
      state.copyWith(isLoadingConversations: true, conversationsError: null),
    );

    final result = await getConversationListUseCase();
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingConversations: false,
          conversationsError: failure.message,
        ),
      ),
      (conversations) => emit(
        state.copyWith(
          isLoadingConversations: false,
          conversations: conversations,
          conversationsError: null,
        ),
      ),
    );
  }

  // =========================================================
  // MESSAGE READS HANDLERS
  // =========================================================

  Future<void> _onLoadMessageReads(
    LoadMessageReadsEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(state.copyWith(isLoadingReads: true, readsError: null));

    final result = await getMessageReadsUseCase(messageId: event.messageId);
    result.fold(
      (failure) => emit(
        state.copyWith(isLoadingReads: false, readsError: failure.message),
      ),
      (reads) {
        final updatedReads = Map<String, List<MessageReadEntity>>.from(
          state.messageReads,
        );
        updatedReads[event.messageId] = reads;
        emit(
          state.copyWith(
            isLoadingReads: false,
            messageReads: updatedReads,
            readsError: null,
          ),
        );
      },
    );
  }

  Future<void> _onMarkMessageRead(
    MarkMessageReadEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final result = await markMessageReadUseCase(messageId: event.messageId);
    result.fold(
      (failure) {
        loge('$_logTag: markMessageRead error', error: failure);
        emit(state.copyWith(readsError: failure.message));
      },
      (_) {
        logi('$_logTag: Message marked as read: ${event.messageId}');
      },
    );
  }

  Future<void> _onStartWatchReads(
    StartWatchReadsEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    await _readWatchSub?.cancel();
    emit(state.copyWith(isWatchingReads: true));

    _readWatchSub =
        watchMessageReadsUseCase(conversationId: event.conversationId).listen(
          (either) {
            either.fold(
              (failure) {
                loge('$_logTag: watchReads error', error: failure);
              },
              (readEntity) {
                add(WatchReadArrivedEvent(readEntity));
              },
            );
          },
          onError: (e) {
            loge('$_logTag: watchReads stream error', error: e);
          },
        );
  }

  Future<void> _onStopWatchReads(
    StopWatchReadsEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    await _readWatchSub?.cancel();
    _readWatchSub = null;
    emit(state.copyWith(isWatchingReads: false));
  }

  Future<void> _onWatchReadArrived(
    WatchReadArrivedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final read = event.readEntity;
    final updatedReads = Map<String, List<MessageReadEntity>>.from(
      state.messageReads,
    );

    // Add or update read receipt for this message
    final currentReads = List<MessageReadEntity>.of(
      updatedReads[read.messageId] ?? <MessageReadEntity>[],
    );
    final existingIndex = currentReads.indexWhere(
      (r) => r.userId == read.userId,
    );

    if (existingIndex >= 0) {
      currentReads[existingIndex] = read;
    } else {
      currentReads.add(read);
    }

    updatedReads[read.messageId] = currentReads;
    emit(state.copyWith(messageReads: updatedReads));
  }

  // =========================================================
  // TYPING INDICATOR HANDLERS
  // =========================================================

  Future<void> _onSendTyping(
    SendTypingEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final result = await sendTypingIndicatorUseCase(
      conversationId: event.conversationId,
      isTyping: event.isTyping,
    );
    result.fold(
      (failure) {
        loge('$_logTag: sendTyping error', error: failure);
      },
      (_) {
        // Success - no state update needed
      },
    );
  }

  Future<void> _onStartWatchTyping(
    StartWatchTypingEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    await _typingWatchSub?.cancel();
    emit(state.copyWith(isWatchingTyping: true));

    // Start periodic cleanup of stale typing indicators
    _typingCleanupTimer?.cancel();
    _typingCleanupTimer = Timer.periodic(_typingTimeout, (_) {
      _cleanupStaleTypingIndicators();
    });

    _typingWatchSub =
        watchTypingIndicatorsUseCase(
          conversationId: event.conversationId,
        ).listen(
          (userId) {
            add(WatchTypingArrivedEvent(userId));
          },
          onError: (e) {
            loge('$_logTag: watchTyping stream error', error: e);
          },
        );
  }

  Future<void> _onStopWatchTyping(
    StopWatchTypingEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    await _typingWatchSub?.cancel();
    _typingWatchSub = null;
    _typingCleanupTimer?.cancel();
    _typingCleanupTimer = null;
    emit(state.copyWith(isWatchingTyping: false, typingUsers: const {}));
  }

  Future<void> _onWatchTypingArrived(
    WatchTypingArrivedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final updatedTyping = Map<String, DateTime>.from(state.typingUsers);
    updatedTyping[event.userId] = DateTime.now();
    emit(state.copyWith(typingUsers: updatedTyping));
  }

  void _cleanupStaleTypingIndicators() {
    // Use add to trigger event handler instead of emit directly
    add(const ChatMessageEvent.cleanupTyping());
  }

  Future<void> _onCleanupTyping(
    CleanupTypingEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final now = DateTime.now();
    final updatedTyping = Map<String, DateTime>.from(state.typingUsers);

    updatedTyping.removeWhere((userId, timestamp) {
      return now.difference(timestamp) > _typingTimeout;
    });

    if (updatedTyping.length != state.typingUsers.length) {
      emit(state.copyWith(typingUsers: updatedTyping));
    }
  }

  @override
  Future<void> close() async {
    await _watchSub?.cancel();
    _watchSub = null;
    await _readWatchSub?.cancel();
    _readWatchSub = null;
    await _typingWatchSub?.cancel();
    _typingWatchSub = null;
    _typingCleanupTimer?.cancel();
    _typingCleanupTimer = null;
    await stopWatchMessagesUseCase();
    await super.close();
  }
}
