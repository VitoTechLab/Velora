import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';
import 'package:velora/features/post/domain/usecases/create_post_feed_usecase.dart';
import 'package:velora/features/post/services/post_offline_queue_service.dart';
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({
    required this.createPostFeedUseCase,
    required this.queueService,
    required this.connectivityService,
  }) : super(const PostState()) {
    on<CreatePostEvent>(_onCreatePost);
    on<ClearPostTransientEvent>((event, emit) {
      emit(state.copyWith(errorCreatePost: null, message: null));
    });
  }

  final CreatePostFeedUseCase createPostFeedUseCase;
  final PostOfflineQueueService queueService;
  final ConnectivityService connectivityService;

  static const _logTag = 'PostBloc';
  static const int _maxPostContentLength = 2000;

  String? _validatePostContent(String content) {
    final trimmed = content.trim();
    if (trimmed.isEmpty) return 'Post content cannot be empty';
    if (trimmed.length > _maxPostContentLength) {
      return 'Post content is too long (max $_maxPostContentLength characters)';
    }
    return null;
  }

  /// Helper untuk membuat FeedEntity dari PostFeedEntity untuk offline mode
  FeedEntity _createOfflineFeedEntity(PostFeedEntity post, String tempId) {
    return FeedEntity(
      id: tempId,
      userId: post.userId,
      content: post.content,
      createdAt: DateTime.now(),
      mediaUrls: post.mediaUrls,
      tags: post.tags,
      mentionIds: post.mentionIds,
      location: post.location,
      allowComments: post.allowComments,
      allowShare: post.allowShare,
      campaignTitle: post.campaignTitle,
      // Offline post tidak punya data user lengkap, akan diupdate setelah sync
      username: null,
      photoUrl: null,
      isMe: true,
    );
  }

  Future<void> _onCreatePost(
    CreatePostEvent event,
    Emitter<PostState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) {
      emit(state.copyWith(errorCreatePost: 'User id is required'));
      return;
    }

    final contentError = _validatePostContent(event.content);
    if (contentError != null) {
      emit(state.copyWith(errorCreatePost: contentError));
      return;
    }

    emit(
      state.copyWith(
        isCreatingPost: true,
        errorCreatePost: null,
        createdPost: null,
        message: null,
      ),
    );

    // Check connectivity
    final isOnline = connectivityService.hasInternet;

    if (!isOnline) {
      // Offline mode: Tambahkan ke queue
      try {
        final postEntity = event.toPostEntity();
        final tempId = await queueService.addToQueue(postEntity);
        
        // Create FeedEntity with temp ID untuk tampil di UI
        final offlinePost = _createOfflineFeedEntity(postEntity, tempId);
        
        logi(
          'Post queued for offline sync: $tempId',
          tag: _logTag,
        );
        
        emit(
          state.copyWith(
            isCreatingPost: false,
            createdPost: offlinePost,
            message: 'Post saved. Will be uploaded when online.',
          ),
        );
        return;
      } catch (e) {
        loge('Failed to queue post', error: e, tag: _logTag);
        emit(
          state.copyWith(
            isCreatingPost: false,
            errorCreatePost: 'Failed to save post for offline sync',
          ),
        );
        return;
      }
    }

    // Online mode: Upload immediately
    final result = await createPostFeedUseCase(
      userId: userId,
      content: event.content.trim(),
      mediaUrls: event.mediaUrls,
      tags: event.tags,
      mentionIds: event.mentionIds,
      location: event.location,
      allowComments: event.allowComments,
      allowShare: event.allowShare,
      campaignTitle: event.campaignTitle,
    );

    result.fold(
      (failure) async {
        loge('Create post failed: ${failure.message}', tag: _logTag);
        
        // Jika gagal karena network, simpan ke queue
        if (failure.message.contains('network') ||
            failure.message.contains('connection') ||
            failure.message.contains('timeout')) {
          try {
            final postEntity = event.toPostEntity();
            final tempId = await queueService.addToQueue(postEntity);
            
            // Create FeedEntity with temp ID untuk tampil di UI
            final offlinePost = _createOfflineFeedEntity(postEntity, tempId);
            
            emit(
              state.copyWith(
                isCreatingPost: false,
                createdPost: offlinePost,
                message: 'Connection issue. Post queued for upload.',
              ),
            );
          } catch (e) {
            emit(
              state.copyWith(
                isCreatingPost: false,
                errorCreatePost: failure.message,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              isCreatingPost: false,
              errorCreatePost: failure.message,
            ),
          );
        }
      },
      (post) {
        logi('Post created id=${post.id}', tag: _logTag);
        emit(
          state.copyWith(
            isCreatingPost: false,
            createdPost: post,
            message: 'Post created successfully',
          ),
        );
      },
    );
  }
}
