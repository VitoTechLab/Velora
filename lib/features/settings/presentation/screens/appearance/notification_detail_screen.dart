import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// YouTube/TikTok-style granular notification control screen
/// Organized by category with pause all and sleep mode features
class NotificationDetailScreen extends HookWidget {
  const NotificationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pauseAll = useState(false);
    final sleepModeEnabled = useState(false);
    final sleepStartTime = useState(const TimeOfDay(hour: 22, minute: 0));
    final sleepEndTime = useState(const TimeOfDay(hour: 7, minute: 0));
    final summaryFrequency = useState('Daily');

    // Notification toggles by category
    final postsAndStories = useState(true);
    final liveVideos = useState(true);
    final newCampaigns = useState(true);

    final likesOnPosts = useState(true);
    final commentReplies = useState(true);
    final mentions = useState(true);
    final newFollowers = useState(true);

    final donationReceived = useState(true);
    final campaignMilestone = useState(true);
    final campaignUpdates = useState(true);
    final withdrawalStatus = useState(true);

    final directMessages = useState(true);
    final messageRequests = useState(false);
    final groupInvites = useState(true);

    final emailNotifications = useState(true);
    final smsNotifications = useState(false);

    Future<void> selectTime(
      BuildContext context,
      ValueNotifier<TimeOfDay> timeNotifier,
    ) async {
      final picked = await showTimePicker(
        context: context,
        initialTime: timeNotifier.value,
      );
      if (picked != null) {
        timeNotifier.value = picked;
      }
    }

    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SettingsPageScaffold(
      title: t.settingsAppearanceNotificationsTitle,
      padding: EdgeInsets.zero,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsQuick,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPauseAllTitle,
                  subtitle: t.settingsAppearanceNotificationsPauseAllSubtitle,
                  icon: pauseAll.value
                      ? Icons.notifications_off
                      : Icons.notifications_active,
                  iconColor: pauseAll.value
                      ? colorScheme.error
                      : colorScheme.primary,
                  trailing: Switch.adaptive(
                    value: pauseAll.value,
                    onChanged: (val) => pauseAll.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SettingsSection(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.nightlight_round, color: colorScheme.primary),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          t.settingsAppearanceNotificationsSleepModeTitle,
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Switch.adaptive(
                        value: sleepModeEnabled.value,
                        onChanged: (val) => sleepModeEnabled.value = val,
                        activeColor: colorScheme.primary,
                      ),
                    ],
                  ),
                  if (sleepModeEnabled.value) ...[
                    const SizedBox(height: 12),
                    Text(
                      t.settingsAppearanceNotificationsSleepModeSubtitle,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () =>
                                selectTime(context, sleepStartTime),
                            icon: const Icon(Icons.bedtime),
                            label: Text(sleepStartTime.value.format(context)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Icon(Icons.arrow_forward, size: 16),
                        ),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () => selectTime(context, sleepEndTime),
                            icon: const Icon(Icons.wb_sunny),
                            label: Text(sleepEndTime.value.format(context)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 8),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsPostsSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsPeople,
                  icon: Icons.feed,
                  trailing: Switch.adaptive(
                    value: postsAndStories.value,
                    onChanged: (val) => postsAndStories.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsLive,
                  subtitle: t.settingsAppearanceNotificationsPostsLiveSubtitle,
                  trailing: Switch.adaptive(
                    value: liveVideos.value,
                    onChanged: (val) => liveVideos.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsCampaigns,
                  subtitle:
                      t.settingsAppearanceNotificationsPostsCampaignsSubtitle,
                  trailing: Switch.adaptive(
                    value: newCampaigns.value,
                    onChanged: (val) => newCampaigns.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsEngagementSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementLikes,
                  icon: Icons.favorite,
                  trailing: Switch.adaptive(
                    value: likesOnPosts.value,
                    onChanged: (val) => likesOnPosts.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementReplies,
                  trailing: Switch.adaptive(
                    value: commentReplies.value,
                    onChanged: (val) => commentReplies.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementMentions,
                  subtitle: t
                      .settingsAppearanceNotificationsEngagementMentionsSubtitle,
                  trailing: Switch.adaptive(
                    value: mentions.value,
                    onChanged: (val) => mentions.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementFollowers,
                  trailing: Switch.adaptive(
                    value: newFollowers.value,
                    onChanged: (val) => newFollowers.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsDonationsSection,
              tiles: [
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsReceivedTitle,
                  subtitle: t
                      .settingsAppearanceNotificationsDonationsReceivedSubtitle,
                  icon: Icons.volunteer_activism,
                  trailing: Switch.adaptive(
                    value: donationReceived.value,
                    onChanged: (val) => donationReceived.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsMilestonesTitle,
                  subtitle: t
                      .settingsAppearanceNotificationsDonationsMilestonesSubtitle,
                  trailing: Switch.adaptive(
                    value: campaignMilestone.value,
                    onChanged: (val) => campaignMilestone.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsDonationsUpdatesTitle,
                  subtitle:
                      t.settingsAppearanceNotificationsDonationsUpdatesSubtitle,
                  trailing: Switch.adaptive(
                    value: campaignUpdates.value,
                    onChanged: (val) => campaignUpdates.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsWithdrawTitle,
                  subtitle: t
                      .settingsAppearanceNotificationsDonationsWithdrawSubtitle,
                  trailing: Switch.adaptive(
                    value: withdrawalStatus.value,
                    onChanged: (val) => withdrawalStatus.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsMessagesSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesDirect,
                  icon: Icons.chat_bubble_outline,
                  iconColor: colorScheme.tertiary,
                  trailing: Switch.adaptive(
                    value: directMessages.value,
                    onChanged: (val) => directMessages.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesRequests,
                  subtitle:
                      t.settingsAppearanceNotificationsMessagesRequestsSubtitle,
                  trailing: Switch.adaptive(
                    value: messageRequests.value,
                    onChanged: (val) => messageRequests.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesGroups,
                  trailing: Switch.adaptive(
                    value: groupInvites.value,
                    onChanged: (val) => groupInvites.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SettingsSection(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.settingsAppearanceNotificationsSummaryTitle,
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.settingsAppearanceNotificationsSummarySubtitle,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SegmentedButton<String>(
                    segments: [
                      ButtonSegment(
                        value: 'Off',
                        label: Text(
                          t.settingsAppearanceNotificationsSummaryOff,
                        ),
                      ),
                      ButtonSegment(
                        value: 'Daily',
                        label: Text(
                          t.settingsAppearanceNotificationsSummaryDaily,
                        ),
                      ),
                      ButtonSegment(
                        value: 'Weekly',
                        label: Text(
                          t.settingsAppearanceNotificationsSummaryWeekly,
                        ),
                      ),
                    ],
                    selected: {summaryFrequency.value},
                    onSelectionChanged: (Set<String> newSelection) {
                      summaryFrequency.value = newSelection.first;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            _NotificationSection(
              title: t.settingsAppearanceNotificationsOtherSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsOtherEmailTitle,
                  subtitle: t.settingsAppearanceNotificationsOtherEmailSubtitle,
                  icon: Icons.email_outlined,
                  trailing: Switch.adaptive(
                    value: emailNotifications.value,
                    onChanged: (val) => emailNotifications.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsOtherSmsTitle,
                  subtitle: t.settingsAppearanceNotificationsOtherSmsSubtitle,
                  icon: Icons.sms_outlined,
                  trailing: Switch.adaptive(
                    value: smsNotifications.value,
                    onChanged: (val) => smsNotifications.value = val,
                    activeColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NotificationSection extends StatelessWidget {
  const _NotificationSection({
    required this.title,
    required this.tiles,
  });

  final String title;
  final List<SettingsTileData> tiles;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SettingsSection(
      title: title,
      child: Column(
        children: [
          for (int i = 0; i < tiles.length; i++) ...[
            SettingsTile(data: tiles[i]),
            if (i != tiles.length - 1)
              Divider(
                height: 0,
                indent: tiles[i].icon != null ? 72 : 16,
                endIndent: 16,
                color: colorScheme.outlineVariant.withOpacity(0.4),
              ),
          ],
        ],
      ),
    );
  }
}
