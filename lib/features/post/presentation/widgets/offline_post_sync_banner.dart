import 'package:flutter/material.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/post/services/post_sync_service.dart';

/// Widget untuk menampilkan status sync post offline
/// Muncul sebagai banner di bagian atas screen saat ada post yang di-sync
class OfflinePostSyncBanner extends StatefulWidget {
  const OfflinePostSyncBanner({super.key});

  @override
  State<OfflinePostSyncBanner> createState() => _OfflinePostSyncBannerState();
}

class _OfflinePostSyncBannerState extends State<OfflinePostSyncBanner> {
  late final PostSyncService _syncService;
  PostSyncStatus? _currentStatus;

  @override
  void initState() {
    super.initState();
    _syncService = getIt<PostSyncService>();
    
    // Listen to sync status changes
    _syncService.syncStatus.listen((status) {
      if (mounted) {
        setState(() {
          _currentStatus = status;
        });

        // Auto-hide setelah beberapa detik jika completed
        if (status.state == PostSyncState.completed) {
          Future.delayed(const Duration(seconds: 3), () {
            if (mounted) {
              setState(() {
                _currentStatus = null;
              });
            }
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentStatus == null || _currentStatus!.state == PostSyncState.idle) {
      return const SizedBox.shrink();
    }

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    Color backgroundColor;
    IconData icon;
    String message;

    switch (_currentStatus!.state) {
      case PostSyncState.syncing:
        backgroundColor = colorScheme.primaryContainer;
        icon = Icons.cloud_upload_outlined;
        final progress = _currentStatus!.progress;
        if (progress != null) {
          final percent = (progress * 100).toInt();
          message = 'Syncing posts... $percent%';
        } else {
          message = 'Syncing posts...';
        }
        break;

      case PostSyncState.completed:
        backgroundColor = colorScheme.tertiaryContainer;
        icon = Icons.cloud_done_outlined;
        final success = _currentStatus!.successCount ?? 0;
        final remaining = _currentStatus!.remainingCount ?? 0;
        if (remaining > 0) {
          message = 'Synced $success posts. $remaining pending.';
        } else {
          message = 'All posts synced successfully!';
        }
        break;

      case PostSyncState.error:
        backgroundColor = colorScheme.errorContainer;
        icon = Icons.cloud_off_outlined;
        message = 'Sync failed. Will retry later.';
        break;

      default:
        return const SizedBox.shrink();
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: colorScheme.onPrimaryContainer,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (_currentStatus!.state == PostSyncState.syncing)
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  colorScheme.onPrimaryContainer,
                ),
                value: _currentStatus!.progress,
              ),
            ),
        ],
      ),
    );
  }
}
