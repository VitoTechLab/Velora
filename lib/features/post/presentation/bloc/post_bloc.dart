import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/post/domain/usecases/create_post_feed_usecase.dart';
import 'post_event.dart';
import 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.createPostFeedUseCase}) : super(const PostState()) {
    on<CreatePostEvent>(_onCreatePost);
    on<ClearPostTransientEvent>((event, emit) {
      emit(state.copyWith(errorCreatePost: null, message: null));
    });
  }

  final CreatePostFeedUseCase createPostFeedUseCase;

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
      (failure) {
        loge('Create post failed: ${failure.message}', tag: _logTag);
        emit(
          state.copyWith(
            isCreatingPost: false,
            errorCreatePost: failure.message,
          ),
        );
      },
      (post) {
        logi('Post created id=${post.id}', tag: _logTag);
        emit(
          state.copyWith(
            isCreatingPost: false,
            createdPost: post,
            message: 'Post created',
          ),
        );
      },
    );
  }
}
