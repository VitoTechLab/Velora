import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Use case to fetch replies for a root comment.
class GetRepliesUseCase {
  GetRepliesUseCase({required this.repository});

  final FeedRepository repository;

  Future<Either<Failure, List<CommentEntity>>> call({
    required String parentCommentId,
  }) {
    return repository.getReplies(parentCommentId: parentCommentId);
  }
}
