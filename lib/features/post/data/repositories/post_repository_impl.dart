import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/models/post_feed_model.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  const PostRepositoryImpl({required this.remoteDataSource});

  final PostRemoteDataSource remoteDataSource;

  static const _logTag = 'PostRepository';

  @override
  Future<Either<Failure, FeedEntity>> createFeedPost({
    required PostFeedEntity post,
  }) async {
    try {
      logi('createFeedPost - User: ${post.userId}', tag: _logTag);
      final payload = PostFeedModel(
        userId: post.userId,
        content: post.content,
        mediaUrls: post.mediaUrls,
        tags: post.tags,
        mentionIds: post.mentionIds,
        location: post.location,
        allowComments: post.allowComments,
        allowShare: post.allowShare,
        campaignTitle: post.campaignTitle,
      );
      final result = await remoteDataSource.createFeedPost(payload);
      return Right(result.toEntity());
    } catch (e) {
      loge('createFeedPost failed', error: e, tag: _logTag);
      return Left(Failure.fromException(e));
    }
  }
}
