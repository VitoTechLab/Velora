import 'package:flutter/material.dart';
import 'package:velora/shared/widgets/content_state.dart';

class EmptyNotificationsWidget extends StatelessWidget {
  const EmptyNotificationsWidget({
    super.key,
    this.message,
    this.subtitle,
    this.onRefresh,
  });
  final String? message;
  final String? subtitle;
  final VoidCallback? onRefresh;
  @override
  Widget build(BuildContext context) {
    final id = Localizations.localeOf(context).languageCode == 'id';
    return ContentState(
      title: message ?? (id ? 'Belum ada notifikasi' : 'No notifications yet'),
      message:
          subtitle ??
          (id
              ? 'Kabar dari komunitas akan muncul di sini.'
              : 'Updates from your community will appear here.'),
      icon: Icons.notifications_none,
      actionLabel: id ? 'Muat ulang' : 'Refresh',
      onAction: onRefresh,
    );
  }
}
