import 'package:meta/meta.dart';

/// Raw model for search_users() RPC result
@immutable
class SearchUserResultModel {
  const SearchUserResultModel({
    required this.id,
    required this.username,
    required this.fullName,
    required this.avatarUrl,
    required this.isVerified,
    required this.isFollowing,
    required this.relationship,
  });

  final String id;
  final String username;
  final String fullName;
  final String? avatarUrl;
  final bool isVerified;
  final bool isFollowing;
  final String relationship;

  factory SearchUserResultModel.fromJson(Map<String, dynamic> json) {
    return SearchUserResultModel(
      id: json['id'] as String,
      username: json['username'] as String,
      fullName: (json['full_name'] as String?) ?? '',
      avatarUrl: json['avatar_url'] as String?,
      isVerified: (json['is_verified'] as bool?) ?? false,
      isFollowing: (json['is_following'] as bool?) ?? false,
      relationship: (json['relationship'] as String?) ?? 'none',
    );
  }
}
