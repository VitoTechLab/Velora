import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/models/create_post_model.dart';
import 'package:velora/features/post/domain/entities/create_post_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, FeedEntity>> createPost({
    required CreatePostEntity post,
  }) async {
    try {
      logi('[POST REPOSITORY] createPost - User: ${post.userId}');
      final payload = CreatePostModel(
        userId: post.userId,
        content: post.content,
        imageUrls: post.imageUrls,
        videoUrls: post.videoUrls,
        commentsEnabled: post.commentsEnabled,
        hideLikeCount: post.hideLikeCount,
        hideCommentCount: post.hideCommentCount,
        hideShareCount: post.hideShareCount,
        hideLikesList: post.hideLikesList,
        campaignId: post.campaignId,
        campaignTitle: post.campaignTitle,
      );
      final result = await remoteDataSource.createPost(payload);
      return Right(result.toEntity());
    } catch (e) {
      loge('[POST REPOSITORY ERROR] createPost', error: e);
      return Left(Failure.fromException(e));
    }
  }
}
