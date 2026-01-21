import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// YouTube/TikTok-style granular notification control screen
/// Organized by category with pause all and sleep mode features
class NotificationDetailScreen extends HookWidget {
  const NotificationDetailScreen({super.key});

  // SharedPreferences keys
  static const String _keyPauseAll = 'notification_pause_all';
  static const String _keySleepMode = 'notification_sleep_mode';
  static const String _keySleepStart = 'notification_sleep_start';
  static const String _keySleepEnd = 'notification_sleep_end';
  static const String _keySummaryFreq = 'notification_summary_freq';
  
  // Posts & Stories keys
  static const String _keyPostsAndStories = 'notification_posts_stories';
  static const String _keyLiveVideos = 'notification_live_videos';
  static const String _keyNewCampaigns = 'notification_new_campaigns';
  
  // Engagement keys
  static const String _keyLikesOnPosts = 'notification_likes_posts';
  static const String _keyCommentReplies = 'notification_comment_replies';
  static const String _keyMentions = 'notification_mentions';
  static const String _keyNewFollowers = 'notification_new_followers';
  
  // Donations keys
  static const String _keyDonationReceived = 'notification_donation_received';
  static const String _keyCampaignMilestone = 'notification_campaign_milestone';
  static const String _keyCampaignUpdates = 'notification_campaign_updates';
  static const String _keyWithdrawalStatus = 'notification_withdrawal_status';
  
  // Messages keys
  static const String _keyDirectMessages = 'notification_direct_messages';
  static const String _keyMessageRequests = 'notification_message_requests';
  static const String _keyGroupInvites = 'notification_group_invites';
  
  // Other channels keys
  static const String _keyEmailNotifications = 'notification_email';
  static const String _keySmsNotifications = 'notification_sms';

  @override
  Widget build(BuildContext context) {
    final pauseAll = useState(false);
    final sleepModeEnabled = useState(false);
    final sleepStartTime = useState(const TimeOfDay(hour: 22, minute: 0));
    final sleepEndTime = useState(const TimeOfDay(hour: 7, minute: 0));
    final summaryFrequency = useState('Daily');
    final isLoading = useState(true);

    // Notification toggles by category (Under Development - all OFF)
    final postsAndStories = useState(false);
    final liveVideos = useState(false);
    final newCampaigns = useState(false);

    final likesOnPosts = useState(false);
    final commentReplies = useState(false);
    final mentions = useState(false);
    final newFollowers = useState(false);

    final donationReceived = useState(false);
    final campaignMilestone = useState(false);
    final campaignUpdates = useState(false);
    final withdrawalStatus = useState(false);

    final directMessages = useState(false);
    final messageRequests = useState(false);
    final groupInvites = useState(false);

    final emailNotifications = useState(false);
    final smsNotifications = useState(false);

    // Load settings from SharedPreferences
    useEffect(() {
      Future<void> loadSettings() async {
        final prefs = await SharedPreferences.getInstance();
        pauseAll.value = prefs.getBool(_keyPauseAll) ?? false;
        sleepModeEnabled.value = prefs.getBool(_keySleepMode) ?? false;
        
        final sleepStart = prefs.getInt(_keySleepStart) ?? 22 * 60;
        sleepStartTime.value = TimeOfDay(
          hour: sleepStart ~/ 60,
          minute: sleepStart % 60,
        );
        
        final sleepEnd = prefs.getInt(_keySleepEnd) ?? 7 * 60;
        sleepEndTime.value = TimeOfDay(
          hour: sleepEnd ~/ 60,
          minute: sleepEnd % 60,
        );
        
        summaryFrequency.value = prefs.getString(_keySummaryFreq) ?? 'Daily';
        
        // Load Posts & Stories
        postsAndStories.value = prefs.getBool(_keyPostsAndStories) ?? false;
        liveVideos.value = prefs.getBool(_keyLiveVideos) ?? false;
        newCampaigns.value = prefs.getBool(_keyNewCampaigns) ?? false;
        
        // Load Engagement
        likesOnPosts.value = prefs.getBool(_keyLikesOnPosts) ?? false;
        commentReplies.value = prefs.getBool(_keyCommentReplies) ?? false;
        mentions.value = prefs.getBool(_keyMentions) ?? false;
        newFollowers.value = prefs.getBool(_keyNewFollowers) ?? false;
        
        // Load Donations
        donationReceived.value = prefs.getBool(_keyDonationReceived) ?? false;
        campaignMilestone.value = prefs.getBool(_keyCampaignMilestone) ?? false;
        campaignUpdates.value = prefs.getBool(_keyCampaignUpdates) ?? false;
        withdrawalStatus.value = prefs.getBool(_keyWithdrawalStatus) ?? false;
        
        // Load Messages
        directMessages.value = prefs.getBool(_keyDirectMessages) ?? false;
        messageRequests.value = prefs.getBool(_keyMessageRequests) ?? false;
        groupInvites.value = prefs.getBool(_keyGroupInvites) ?? false;
        
        // Load Other Channels
        emailNotifications.value = prefs.getBool(_keyEmailNotifications) ?? false;
        smsNotifications.value = prefs.getBool(_keySmsNotifications) ?? false;
        
        isLoading.value = false;
      }
      
      loadSettings();
      return null;
    }, const []);

    Future<void> saveSetting(String key, dynamic value) async {
      final prefs = await SharedPreferences.getInstance();
      if (value is bool) {
        await prefs.setBool(key, value);
      } else if (value is int) {
        await prefs.setInt(key, value);
      } else if (value is String) {
        await prefs.setString(key, value);
      }
    }

    Future<void> selectTime(
      BuildContext context,
      ValueNotifier<TimeOfDay> timeNotifier,
      String saveKey,
    ) async {
      final picked = await showTimePicker(
        context: context,
        initialTime: timeNotifier.value,
      );
      if (picked != null) {
        timeNotifier.value = picked;
        final minutes = picked.hour * 60 + picked.minute;
        await saveSetting(saveKey, minutes);
      }
    }

    void handleSummaryChange(String value) {
      summaryFrequency.value = value;
      saveSetting(_keySummaryFreq, value);
    }

    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (isLoading.value) {
      return Scaffold(
        appBar: AppBar(
          title: Text(t.settingsAppearanceNotificationsTitle),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return SettingsPageScaffold(
      title: t.settingsAppearanceNotificationsTitle,
      padding: EdgeInsets.zero,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            
            // ═══ Quick Settings ═══
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
                    onChanged: (val) {
                      pauseAll.value = val;
                      saveSetting(_keyPauseAll, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Sleep Mode ═══
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
                        onChanged: (val) {
                          sleepModeEnabled.value = val;
                          saveSetting(_keySleepMode, val);
                        },
                        activeTrackColor: colorScheme.primary,
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
                            onPressed: () => selectTime(
                              context,
                              sleepStartTime,
                              _keySleepStart,
                            ),
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
                            onPressed: () => selectTime(
                              context,
                              sleepEndTime,
                              _keySleepEnd,
                            ),
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
            
            // ═══ Posts & Stories ═══
            _NotificationSection(
              title: t.settingsAppearanceNotificationsPostsSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsPeople,
                  icon: Icons.feed,
                  trailing: Switch.adaptive(
                    value: postsAndStories.value,
                    onChanged: (val) {
                      postsAndStories.value = val;
                      saveSetting(_keyPostsAndStories, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsLive,
                  subtitle: t.settingsAppearanceNotificationsPostsLiveSubtitle,
                  trailing: Switch.adaptive(
                    value: liveVideos.value,
                    onChanged: (val) {
                      liveVideos.value = val;
                      saveSetting(_keyLiveVideos, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsPostsCampaigns,
                  subtitle: t.settingsAppearanceNotificationsPostsCampaignsSubtitle,
                  trailing: Switch.adaptive(
                    value: newCampaigns.value,
                    onChanged: (val) {
                      newCampaigns.value = val;
                      saveSetting(_keyNewCampaigns, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Engagement ═══
            _NotificationSection(
              title: t.settingsAppearanceNotificationsEngagementSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementLikes,
                  icon: Icons.favorite,
                  trailing: Switch.adaptive(
                    value: likesOnPosts.value,
                    onChanged: (val) {
                      likesOnPosts.value = val;
                      saveSetting(_keyLikesOnPosts, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementReplies,
                  trailing: Switch.adaptive(
                    value: commentReplies.value,
                    onChanged: (val) {
                      commentReplies.value = val;
                      saveSetting(_keyCommentReplies, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementMentions,
                  subtitle: t.settingsAppearanceNotificationsEngagementMentionsSubtitle,
                  trailing: Switch.adaptive(
                    value: mentions.value,
                    onChanged: (val) {
                      mentions.value = val;
                      saveSetting(_keyMentions, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsEngagementFollowers,
                  trailing: Switch.adaptive(
                    value: newFollowers.value,
                    onChanged: (val) {
                      newFollowers.value = val;
                      saveSetting(_keyNewFollowers, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Donations & Campaigns ═══
            _NotificationSection(
              title: t.settingsAppearanceNotificationsDonationsSection,
              tiles: [
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsReceivedTitle,
                  subtitle: t.settingsAppearanceNotificationsDonationsReceivedSubtitle,
                  icon: Icons.volunteer_activism,
                  trailing: Switch.adaptive(
                    value: donationReceived.value,
                    onChanged: (val) {
                      donationReceived.value = val;
                      saveSetting(_keyDonationReceived, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsMilestonesTitle,
                  subtitle: t.settingsAppearanceNotificationsDonationsMilestonesSubtitle,
                  trailing: Switch.adaptive(
                    value: campaignMilestone.value,
                    onChanged: (val) {
                      campaignMilestone.value = val;
                      saveSetting(_keyCampaignMilestone, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsDonationsUpdatesTitle,
                  subtitle: t.settingsAppearanceNotificationsDonationsUpdatesSubtitle,
                  trailing: Switch.adaptive(
                    value: campaignUpdates.value,
                    onChanged: (val) {
                      campaignUpdates.value = val;
                      saveSetting(_keyCampaignUpdates, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title:
                      t.settingsAppearanceNotificationsDonationsWithdrawTitle,
                  subtitle: t.settingsAppearanceNotificationsDonationsWithdrawSubtitle,
                  trailing: Switch.adaptive(
                    value: withdrawalStatus.value,
                    onChanged: (val) {
                      withdrawalStatus.value = val;
                      saveSetting(_keyWithdrawalStatus, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Messages ═══
            _NotificationSection(
              title: t.settingsAppearanceNotificationsMessagesSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesDirect,
                  icon: Icons.chat_bubble_outline,
                  iconColor: colorScheme.tertiary,
                  trailing: Switch.adaptive(
                    value: directMessages.value,
                    onChanged: (val) {
                      directMessages.value = val;
                      saveSetting(_keyDirectMessages, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesRequests,
                  subtitle: t.settingsAppearanceNotificationsMessagesRequestsSubtitle,
                  trailing: Switch.adaptive(
                    value: messageRequests.value,
                    onChanged: (val) {
                      messageRequests.value = val;
                      saveSetting(_keyMessageRequests, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsMessagesGroups,
                  trailing: Switch.adaptive(
                    value: groupInvites.value,
                    onChanged: (val) {
                      groupInvites.value = val;
                      saveSetting(_keyGroupInvites, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Summary ═══
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
                      handleSummaryChange(newSelection.first);
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 8),
            
            // ═══ Other Channels ═══
            _NotificationSection(
              title: t.settingsAppearanceNotificationsOtherSection,
              tiles: [
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsOtherEmailTitle,
                  subtitle: t.settingsAppearanceNotificationsOtherEmailSubtitle,
                  icon: Icons.email_outlined,
                  trailing: Switch.adaptive(
                    value: emailNotifications.value,
                    onChanged: (val) {
                      emailNotifications.value = val;
                      saveSetting(_keyEmailNotifications, val);
                    },
                    activeTrackColor: colorScheme.primary,
                  ),
                ),
                SettingsTileData(
                  title: t.settingsAppearanceNotificationsOtherSmsTitle,
                  subtitle: t.settingsAppearanceNotificationsOtherSmsSubtitle,
                  icon: Icons.sms_outlined,
                  trailing: Switch.adaptive(
                    value: smsNotifications.value,
                    onChanged: (val) {
                      smsNotifications.value = val;
                      saveSetting(_keySmsNotifications, val);
                    },
                    activeTrackColor: colorScheme.primary,
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
                color: colorScheme.outlineVariant.withValues(alpha: 0.4),
              ),
          ],
        ],
      ),
    );
  }
}
