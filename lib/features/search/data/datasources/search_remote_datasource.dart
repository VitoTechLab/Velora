import 'package:velora/features/search/data/models/search_campaign_result_model.dart';
import 'package:velora/features/search/data/models/search_user_result_model.dart';

/// Abstract contract for search-related remote operations
abstract class SearchRemoteDataSource {
  /// Search user profiles using the `search_users` RPC
  ///
  /// [scope] can be: 'global', 'following', or 'followers'.
  Future<List<SearchUserResultModel>> searchUsers({
    required String query,
    String scope = 'global',
    int limit = 10,
  });

  /// Search campaigns using the `search_campaigns` RPC
  ///
  /// [categoryId] is optional filter; when null, all categories are searched.
  Future<List<SearchCampaignResultModel>> searchCampaigns({
    required String query,
    String? categoryId,
    int limit = 10,
  });
}
