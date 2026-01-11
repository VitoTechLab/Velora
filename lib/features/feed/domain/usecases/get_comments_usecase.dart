import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Fetches comments for a post with pagination.
class GetCommentsUseCase {
  const GetCommentsUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, CommentPaginationResult>> call({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  }) {
    return repository.getComments(postId: postId, limit: limit, cursor: cursor);
  }
}
