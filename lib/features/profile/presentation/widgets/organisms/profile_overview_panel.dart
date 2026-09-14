import 'package:flutter/material.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/shared/widgets/content_state.dart';

class ProfileOverviewPanel extends StatelessWidget {
  const ProfileOverviewPanel({
    super.key,
    required this.profile,
    required this.isMe,
    required this.reports,
  });
  final UserProfileEntity profile;
  final bool isMe;
  final List<FeedEntity> reports;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final id = Localizations.localeOf(context).languageCode == 'id';
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (profile.isVerified) ...[
          Row(
            children: [
              Icon(Icons.verified, size: 18, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  id ? 'Profil terverifikasi' : 'Verified profile',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
        Text(
          id ? 'Aktivitas terbaru' : 'Recent activity',
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        if (reports.isEmpty)
          ContentState(
            title: id ? 'Belum ada aktivitas' : 'No activity yet',
            message: id
                ? 'Cerita yang dibagikan akan muncul di sini.'
                : 'Shared stories will appear here.',
          ),
        for (final post in reports.take(3)) ...[
          if (post.campaignTitle?.isNotEmpty == true) ...[
            Text(
              post.campaignTitle!,
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
          ],
          Text(
            post.content,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge,
          ),
          const Divider(height: 32),
        ],
      ],
    );
  }
}
