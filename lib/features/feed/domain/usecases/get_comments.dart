import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Loads comments for a feed post, optionally with a limit.
class GetComments {
  final FeedRepository repository;

  GetComments(this.repository);

  Future<Either<Failure, CommentPaginationResult>> call({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  }) {
    return repository.getComments(postId: postId, limit: limit, cursor: cursor);
  }
}
