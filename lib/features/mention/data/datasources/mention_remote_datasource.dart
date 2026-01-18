import '../models/mention_model.dart';

abstract class MentionRemoteDataSource {
  /// Fetches mentions for the current authenticated user.
  ///
  /// [page] is 1-based index (e.g. 1, 2, 3...)
  /// [limit] is the number of items per page.
  Future<List<MentionModel>> getMyMentions({
    int page = 1,
    int limit = 20,
  });

  /// Fetches mentions for a specific entity (e.g. who is mentioned in this post).
  Future<List<MentionModel>> getMentionsForEntity({
    required String entityType,
    required String entityId,
  });
}
