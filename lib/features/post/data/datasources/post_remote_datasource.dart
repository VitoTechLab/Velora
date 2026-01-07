import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/post/data/models/create_post_model.dart';

abstract class PostRemoteDataSource {
  Future<FeedModel> createPost(CreatePostModel payload);
}
