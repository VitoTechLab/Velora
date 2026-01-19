import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';

class ActiveSession {
  const ActiveSession({
    required this.id,
    required this.deviceName,
    required this.deviceType,
    required this.location,
    required this.lastActive,
    required this.ipAddress,
    this.isCurrent = false,
  });

  final String id;
  final String deviceName;
  final String deviceType; // 'mobile', 'desktop', 'tablet', 'web'
  final String location;
  final DateTime lastActive;
  final String ipAddress;
  final bool isCurrent;

  IconData get icon {
    switch (deviceType) {
      case 'mobile':
        return Icons.phone_android;
      case 'desktop':
        return Icons.laptop_windows;
      case 'tablet':
        return Icons.tablet_android;
      case 'web':
        return Icons.language;
      default:
        return Icons.devices;
    }
  }
}

class ActiveSessionsScreen extends HookWidget {
  const ActiveSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    // Mock sessions data - in production, fetch from backend
    final sessions = useState<List<ActiveSession>>([
      ActiveSession(
        id: '1',
        deviceName: 'Samsung Galaxy S24',
        deviceType: 'mobile',
        location: 'Jakarta, Indonesia',
        lastActive: DateTime.now(),
        ipAddress: '192.168.1.100',
        isCurrent: true,
      ),
      ActiveSession(
        id: '2',
        deviceName: 'Windows PC',
        deviceType: 'desktop',
        location: 'Jakarta, Indonesia',
        lastActive: DateTime.now().subtract(const Duration(hours: 3)),
        ipAddress: '192.168.1.101',
      ),
      ActiveSession(
        id: '3',
        deviceName: 'Chrome on MacBook',
        deviceType: 'web',
        location: 'Bandung, Indonesia',
        lastActive: DateTime.now().subtract(const Duration(days: 2)),
        ipAddress: '103.123.45.67',
      ),
    ]);

    Future<void> handleSignOut(ActiveSession session) async {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Sign out device?'),
          content: Text(
            'This will sign out ${session.deviceName} from your account. You\'ll need to sign in again on that device.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: FilledButton.styleFrom(
                backgroundColor: colorScheme.error,
              ),
              child: const Text('Sign Out'),
            ),
          ],
        ),
      );

      if (confirmed == true) {
        // Simulate API call
        await Future.delayed(const Duration(milliseconds: 500));

        // Remove session
        sessions.value = sessions.value.where((s) => s.id != session.id).toList();

        if (context.mounted) {
          AppMessenger.showToast(
            message: 'Device signed out successfully',
            icon: Icons.check_circle_outline,
            duration: const Duration(seconds: 2),
          );
        }
      }
    }

    Future<void> handleSignOutAll() async {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Sign out all devices?'),
          content: const Text(
            'This will sign you out from all devices except this one. You\'ll need to sign in again on those devices.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pop(true),
              style: FilledButton.styleFrom(
                backgroundColor: colorScheme.error,
              ),
              child: const Text('Sign Out All'),
            ),
          ],
        ),
      );

      if (confirmed == true) {
        // Simulate API call
        await Future.delayed(const Duration(milliseconds: 500));

        // Keep only current session
        sessions.value = sessions.value.where((s) => s.isCurrent).toList();

        if (context.mounted) {
          AppMessenger.showToast(
            message: 'All other devices signed out',
            icon: Icons.check_circle_outline,
            duration: const Duration(seconds: 2),
          );
        }
      }
    }

    return SettingsPageScaffold(
      title: 'Active Sessions',
      subtitle: 'Manage devices signed into your account',
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'You are signed in on ${sessions.value.length} ${sessions.value.length == 1 ? 'device' : 'devices'}. Sign out devices you don\'t recognize.',
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...sessions.value.map((session) {
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            session.icon,
                            color: colorScheme.primary,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      session.deviceName,
                                      style: textTheme.titleMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  if (session.isCurrent)
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: colorScheme.primaryContainer,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        'Current',
                                        style: textTheme.labelSmall?.copyWith(
                                          color: colorScheme.primary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                session.location,
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Divider(
                      color: colorScheme.outlineVariant.withValues(alpha: 0.5),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Last active: ${_formatLastActive(session.lastActive)}',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'IP: ${session.ipAddress}',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    if (!session.isCurrent) ...[
                      const SizedBox(height: 16),
                      OutlinedButton.icon(
                        onPressed: () => handleSignOut(session),
                        icon: const Icon(Icons.logout),
                        label: const Text('Sign Out'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: colorScheme.error,
                          side: BorderSide(color: colorScheme.error),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
          if (sessions.value.length > 1) ...[
            const SizedBox(height: 8),
            FilledButton.icon(
              onPressed: handleSignOutAll,
              icon: const Icon(Icons.logout),
              label: const Text('Sign Out All Other Devices'),
              style: FilledButton.styleFrom(
                backgroundColor: colorScheme.error,
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _formatLastActive(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return DateFormat.yMMMd().format(dateTime);
    }
  }
}
