import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

class WatchNewComments {
  WatchNewComments(this.repository);

  final FeedRepository repository;

  Stream<Either<Failure, CommentEntity>> call({required String postId}) {
    return repository.watchNewComments(postId: postId);
  }
}
