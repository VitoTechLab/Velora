import 'package:flutter/material.dart';
import 'package:velora/features/profile/domain/entities/user_profile_entity.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_avatar.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_badge.dart';
import 'package:velora/features/profile/presentation/widgets/molecules/profile_action_group.dart';
import 'package:velora/features/profile/presentation/widgets/molecules/profile_contribution_stats.dart';

class ProfileHeaderPanel extends StatelessWidget {
  const ProfileHeaderPanel({
    super.key,
    required this.profile,
    required this.reportsCount,
    required this.isMe,
    required this.isFollowing,
    required this.isFollowRequestPending,
    required this.onEditProfile,
    required this.onSettings,
    required this.onFollowToggle,
    required this.onMessage,
    required this.onReportsTap,
  });

  final UserProfileEntity profile;
  final int reportsCount;
  final bool isMe;
  final bool isFollowing;
  final bool isFollowRequestPending;
  final VoidCallback? onEditProfile;
  final VoidCallback? onSettings;
  final VoidCallback? onFollowToggle;
  final VoidCallback? onMessage;
  final VoidCallback? onReportsTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final displayName = profile.fullName?.trim().isNotEmpty == true
        ? profile.fullName!.trim()
        : profile.username;
    final username = profile.username.isNotEmpty
        ? '@${profile.username}'
        : profile.email;
    final completeness = _profileCompleteness(profile);

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 520),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 18 * (1 - value)),
            child: child,
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(color: colorScheme.surface),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileAvatar(
                    imageUrl: profile.avatarUrl,
                    isVerified: profile.isVerified,
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          displayName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          username,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            ProfileBadge(
                              label: profile.isVerified
                                  ? 'Verified'
                                  : 'Trust building',
                              icon: profile.isVerified
                                  ? Icons.verified_rounded
                                  : Icons.shield_outlined,
                              isStrong: profile.isVerified,
                            ),
                            if (profile.location?.isNotEmpty == true)
                              ProfileBadge(
                                label: profile.location!,
                                icon: Icons.location_on_outlined,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              if (profile.bio?.trim().isNotEmpty == true) ...[
                const SizedBox(height: 16),
                Text(
                  profile.bio!.trim(),
                  style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
                ),
              ],
              if (isMe && completeness < 1) ...[
                const SizedBox(height: 20),
                _CompletenessMeter(value: completeness),
              ],
              const SizedBox(height: 20),
              ProfileContributionStats(
                reports: reportsCount,
                supported: profile.followersCount,
                impact: profile.followingCount,
                onReportsTap: onReportsTap,
              ),
              const SizedBox(height: 16),
              ProfileActionGroup(
                isMe: isMe,
                isFollowing: isFollowing,
                isFollowRequestPending: isFollowRequestPending,
                onEditProfile: onEditProfile,
                onSettings: onSettings,
                onFollowToggle: onFollowToggle,
                onMessage: onMessage,
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _profileCompleteness(UserProfileEntity profile) {
    final items = [
      profile.fullName?.trim().isNotEmpty == true,
      profile.avatarUrl?.trim().isNotEmpty == true,
      profile.bio?.trim().isNotEmpty == true,
      profile.location?.trim().isNotEmpty == true,
      profile.websiteUrl?.trim().isNotEmpty == true,
    ];
    return items.where((item) => item).length / items.length;
  }
}

class _CompletenessMeter extends StatelessWidget {
  const _CompletenessMeter({required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final percent = (value * 100).round();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.task_alt_rounded, size: 18, color: colorScheme.primary),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                'Profile completeness $percent%',
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(99),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: colorScheme.outline.withValues(alpha: 0.16),
            color: colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
