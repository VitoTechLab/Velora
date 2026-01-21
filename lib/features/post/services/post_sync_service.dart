import 'dart:async';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';
import 'package:velora/features/post/services/post_offline_queue_service.dart';

/// Service untuk auto-sync post offline ke server saat online
class PostSyncService {
  PostSyncService({
    required PostOfflineQueueService queueService,
    required PostRepository repository,
    required ConnectivityService connectivityService,
  })  : _queueService = queueService,
        _repository = repository,
        _connectivityService = connectivityService;

  final PostOfflineQueueService _queueService;
  final PostRepository _repository;
  final ConnectivityService _connectivityService;

  StreamSubscription<bool>? _connectivitySubscription;
  bool _isSyncing = false;
  static const int _maxRetries = 3;
  static const String _logTag = 'PostSyncService';

  /// Stream untuk notify sync status
  final _syncStatusController = StreamController<PostSyncStatus>.broadcast();
  Stream<PostSyncStatus> get syncStatus => _syncStatusController.stream;

  /// Start listening untuk connectivity changes dan auto-sync
  void startAutoSync() {
    logi('Starting auto-sync service', tag: _logTag);
    
    _connectivitySubscription?.cancel();
    _connectivitySubscription = _connectivityService.connectionChange.listen(
      (hasConnection) {
        if (hasConnection) {
          logi('Connection restored, starting sync...', tag: _logTag);
          syncQueuedPosts();
        }
      },
    );

    // Sync immediately if online
    if (_connectivityService.hasInternet) {
      syncQueuedPosts();
    }
  }

  /// Stop auto-sync service
  void stopAutoSync() {
    logi('Stopping auto-sync service', tag: _logTag);
    _connectivitySubscription?.cancel();
    _connectivitySubscription = null;
  }

  /// Sync semua post dalam queue
  Future<void> syncQueuedPosts() async {
    if (_isSyncing) {
      logi('Sync already in progress, skipping', tag: _logTag);
      return;
    }

    if (!_connectivityService.hasInternet) {
      logi('No internet connection, skipping sync', tag: _logTag);
      return;
    }

    try {
      _isSyncing = true;
      final queue = await _queueService.getQueue();

      if (queue.isEmpty) {
        logi('Queue is empty, nothing to sync', tag: _logTag);
        _syncStatusController.add(PostSyncStatus.idle());
        return;
      }

      logi('Starting sync of ${queue.length} posts', tag: _logTag);
      _syncStatusController.add(
        PostSyncStatus.syncing(total: queue.length, current: 0),
      );

      int successCount = 0;
      int failedCount = 0;

      for (var i = 0; i < queue.length; i++) {
        final item = queue[i];

        if (item.retryCount >= _maxRetries) {
          loge(
            'Post ${item.tempId} exceeded max retries, skipping',
            tag: _logTag,
          );
          await _queueService.removeFromQueue(item.tempId);
          failedCount++;
          continue;
        }

        _syncStatusController.add(
          PostSyncStatus.syncing(total: queue.length, current: i + 1),
        );

        final result = await _repository.createFeedPost(post: item.post);

        result.fold(
          (failure) {
            loge(
              'Failed to sync post ${item.tempId}: ${failure.message}',
              tag: _logTag,
            );
            _queueService.incrementRetryCount(item.tempId);
            failedCount++;
          },
          (feedEntity) {
            logi(
              'Successfully synced post ${item.tempId} -> ${feedEntity.id}',
              tag: _logTag,
            );
            _queueService.removeFromQueue(item.tempId);
            successCount++;
          },
        );

        // Delay kecil untuk tidak overload server
        await Future.delayed(const Duration(milliseconds: 500));
      }

      // Clean up posts yang sudah terlalu banyak retry
      await _queueService.removeFailed(_maxRetries);

      logi(
        'Sync completed: $successCount success, $failedCount failed',
        tag: _logTag,
      );

      final remainingCount = await _queueService.getQueueCount();
      _syncStatusController.add(
        PostSyncStatus.completed(
          successCount: successCount,
          failedCount: failedCount,
          remainingCount: remainingCount,
        ),
      );
    } catch (e) {
      loge('Sync error', error: e, tag: _logTag);
      _syncStatusController.add(PostSyncStatus.error(e.toString()));
    } finally {
      _isSyncing = false;
    }
  }

  /// Check apakah ada post yang perlu di-sync
  Future<bool> hasPendingSync() async {
    return await _queueService.hasQueuedPosts();
  }

  /// Get jumlah post yang menunggu sync
  Future<int> getPendingCount() async {
    return await _queueService.getQueueCount();
  }

  /// Dispose service
  void dispose() {
    stopAutoSync();
    _syncStatusController.close();
  }
}

/// Status sync untuk UI feedback
class PostSyncStatus {
  final PostSyncState state;
  final int? total;
  final int? current;
  final int? successCount;
  final int? failedCount;
  final int? remainingCount;
  final String? error;

  const PostSyncStatus._({
    required this.state,
    this.total,
    this.current,
    this.successCount,
    this.failedCount,
    this.remainingCount,
    this.error,
  });

  factory PostSyncStatus.idle() {
    return const PostSyncStatus._(state: PostSyncState.idle);
  }

  factory PostSyncStatus.syncing({required int total, required int current}) {
    return PostSyncStatus._(
      state: PostSyncState.syncing,
      total: total,
      current: current,
    );
  }

  factory PostSyncStatus.completed({
    required int successCount,
    required int failedCount,
    required int remainingCount,
  }) {
    return PostSyncStatus._(
      state: PostSyncState.completed,
      successCount: successCount,
      failedCount: failedCount,
      remainingCount: remainingCount,
    );
  }

  factory PostSyncStatus.error(String message) {
    return PostSyncStatus._(
      state: PostSyncState.error,
      error: message,
    );
  }

  double? get progress {
    if (total != null && current != null && total! > 0) {
      return current! / total!;
    }
    return null;
  }
}

enum PostSyncState {
  idle,
  syncing,
  completed,
  error,
}
