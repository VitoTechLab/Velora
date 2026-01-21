import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';

/// Service untuk mengelola queue post offline
/// Posts akan disimpan di local storage dan di-sync saat online
class PostOfflineQueueService {
  PostOfflineQueueService({required SharedPreferences prefs}) : _prefs = prefs;

  final SharedPreferences _prefs;
  static const String _queueKey = 'offline_post_queue';
  static const String _logTag = 'PostOfflineQueue';

  /// Tambahkan post ke queue offline
  Future<String> addToQueue(PostFeedEntity post) async {
    try {
      final queue = await getQueue();
      
      // Generate unique ID untuk post offline (temporary ID)
      final tempId = 'offline_${DateTime.now().millisecondsSinceEpoch}';
      
      final queueItem = OfflinePostQueueItem(
        tempId: tempId,
        post: post,
        createdAt: DateTime.now(),
        retryCount: 0,
      );

      queue.add(queueItem);
      await _saveQueue(queue);
      
      logi('Added post to offline queue: $tempId', tag: _logTag);
      return tempId;
    } catch (e) {
      loge('Failed to add post to queue', error: e, tag: _logTag);
      rethrow;
    }
  }

  /// Ambil semua post dari queue
  Future<List<OfflinePostQueueItem>> getQueue() async {
    try {
      final jsonString = _prefs.getString(_queueKey);
      if (jsonString == null || jsonString.isEmpty) {
        return [];
      }

      final List<dynamic> jsonList = json.decode(jsonString);
      return jsonList
          .map((json) => OfflinePostQueueItem.fromJson(json))
          .toList();
    } catch (e) {
      loge('Failed to load queue', error: e, tag: _logTag);
      return [];
    }
  }

  /// Hapus post dari queue setelah berhasil di-sync
  Future<void> removeFromQueue(String tempId) async {
    try {
      final queue = await getQueue();
      queue.removeWhere((item) => item.tempId == tempId);
      await _saveQueue(queue);
      logi('Removed post from queue: $tempId', tag: _logTag);
    } catch (e) {
      loge('Failed to remove from queue', error: e, tag: _logTag);
    }
  }

  /// Update retry count untuk post yang gagal
  Future<void> incrementRetryCount(String tempId) async {
    try {
      final queue = await getQueue();
      final index = queue.indexWhere((item) => item.tempId == tempId);
      if (index != -1) {
        queue[index] = queue[index].copyWith(
          retryCount: queue[index].retryCount + 1,
        );
        await _saveQueue(queue);
      }
    } catch (e) {
      loge('Failed to increment retry count', error: e, tag: _logTag);
    }
  }

  /// Hapus post yang sudah terlalu banyak retry (failed permanently)
  Future<void> removeFailed(int maxRetries) async {
    try {
      final queue = await getQueue();
      final before = queue.length;
      queue.removeWhere((item) => item.retryCount >= maxRetries);
      final after = queue.length;
      
      if (before != after) {
        await _saveQueue(queue);
        logi('Removed ${before - after} failed posts from queue', tag: _logTag);
      }
    } catch (e) {
      loge('Failed to remove failed posts', error: e, tag: _logTag);
    }
  }

  /// Clear semua queue (untuk debugging atau reset)
  Future<void> clearQueue() async {
    try {
      await _prefs.remove(_queueKey);
      logi('Cleared offline queue', tag: _logTag);
    } catch (e) {
      loge('Failed to clear queue', error: e, tag: _logTag);
    }
  }

  /// Cek apakah ada post dalam queue
  Future<bool> hasQueuedPosts() async {
    final queue = await getQueue();
    return queue.isNotEmpty;
  }

  /// Get jumlah post dalam queue
  Future<int> getQueueCount() async {
    final queue = await getQueue();
    return queue.length;
  }

  /// Simpan queue ke SharedPreferences
  Future<void> _saveQueue(List<OfflinePostQueueItem> queue) async {
    try {
      final jsonList = queue.map((item) => item.toJson()).toList();
      final jsonString = json.encode(jsonList);
      await _prefs.setString(_queueKey, jsonString);
    } catch (e) {
      loge('Failed to save queue', error: e, tag: _logTag);
      rethrow;
    }
  }
}

/// Model untuk item dalam offline queue
class OfflinePostQueueItem {
  final String tempId;
  final PostFeedEntity post;
  final DateTime createdAt;
  final int retryCount;

  const OfflinePostQueueItem({
    required this.tempId,
    required this.post,
    required this.createdAt,
    required this.retryCount,
  });

  OfflinePostQueueItem copyWith({
    String? tempId,
    PostFeedEntity? post,
    DateTime? createdAt,
    int? retryCount,
  }) {
    return OfflinePostQueueItem(
      tempId: tempId ?? this.tempId,
      post: post ?? this.post,
      createdAt: createdAt ?? this.createdAt,
      retryCount: retryCount ?? this.retryCount,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tempId': tempId,
      'post': {
        'userId': post.userId,
        'content': post.content,
        'mediaUrls': post.mediaUrls,
        'tags': post.tags,
        'mentionIds': post.mentionIds,
        'location': post.location,
        'allowComments': post.allowComments,
        'allowShare': post.allowShare,
        'campaignTitle': post.campaignTitle,
      },
      'createdAt': createdAt.toIso8601String(),
      'retryCount': retryCount,
    };
  }

  factory OfflinePostQueueItem.fromJson(Map<String, dynamic> json) {
    final postData = json['post'] as Map<String, dynamic>;
    return OfflinePostQueueItem(
      tempId: json['tempId'] as String,
      post: PostFeedEntity(
        userId: postData['userId'] as String,
        content: postData['content'] as String,
        mediaUrls: List<String>.from(postData['mediaUrls'] ?? []),
        tags: List<String>.from(postData['tags'] ?? []),
        mentionIds: List<String>.from(postData['mentionIds'] ?? []),
        location: postData['location'] as Map<String, dynamic>?,
        allowComments: postData['allowComments'] as bool? ?? true,
        allowShare: postData['allowShare'] as bool? ?? true,
        campaignTitle: postData['campaignTitle'] as String?,
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      retryCount: json['retryCount'] as int,
    );
  }
}
