import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/chat_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/domain/entities/message_read_entity.dart';
import 'package:velora/features/chat/domain/usecases/cancel_event_rsvp_usecase.dart';
import 'package:velora/features/chat/domain/usecases/delete_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/edit_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/create_direct_conversation_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_conversation_list_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_conversation_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_message_read_usecase.dart';
import 'package:velora/features/chat/domain/usecases/mark_messages_read_batch_usecase.dart';
import 'package:velora/features/chat/domain/usecases/respond_to_event_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_event_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_media_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_poll_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_text_message_usecase.dart';
import 'package:velora/features/chat/domain/usecases/send_typing_indicator_usecase.dart';
import 'package:velora/features/chat/domain/usecases/stop_watch_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/unvote_poll_option_usecase.dart';
import 'package:velora/features/chat/domain/usecases/vote_poll_option_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_message_reads_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_new_messages_usecase.dart';
import 'package:velora/features/chat/domain/usecases/watch_typing_indicators_usecase.dart';
import 'package:velora/features/media/domain/repositories/media_repository.dart';

import 'chat_message_event.dart';
import 'chat_message_state.dart';

class ChatMessageBloc extends Bloc<ChatMessageEvent, ChatMessageState> {
  ChatMessageBloc({
    required this.getMessagesUseCase,
    required this.sendTextMessageUseCase,
    required this.sendMediaMessageUseCase,
    required this.editMessageUseCase,
    required this.deleteMessageUseCase,
    required this.markConversationReadUseCase,
    required this.watchNewMessagesUseCase,
    required this.stopWatchMessagesUseCase,
    required this.getConversationListUseCase,
    required this.getMessageReadsUseCase,
    required this.markMessageReadUseCase,
    required this.markMessagesReadBatchUseCase,
    required this.watchMessageReadsUseCase,
    required this.sendTypingIndicatorUseCase,
    required this.watchTypingIndicatorsUseCase,
    required this.createDirectConversationUseCase,
    required this.sendPollMessageUseCase,
    required this.sendEventMessageUseCase,
    required this.votePollOptionUseCase,
    required this.unvotePollOptionUseCase,
    required this.respondToEventUseCase,
    required this.cancelEventRsvpUseCase,
    required this.mediaRepository,
  }) : super(const ChatMessageState()) {
    on<InitializeChatEvent>(_onInitializeChat);
    on<LoadChatMessagesEvent>(_onLoadInitialMessages);
    on<LoadMoreChatMessagesEvent>(
      _onLoadMoreMessages,
      transformer: bloc_concurrency.droppable(),
    );
    on<SendChatMessageEvent>(_onSendMessage);
    on<SendMediaMessageEvent>(_onSendMediaMessage);
    on<UploadAndSendImagesEvent>(_onUploadAndSendImages);
    on<UploadAndSendVideoEvent>(_onUploadAndSendVideo);
    on<UploadAndSendDocumentsEvent>(_onUploadAndSendDocuments);
    on<UploadAndSendAudioEvent>(_onUploadAndSendAudio);
    on<SendPollMessageEvent>(_onSendPollMessage);
    on<SendEventMessageEvent>(_onSendEventMessage);
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
          uploadError: null,
          uploadSuccessMessage: null,
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
    on<RefreshConversationListEvent>(_onRefreshConversationList);
    on<UpdateConversationLocallyEvent>(_onUpdateConversationLocally);

    // Message Reads
    on<LoadMessageReadsEvent>(_onLoadMessageReads);
    on<MarkMessageReadEvent>(_onMarkMessageRead);
    on<MarkMessagesReadBatchEvent>(_onMarkMessagesReadBatch);
    on<StartWatchReadsEvent>(_onStartWatchReads);
    on<StopWatchReadsEvent>(_onStopWatchReads);
    on<WatchReadArrivedEvent>(_onWatchReadArrived);

    // Poll Voting
    on<VotePollEvent>(_onVotePoll);
    on<UnvotePollEvent>(_onUnvotePoll);

    // Event RSVP
    on<RespondToEventEvent>(_onRespondToEvent);
    on<CancelEventRsvpEvent>(_onCancelEventRsvp);

    // Typing Indicator
    on<SendTypingEvent>(_onSendTyping);
    on<StartWatchTypingEvent>(_onStartWatchTyping);
    on<StopWatchTypingEvent>(_onStopWatchTyping);
    on<WatchTypingArrivedEvent>(_onWatchTypingArrived);
    on<CleanupTypingEvent>(_onCleanupTyping);
  }

  final GetMessagesUseCase getMessagesUseCase;
  final SendTextMessageUseCase sendTextMessageUseCase;
  final SendMediaMessageUseCase sendMediaMessageUseCase;
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
  final MarkMessagesReadBatchUseCase markMessagesReadBatchUseCase;
  final WatchMessageReadsUseCase watchMessageReadsUseCase;

  // Typing Indicator
  final SendTypingIndicatorUseCase sendTypingIndicatorUseCase;
  final WatchTypingIndicatorsUseCase watchTypingIndicatorsUseCase;

  // Direct Conversation
  final CreateDirectConversationUseCase createDirectConversationUseCase;

  // Poll & Event
  final SendPollMessageUseCase sendPollMessageUseCase;
  final SendEventMessageUseCase sendEventMessageUseCase;
  final VotePollOptionUseCase votePollOptionUseCase;
  final UnvotePollOptionUseCase unvotePollOptionUseCase;
  final RespondToEventUseCase respondToEventUseCase;
  final CancelEventRsvpUseCase cancelEventRsvpUseCase;

  // Media Repository
  final MediaRepository mediaRepository;

  StreamSubscription? _watchSub;
  StreamSubscription? _readWatchSub;
  StreamSubscription? _typingWatchSub;
  Timer? _typingCleanupTimer;

  static const _logTag = 'ChatMessageBloc';
  static const int _maxMessageLength = 1000;
  static const Duration _typingTimeout = Duration(seconds: 5);

  /// Initialize chat - creates conversation if needed, then loads messages
  Future<void> _onInitializeChat(
    InitializeChatEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    var conversationId = event.conversationId.trim();
    final peerUserId = event.peerUserId?.trim();

    emit(
      state.copyWith(
        isLoading: true,
        isLoadingMore: false,
        messages: const [],
        hasMore: false,
        cursor: null,
        errorMessage: null,
        message: null,
      ),
    );

    // If no conversationId but has peerUserId, create/get direct conversation
    if (conversationId.isEmpty && peerUserId != null && peerUserId.isNotEmpty) {
      logi('Creating/getting direct conversation with: $peerUserId',
          tag: _logTag);

      final createResult = await createDirectConversationUseCase(
        otherUserId: peerUserId,
      );

      final newConvId = createResult.fold(
        (failure) {
          emit(state.copyWith(
            isLoading: false,
            errorMessage: failure.message,
          ));
          return null;
        },
        (id) => id,
      );

      if (newConvId == null) return;
      conversationId = newConvId;
      logi('Conversation ID resolved: $conversationId', tag: _logTag);
    }

    if (conversationId.isEmpty) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Conversation id is required',
      ));
      return;
    }

    // Update state with resolved conversationId
    emit(state.copyWith(conversationId: conversationId));

    // Load messages
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
        // Debug: log initial messages loaded from Supabase
        for (final m in pagination.messages) {
          logi(
            'InitLoad message id=${m.id} kind=${m.kind} deletedAt=${m.deletedAt} bodyPreview=${m.body?.substring(0, m.body!.length > 30 ? 30 : m.body!.length)}',
            tag: _logTag,
          );
        }

        emit(
          state.copyWith(
            isLoading: false,
            messages: pagination.messages,
            hasMore: pagination.hasMore,
            cursor: pagination.cursor,
            errorMessage: null,
          ),
        );

        // Start watching after messages loaded
        add(StartWatchMessagesEvent(conversationId: conversationId));
        add(StartWatchReadsEvent(conversationId: conversationId));
        add(StartWatchTypingEvent(conversationId: conversationId));
      },
    );
  }

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
        final newOnes =
            pagination.messages.where((m) => seen.add(m.id)).toList();
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

  Future<void> _onSendMediaMessage(
    SendMediaMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) {
      emit(state.copyWith(sendError: 'Conversation id is required'));
      return;
    }

    if (event.mediaUrl.trim().isEmpty) {
      emit(state.copyWith(sendError: 'Media URL is required'));
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

    final result = await sendMediaMessageUseCase(
      conversationId: conversationId,
      mediaUrl: event.mediaUrl,
      mediaType: event.mediaType,
      mimeType: event.mimeType,
      fileName: event.fileName,
      fileSize: event.fileSize,
      caption: event.caption,
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
            message: 'Media sent',
          ),
        );
      },
    );
  }

  /// Upload and send images
  Future<void> _onUploadAndSendImages(
    UploadAndSendImagesEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(
      state.copyWith(
        isUploadingMedia: true,
        uploadError: null,
        uploadSuccessMessage: null,
      ),
    );

    try {
      // Convert file paths to File objects
      final files = event.filePaths.map((path) => File(path)).toList();

      // Upload images to Cloudinary
      final result = await mediaRepository.uploadImagesForChat(
        files: files,
        userId: event.userId,
        conversationId: event.conversationId,
      );

      await result.fold(
        (failure) async {
          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadError: failure.message,
            ),
          );
        },
        (assets) async {
          // Send media message for each uploaded image
          for (int i = 0; i < assets.length; i++) {
            final asset = assets[i];
            // Only include caption on the first image
            final caption = i == 0 ? event.caption : null;

            final sendResult = await sendMediaMessageUseCase(
              conversationId: event.conversationId,
              mediaUrl: asset.secureUrl,
              mediaType: 'image',
              mimeType: 'image/jpeg',
              caption: caption,
            );

            sendResult.fold(
              (failure) {
                loge('Failed to send image message: ${failure.message}',
                    tag: _logTag);
              },
              (chatMessage) {
                // Message will be added via realtime subscription
                // Only log success here to prevent duplicates
                logi('Image message sent: ${chatMessage.id}', tag: _logTag);
              },
            );
          }

          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadSuccessMessage: 'Images uploaded and sent successfully',
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isUploadingMedia: false,
          uploadError: 'Failed to upload images: $e',
        ),
      );
    }
  }

  /// Upload and send video
  Future<void> _onUploadAndSendVideo(
    UploadAndSendVideoEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(
      state.copyWith(
        isUploadingMedia: true,
        uploadError: null,
        uploadSuccessMessage: null,
      ),
    );

    try {
      final file = File(event.filePath);

      // Upload video to Cloudinary
      final result = await mediaRepository.uploadVideoForChat(
        file: file,
        userId: event.userId,
        conversationId: event.conversationId,
      );

      await result.fold(
        (failure) async {
          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadError: failure.message,
            ),
          );
        },
        (asset) async {
          // Send media message with duration from Cloudinary
          final sendResult = await sendMediaMessageUseCase(
            conversationId: event.conversationId,
            mediaUrl: asset.secureUrl,
            mediaType: 'video',
            mimeType: 'video/mp4',
            durationSeconds: asset.duration,
            caption: event.caption,
          );

          sendResult.fold(
            (failure) {
              emit(
                state.copyWith(
                  isUploadingMedia: false,
                  uploadError: failure.message,
                ),
              );
            },
            (chatMessage) {
              // Message will be added via realtime subscription
              // Only update upload state to prevent duplicates
              logi('Video message sent: ${chatMessage.id}', tag: _logTag);
              emit(
                state.copyWith(
                  isUploadingMedia: false,
                  uploadSuccessMessage: 'Video uploaded and sent successfully',
                ),
              );
            },
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isUploadingMedia: false,
          uploadError: 'Failed to upload video: $e',
        ),
      );
    }
  }

  /// Upload and send documents
  Future<void> _onUploadAndSendDocuments(
    UploadAndSendDocumentsEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(
      state.copyWith(
        isUploadingMedia: true,
        uploadError: null,
        uploadSuccessMessage: null,
      ),
    );

    try {
      // Convert file paths to File objects
      final files = event.filePaths.map((path) => File(path)).toList();

      // Upload documents to Cloudinary
      final result = await mediaRepository.uploadDocumentsForChat(
        files: files,
        userId: event.userId,
        conversationId: event.conversationId,
      );

      await result.fold(
        (failure) async {
          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadError: failure.message,
            ),
          );
        },
        (assets) async {
          // Send media message for each uploaded document
          for (final asset in assets) {
            final sendResult = await sendMediaMessageUseCase(
              conversationId: event.conversationId,
              mediaUrl: asset.secureUrl,
              mediaType: 'document',
              mimeType: _getMimeTypeFromUrl(asset.secureUrl),
            );

            sendResult.fold(
              (failure) {
                loge('Failed to send document message: ${failure.message}',
                    tag: _logTag);
              },
              (chatMessage) {
                // Message will be added via realtime subscription
                // Only log success here to prevent duplicates
                logi('Document message sent: ${chatMessage.id}', tag: _logTag);
              },
            );
          }

          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadSuccessMessage: 'Documents uploaded and sent successfully',
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isUploadingMedia: false,
          uploadError: 'Failed to upload documents: $e',
        ),
      );
    }
  }

  /// Upload and send audio
  Future<void> _onUploadAndSendAudio(
    UploadAndSendAudioEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(
      state.copyWith(
        isUploadingMedia: true,
        uploadError: null,
        uploadSuccessMessage: null,
      ),
    );

    try {
      final file = File(event.filePath);

      // Upload audio to Cloudinary
      final result = await mediaRepository.uploadAudioForChat(
        file: file,
        userId: event.userId,
        conversationId: event.conversationId,
      );

      await result.fold(
        (failure) async {
          emit(
            state.copyWith(
              isUploadingMedia: false,
              uploadError: failure.message,
            ),
          );
        },
        (asset) async {
          // Send media message with duration from Cloudinary
          final sendResult = await sendMediaMessageUseCase(
            conversationId: event.conversationId,
            mediaUrl: asset.secureUrl,
            mediaType: 'audio',
            mimeType: event.isVoiceMessage
                ? 'audio/m4a'
                : _getMimeTypeFromUrl(asset.secureUrl),
            durationSeconds: asset.duration,
          );

          sendResult.fold(
            (failure) {
              emit(
                state.copyWith(
                  isUploadingMedia: false,
                  uploadError: failure.message,
                ),
              );
            },
            (chatMessage) {
              // Message will be added via realtime subscription
              // Only update upload state to prevent duplicates
              logi('Audio message sent: ${chatMessage.id}', tag: _logTag);
              emit(
                state.copyWith(
                  isUploadingMedia: false,
                  uploadSuccessMessage: event.isVoiceMessage
                      ? 'Voice message sent successfully'
                      : 'Audio uploaded and sent successfully',
                ),
              );
            },
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isUploadingMedia: false,
          uploadError: 'Failed to upload audio: $e',
        ),
      );
    }
  }

  /// Helper to get mime type from URL
  String _getMimeTypeFromUrl(String url) {
    final ext = url.split('.').last.toLowerCase();
    switch (ext) {
      case 'pdf':
        return 'application/pdf';
      case 'doc':
      case 'docx':
        return 'application/msword';
      case 'xls':
      case 'xlsx':
        return 'application/vnd.ms-excel';
      case 'ppt':
      case 'pptx':
        return 'application/vnd.ms-powerpoint';
      case 'txt':
        return 'text/plain';
      case 'mp3':
        return 'audio/mpeg';
      case 'm4a':
        return 'audio/m4a';
      case 'wav':
        return 'audio/wav';
      default:
        return 'application/octet-stream';
    }
  }

  Future<void> _onSendPollMessage(
    SendPollMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(state.copyWith(isSending: true, sendError: null));

    final result = await sendPollMessageUseCase(
      conversationId: event.conversationId,
      question: event.question,
      options: event.options,
      multipleChoice: event.multipleChoice,
      maxUserVotes: event.maxUserVotes,
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
            message: 'Poll sent',
          ),
        );
      },
    );
  }

  Future<void> _onSendEventMessage(
    SendEventMessageEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    emit(state.copyWith(isSending: true, sendError: null));

    final result = await sendEventMessageUseCase(
      conversationId: event.conversationId,
      title: event.title,
      description: event.description,
      locationName: event.locationName,
      address: event.address,
      isOnline: event.isOnline,
      meetingUrl: event.meetingUrl,
      coverUrl: event.coverUrl,
      startDate: event.startDate,
      endDate: event.endDate,
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
            message: 'Event sent',
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
        // Update conversation list locally to reset unread count
        final conversations = state.conversations;
        final index = conversations.indexWhere(
          (c) => c.conversationId == conversationId,
        );
        if (index != -1) {
          final existing = conversations[index];
          final updated = existing.copyWith(unreadCount: 0);
          final updatedConversations = List.of(conversations);
          updatedConversations[index] = updated;
          emit(
            state.copyWith(
              isMarkingRead: false,
              message: 'Conversation marked as read',
              conversations: updatedConversations,
            ),
          );
        } else {
          emit(
            state.copyWith(
              isMarkingRead: false,
              message: 'Conversation marked as read',
            ),
          );
        }
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

    logi('Starting realtime watch for conversation: $conversationId',
        tag: _logTag);

    emit(
      state.copyWith(
        isWatching: true,
        watchError: null,
        conversationId: conversationId,
      ),
    );

    _watchSub = watchNewMessagesUseCase(conversationId: conversationId).listen(
      (either) {
        either.fold((failure) {
          loge('Realtime watch error: ${failure.message}', tag: _logTag);
          add(WatchMessageErrorEvent(failure.message));
        }, (
          realtimeEvent,
        ) {
          final message = realtimeEvent.message;
          logi(
              'Realtime event received: ${realtimeEvent.isInsert ? "INSERT" : "UPDATE"} for message ${message.id}',
              tag: _logTag);

          // Use event type from Postgres realtime to determine action
          if (realtimeEvent.isInsert) {
            // New message inserted - add to list if not already exists
            add(WatchMessageArrivedEvent(message));
          } else if (realtimeEvent.isUpdate) {
            // Message updated - could be edit or soft delete
            if (message.deletedAt != null) {
              add(WatchMessageDeletedEvent(message));
            } else {
              add(WatchMessageUpdatedEvent(message));
            }
          }
        });
      },
      onError: (error, stack) {
        loge('Realtime stream error: $error', tag: _logTag);
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
    if (exists) {
      logi(
        'Realtime ARRIVE (duplicate) id=${incoming.id} kind=${incoming.kind} deletedAt=${incoming.deletedAt} - skipping insert',
        tag: _logTag,
      );
      return;
    }

    // Insert new message (realtime)
    logi(
      'Realtime ARRIVE id=${incoming.id} kind=${incoming.kind} deletedAt=${incoming.deletedAt}',
      tag: _logTag,
    );
    emit(state.copyWith(messages: [incoming, ...state.messages]));

    // Update conversation list locally for real-time sync
    // Only if we have the conversation in our list
    if (state.conversationId != null) {
      // Determine message preview text
      String messagePreview;
      switch (incoming.kind) {
        case 'image':
          messagePreview = '📷 Photo';
        case 'video':
          messagePreview = '🎬 Video';
        case 'audio':
          messagePreview = '🎵 Audio';
        case 'document':
          messagePreview = '📎 Document';
        case 'poll':
          messagePreview = '📊 Poll';
        case 'event':
          messagePreview = '📅 Event';
        default:
          messagePreview = incoming.body ?? '';
      }

      // Check if message is from current user
      final currentUserId = Supabase.instance.client.auth.currentUser?.id;
      final isFromMe = incoming.senderId == currentUserId;

      add(UpdateConversationLocallyEvent(
        conversationId: state.conversationId!,
        lastMessageBody: messagePreview,
        lastMessageAt: incoming.createdAt,
        lastMessageSenderId: incoming.senderId,
        // Increment unread only if message is not from current user
        unreadCountDelta: isFromMe ? 0 : 1,
      ));
    }
  }

  Future<void> _onWatchMessageUpdated(
    WatchMessageUpdatedEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final updated = event.message;
    logi(
      'Realtime UPDATE id=${updated.id} kind=${updated.kind} deletedAt=${updated.deletedAt}',
      tag: _logTag,
    );

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

    logi(
      'Realtime DELETE id=${deleted.id} kind=${deleted.kind} deletedAt=${deleted.deletedAt}',
      tag: _logTag,
    );

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

  Future<void> _onRefreshConversationList(
    RefreshConversationListEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    // Silent refresh - no loading indicator
    final result = await getConversationListUseCase();
    result.fold(
      (failure) {
        loge('$_logTag: refreshConversationList error', error: failure);
      },
      (conversations) => emit(
        state.copyWith(
          conversations: conversations,
          conversationsError: null,
        ),
      ),
    );
  }

  Future<void> _onUpdateConversationLocally(
    UpdateConversationLocallyEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    final conversations = state.conversations;
    final index = conversations.indexWhere(
      (c) => c.conversationId == event.conversationId,
    );

    if (index == -1) {
      // Conversation not found, trigger refresh to get it
      add(const RefreshConversationListEvent());
      return;
    }

    final existing = conversations[index];
    final updated = existing.copyWith(
      lastMessageBody: event.lastMessageBody ?? existing.lastMessageBody,
      lastMessageAt: event.lastMessageAt ?? existing.lastMessageAt,
      lastMessageSenderId:
          event.lastMessageSenderId ?? existing.lastMessageSenderId,
      unreadCount: event.unreadCountDelta != null
          ? existing.unreadCount + event.unreadCountDelta!
          : existing.unreadCount,
    );

    // Move updated conversation to top and emit
    final updatedConversations = [
      updated,
      ...conversations.where((c) => c.conversationId != event.conversationId),
    ];

    emit(state.copyWith(conversations: updatedConversations));
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

  /// Batch mark messages as read - more efficient for scroll-based reading
  Future<void> _onMarkMessagesReadBatch(
    MarkMessagesReadBatchEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    if (event.messageIds.isEmpty) return;

    final result = await markMessagesReadBatchUseCase(
      messageIds: event.messageIds,
    );
    result.fold(
      (failure) {
        loge('$_logTag: markMessagesReadBatch error', error: failure);
        emit(state.copyWith(readsError: failure.message));
      },
      (count) {
        logi('$_logTag: Batch marked $count messages as read');
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

    _typingWatchSub = watchTypingIndicatorsUseCase(
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

  // =========================================================
  // POLL VOTING HANDLERS
  // =========================================================

  Future<void> _onVotePoll(
    VotePollEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    logi(
        '$_logTag: voting on poll ${event.pollMessageId}, option ${event.optionId}');

    final result = await votePollOptionUseCase(
      pollMessageId: event.pollMessageId,
      optionId: event.optionId,
    );

    result.fold(
      (failure) {
        loge('$_logTag: votePoll error', error: failure);
        emit(state.copyWith(errorMessage: failure.message));
      },
      (_) {
        logi('$_logTag: vote successful, refreshing messages');
        // Note: In a full implementation, you might want to emit an optimistic
        // update or trigger a message refresh to get updated vote counts
      },
    );
  }

  Future<void> _onUnvotePoll(
    UnvotePollEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    logi('$_logTag: removing vote from option ${event.optionId}');

    final result = await unvotePollOptionUseCase(optionId: event.optionId);

    result.fold(
      (failure) {
        loge('$_logTag: unvotePoll error', error: failure);
        emit(state.copyWith(errorMessage: failure.message));
      },
      (_) {
        logi('$_logTag: vote removed successfully');
      },
    );
  }

  // =========================================================
  // EVENT RSVP HANDLERS
  // =========================================================

  Future<void> _onRespondToEvent(
    RespondToEventEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    logi(
        '$_logTag: responding to event ${event.eventMessageId} with ${event.status}');

    final result = await respondToEventUseCase(
      eventMessageId: event.eventMessageId,
      status: event.status,
    );

    result.fold(
      (failure) {
        loge('$_logTag: respondToEvent error', error: failure);
        emit(state.copyWith(errorMessage: failure.message));
      },
      (_) {
        logi('$_logTag: RSVP response successful');
      },
    );
  }

  Future<void> _onCancelEventRsvp(
    CancelEventRsvpEvent event,
    Emitter<ChatMessageState> emit,
  ) async {
    logi('$_logTag: cancelling RSVP for event ${event.eventMessageId}');

    final result = await cancelEventRsvpUseCase(
      eventMessageId: event.eventMessageId,
    );

    result.fold(
      (failure) {
        loge('$_logTag: cancelEventRsvp error', error: failure);
        emit(state.copyWith(errorMessage: failure.message));
      },
      (_) {
        logi('$_logTag: RSVP cancelled successfully');
      },
    );
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
