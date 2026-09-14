import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  // ==========================================
  // Load Settings
  // ==========================================

  /// Load all user settings from backend/local storage
  const factory SettingsEvent.loadSettings() = LoadSettingsEvent;

  // ==========================================
  // Language Events
  // ==========================================

  /// Update user language preference
  const factory SettingsEvent.updateLanguage({
    required String languageCode,
    String? region,
  }) = UpdateLanguageEvent;

  // ==========================================
  // Theme Events
  // ==========================================

  /// Update theme mode (light/dark/system)
  const factory SettingsEvent.updateThemeMode(String mode) =
      UpdateThemeModeEvent;

  /// Toggle dynamic color (Material You)
  const factory SettingsEvent.toggleDynamicColor(bool enabled) =
      ToggleDynamicColorEvent;

  /// Update color palette
  const factory SettingsEvent.updateColorPalette(String palette) =
      UpdateColorPaletteEvent;

  /// Update corner radius
  const factory SettingsEvent.updateCornerRadius(double radius) =
      UpdateCornerRadiusEvent;

  // ==========================================
  // Accessibility Events
  // ==========================================

  /// Update font size (12-24)
  const factory SettingsEvent.updateFontSize(double size) = UpdateFontSizeEvent;

  /// Update font family
  const factory SettingsEvent.updateFontFamily(String family) =
      UpdateFontFamilyEvent;

  /// Update text alignment
  const factory SettingsEvent.updateTextAlignment(String alignment) =
      UpdateTextAlignmentEvent;

  /// Update line spacing
  const factory SettingsEvent.updateLineSpacing(double spacing) =
      UpdateLineSpacingEvent;

  /// Toggle high contrast mode
  const factory SettingsEvent.toggleHighContrast(bool enabled) =
      ToggleHighContrastEvent;

  /// Toggle reduced motion
  const factory SettingsEvent.toggleMotionReduced(bool enabled) =
      ToggleMotionReducedEvent;

  // ==========================================
  // Notification Events
  // ==========================================

  /// Toggle pause all notifications
  const factory SettingsEvent.togglePauseAllNotifications(bool enabled) =
      TogglePauseAllNotificationsEvent;

  /// Update sleep mode settings
  const factory SettingsEvent.updateSleepMode({
    required bool enabled,
    int? startHour,
    int? startMinute,
    int? endHour,
    int? endMinute,
  }) = UpdateSleepModeEvent;

  /// Toggle specific notification type
  const factory SettingsEvent.toggleNotification({
    required String type,
    required bool enabled,
  }) = ToggleNotificationEvent;

  /// Update summary frequency
  const factory SettingsEvent.updateSummaryFrequency(String frequency) =
      UpdateSummaryFrequencyEvent;

  /// Toggle email notifications
  const factory SettingsEvent.toggleEmailNotifications(bool enabled) =
      ToggleEmailNotificationsEvent;

  /// Toggle SMS notifications
  const factory SettingsEvent.toggleSmsNotifications(bool enabled) =
      ToggleSmsNotificationsEvent;

  // ==========================================
  // Clear Messages
  // ==========================================

  const factory SettingsEvent.clearMessages() = ClearSettingsMessagesEvent;
}
