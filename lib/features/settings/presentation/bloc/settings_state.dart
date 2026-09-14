import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    // Loading states
    @Default(false) bool isLoading,

    // Language settings (5 supported: en, id, ko, ja, zh)
    @Default('en') String languageCode,
    String? languageRegion,

    // Theme settings
    @Default('system') String themeMode, // 'light', 'dark', 'system'
    @Default(true) bool dynamicColor,
    @Default('Ocean') String colorPalette,
    @Default(16.0) double cornerRadius,

    // Accessibility - Text
    @Default(16.0) double fontSize,
    @Default('Inter') String fontFamily, // 'Inter', 'DM Sans', 'Serif'
    @Default('left') String textAlignment, // 'left', 'center', 'justify'
    @Default(1.4) double lineSpacing,

    // Accessibility - Visual
    @Default(false) bool highContrast,
    @Default(false) bool motionReduced,

    // Notification - Global
    @Default(false) bool pauseAllNotifications,
    @Default(false) bool sleepModeEnabled,
    @Default(22) int sleepStartHour,
    @Default(0) int sleepStartMinute,
    @Default(7) int sleepEndHour,
    @Default(0) int sleepEndMinute,

    // Notification - Posts & Stories
    @Default(true) bool notifyPostsAndStories,
    @Default(true) bool notifyLiveVideos,
    @Default(true) bool notifyNewCampaigns,

    // Notification - Engagement
    @Default(true) bool notifyLikes,
    @Default(true) bool notifyCommentReplies,
    @Default(true) bool notifyMentions,
    @Default(true) bool notifyNewFollowers,

    // Notification - Donations
    @Default(true) bool notifyDonationReceived,
    @Default(true) bool notifyCampaignMilestone,
    @Default(true) bool notifyCampaignUpdates,
    @Default(true) bool notifyWithdrawalStatus,

    // Notification - Messages
    @Default(true) bool notifyDirectMessages,
    @Default(false) bool notifyMessageRequests,
    @Default(true) bool notifyGroupInvites,

    // Notification - Summary & Other
    @Default('daily') String summaryFrequency, // 'off', 'daily', 'weekly'
    @Default(true) bool emailNotifications,
    @Default(false) bool smsNotifications,

    // Messages
    String? message,
    String? errorMessage,
  }) = _SettingsState;

  const SettingsState._();

  /// Whether theme uses system default
  bool get isSystemTheme => themeMode == 'system';

  /// Whether dark mode is active
  bool get isDarkMode => themeMode == 'dark';

  /// Whether light mode is active
  bool get isLightMode => themeMode == 'light';
}
