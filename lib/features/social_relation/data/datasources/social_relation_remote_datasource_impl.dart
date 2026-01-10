import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/social_relation/data/models/blocked_user_model.dart';
import 'package:velora/features/social_relation/data/models/follow_request_model.dart';
import 'package:velora/features/social_relation/data/models/muted_user_model.dart';
import 'package:velora/features/social_relation/data/models/restricted_user_model.dart';
import 'social_relation_remote_datasource.dart';

class SocialRelationRemoteDataSourceImpl
    implements SocialRelationRemoteDataSource {
  SocialRelationRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;

  static const _logTag = 'SocialRelationDataSource';

  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw UnauthenticatedException();
    }
    return userId;
  }

  // ========== FOLLOW OPERATIONS ==========

  @override
  Future<void> followUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Following user: $targetUserId', tag: _logTag);

        await _client.from(SupabaseTables.userFollows).insert({
          'follower_id': currentUserId,
          'following_id': targetUserId,
        });
      },
      op: 'followUser',
      tag: _logTag,
    );
  }

  @override
  Future<void> unfollowUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Unfollowing user: $targetUserId', tag: _logTag);

        await _client
            .from(SupabaseTables.userFollows)
            .delete()
            .filter('follower_id', 'eq', currentUserId)
            .filter('following_id', 'eq', targetUserId);
      },
      op: 'unfollowUser',
      tag: _logTag,
    );
  }

  @override
  Future<bool> checkIfFollowing(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Checking if following: $targetUserId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userFollows)
            .select('follower_id')
            .filter('follower_id', 'eq', currentUserId)
            .filter('following_id', 'eq', targetUserId)
            .maybeSingle();

        return response != null;
      },
      op: 'checkIfFollowing',
      tag: _logTag,
    );
  }

  @override
  Future<List<String>> getFollowingUserIds() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching following user IDs', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userFollows)
            .select('following_id')
            .filter('follower_id', 'eq', currentUserId);

        return (response as List)
            .map((item) => item['following_id'] as String)
            .toList();
      },
      op: 'getFollowingUserIds',
      tag: _logTag,
    );
  }

  // ========== FOLLOW REQUEST OPERATIONS ==========

  @override
  Future<void> sendFollowRequest(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Sending follow request to: $targetUserId', tag: _logTag);

        await _client.from(SupabaseTables.userFollowRequests).insert({
          'requester_id': currentUserId,
          'target_id': targetUserId,
          'status': 'pending',
        });
      },
      op: 'sendFollowRequest',
      tag: _logTag,
    );
  }

  @override
  Future<void> cancelFollowRequest(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Canceling follow request to: $targetUserId', tag: _logTag);

        await _client
            .from(SupabaseTables.userFollowRequests)
            .delete()
            .filter('requester_id', 'eq', currentUserId)
            .filter('target_id', 'eq', targetUserId);
      },
      op: 'cancelFollowRequest',
      tag: _logTag,
    );
  }

  @override
  Future<void> acceptFollowRequest(String requesterId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Accepting follow request from: $requesterId', tag: _logTag);

        // Update status to accepted
        await _client
            .from('user_follow_requests')
            .update({'status': 'accepted'})
            .filter('requester_id', 'eq', requesterId)
            .filter('target_id', 'eq', currentUserId);

        // Create follow relationship
        await _client.from(SupabaseTables.userFollows).insert({
          'follower_id': requesterId,
          'following_id': currentUserId,
        });

        // Delete the request
        await _client
            .from('user_follow_requests')
            .delete()
            .filter('requester_id', 'eq', requesterId)
            .filter('target_id', 'eq', currentUserId);
      },
      op: 'acceptFollowRequest',
      tag: _logTag,
    );
  }

  @override
  Future<void> rejectFollowRequest(String requesterId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Rejecting follow request from: $requesterId', tag: _logTag);

        await _client
            .from(SupabaseTables.userFollowRequests)
            .delete()
            .filter('requester_id', 'eq', requesterId)
            .filter('target_id', 'eq', currentUserId);
      },
      op: 'rejectFollowRequest',
      tag: _logTag,
    );
  }

  @override
  Future<List<FollowRequestModel>> getPendingFollowRequests() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching pending follow requests', tag: _logTag);

        final response = await _client
            .from('user_follow_requests')
            .select('''
              requester_id,
              target_id,
              created_at,
              status,
              requester:user_profiles!user_follow_requests_requester_id_fkey(
                username,
                photo_url,
                full_name
              )
            ''')
            .filter('target_id', 'eq', currentUserId)
            .filter('status', 'eq', 'pending')
            .order('created_at', ascending: false);

        return (response as List).map((json) {
          // Flatten joined data
          final requester = json['requester'];
          return FollowRequestModel.fromJson({
            ...json,
            'requester_username': requester?['username'],
            'requester_photo_url': requester?['photo_url'],
            'requester_full_name': requester?['full_name'],
          });
        }).toList();
      },
      op: 'getPendingFollowRequests',
      tag: _logTag,
    );
  }

  @override
  Future<List<FollowRequestModel>> getSentFollowRequests() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching sent follow requests', tag: _logTag);

        final response = await _client
            .from('user_follow_requests')
            .select('''
              requester_id,
              target_id,
              created_at,
              status,
              target:user_profiles!user_follow_requests_target_id_fkey(
                username,
                photo_url,
                full_name
              )
            ''')
            .filter('requester_id', 'eq', currentUserId)
            .filter('status', 'eq', 'pending')
            .order('created_at', ascending: false);

        return (response as List).map((json) {
          final target = json['target'];
          return FollowRequestModel.fromJson({
            ...json,
            'target_username': target?['username'],
            'target_photo_url': target?['photo_url'],
            'target_full_name': target?['full_name'],
          });
        }).toList();
      },
      op: 'getSentFollowRequests',
      tag: _logTag,
    );
  }

  @override
  Future<bool> checkIfFollowRequestPending(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Checking follow request status for: $targetUserId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userFollowRequests)
            .select('requester_id')
            .filter('requester_id', 'eq', currentUserId)
            .filter('target_id', 'eq', targetUserId)
            .filter('status', 'eq', 'pending')
            .maybeSingle();

        return response != null;
      },
      op: 'checkIfFollowRequestPending',
      tag: _logTag,
    );
  }

  // ========== BLOCK OPERATIONS ==========

  @override
  Future<void> blockUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Blocking user: $targetUserId', tag: _logTag);

        await _client.from(SupabaseTables.userBlocks).insert({
          'blocker_id': currentUserId,
          'blocked_id': targetUserId,
        });
      },
      op: 'blockUser',
      tag: _logTag,
    );
  }

  @override
  Future<void> unblockUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Unblocking user: $targetUserId', tag: _logTag);

        await _client
            .from(SupabaseTables.userBlocks)
            .delete()
            .filter('blocker_id', 'eq', currentUserId)
            .filter('blocked_id', 'eq', targetUserId);
      },
      op: 'unblockUser',
      tag: _logTag,
    );
  }

  @override
  Future<bool> checkIfBlocked(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Checking if blocked: $targetUserId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userBlocks)
            .select('blocker_id')
            .filter('blocker_id', 'eq', currentUserId)
            .filter('blocked_id', 'eq', targetUserId)
            .maybeSingle();

        return response != null;
      },
      op: 'checkIfBlocked',
      tag: _logTag,
    );
  }

  @override
  Future<List<BlockedUserModel>> getBlockedUsers() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching blocked users', tag: _logTag);

        final response = await _client
            .from('user_blocks')
            .select('''
              blocker_id,
              blocked_id,
              created_at,
              blocked:user_profiles!user_blocks_blocked_id_fkey(
                username,
                photo_url,
                full_name
              )
            ''')
            .filter('blocker_id', 'eq', currentUserId)
            .order('created_at', ascending: false);

        return (response as List).map((json) {
          final blocked = json['blocked'];
          return BlockedUserModel.fromJson({
            ...json,
            'blocked_username': blocked?['username'],
            'blocked_photo_url': blocked?['photo_url'],
            'blocked_full_name': blocked?['full_name'],
          });
        }).toList();
      },
      op: 'getBlockedUsers',
      tag: _logTag,
    );
  }

  // ========== MUTE OPERATIONS ==========

  @override
  Future<void> muteUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Muting user: $targetUserId', tag: _logTag);

        await _client.from(SupabaseTables.userMutes).insert({
          'muter_id': currentUserId,
          'muted_id': targetUserId,
        });
      },
      op: 'muteUser',
      tag: _logTag,
    );
  }

  @override
  Future<void> unmuteUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Unmuting user: $targetUserId', tag: _logTag);

        await _client
            .from(SupabaseTables.userMutes)
            .delete()
            .filter('muter_id', 'eq', currentUserId)
            .filter('muted_id', 'eq', targetUserId);
      },
      op: 'unmuteUser',
      tag: _logTag,
    );
  }

  @override
  Future<bool> checkIfMuted(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Checking if muted: $targetUserId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userMutes)
            .select('muter_id')
            .filter('muter_id', 'eq', currentUserId)
            .filter('muted_id', 'eq', targetUserId)
            .maybeSingle();

        return response != null;
      },
      op: 'checkIfMuted',
      tag: _logTag,
    );
  }

  @override
  Future<List<MutedUserModel>> getMutedUsers() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching muted users', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userMutes)
            .select('''
              muter_id,
              muted_id,
              created_at,
              muted:user_profiles!user_mutes_muted_id_fkey(
                username,
                photo_url,
                full_name
              )
            ''')
            .filter('muter_id', 'eq', currentUserId)
            .order('created_at', ascending: false);

        return (response as List).map((json) {
          final muted = json['muted'];
          return MutedUserModel.fromJson({
            ...json,
            'muted_username': muted?['username'],
            'muted_photo_url': muted?['photo_url'],
            'muted_full_name': muted?['full_name'],
          });
        }).toList();
      },
      op: 'getMutedUsers',
      tag: _logTag,
    );
  }

  // ========== RESTRICT OPERATIONS ==========

  @override
  Future<void> restrictUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Restricting user: $targetUserId', tag: _logTag);

        await _client.from(SupabaseTables.userRestricts).insert({
          'restrictor_id': currentUserId,
          'restricted_id': targetUserId,
        });
      },
      op: 'restrictUser',
      tag: _logTag,
    );
  }

  @override
  Future<void> unrestrictUser(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Unrestricting user: $targetUserId', tag: _logTag);

        await _client
            .from(SupabaseTables.userRestricts)
            .delete()
            .filter('restrictor_id', 'eq', currentUserId)
            .filter('restricted_id', 'eq', targetUserId);
      },
      op: 'unrestrictUser',
      tag: _logTag,
    );
  }

  @override
  Future<bool> checkIfRestricted(String targetUserId) {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Checking if restricted: $targetUserId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userRestricts)
            .select('restrictor_id')
            .filter('restrictor_id', 'eq', currentUserId)
            .filter('restricted_id', 'eq', targetUserId)
            .maybeSingle();

        return response != null;
      },
      op: 'checkIfRestricted',
      tag: _logTag,
    );
  }

  @override
  Future<List<RestrictedUserModel>> getRestrictedUsers() {
    return guardSupabase(
      () async {
        final currentUserId = _requireUserId();
        logi('Fetching restricted users', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.userRestricts)
            .select('''
              restrictor_id,
              restricted_id,
              created_at,
              restricted:user_profiles!user_restricts_restricted_id_fkey(
                username,
                photo_url,
                full_name
              )
            ''')
            .filter('restrictor_id', 'eq', currentUserId)
            .order('created_at', ascending: false);

        return (response as List).map((json) {
          final restricted = json['restricted'];
          return RestrictedUserModel.fromJson({
            ...json,
            'restricted_username': restricted?['username'],
            'restricted_photo_url': restricted?['photo_url'],
            'restricted_full_name': restricted?['full_name'],
          });
        }).toList();
      },
      op: 'getRestrictedUsers',
      tag: _logTag,
    );
  }
}
