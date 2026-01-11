import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/post/data/models/post_feed_model.dart';

/// Remote datasource interface for post operations
abstract class PostRemoteDataSource {
  /// Create new feed post in Supabase
  Future<FeedModel> createFeedPost(PostFeedModel payload);
}
