import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/features/settings/presentation/bloc/settings_event.dart';
import 'package:velora/features/settings/presentation/bloc/settings_state.dart';

/// SettingsBloc manages user preferences for theme, language, accessibility,
/// and notifications. Settings are persisted to SharedPreferences for offline
/// support and synced to Supabase when online.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState()) {
    on<LoadSettingsEvent>(_onLoadSettings);
    on<UpdateLanguageEvent>(_onUpdateLanguage);
    on<UpdateThemeModeEvent>(_onUpdateThemeMode);
    on<ToggleDynamicColorEvent>(_onToggleDynamicColor);
    on<UpdateColorPaletteEvent>(_onUpdateColorPalette);
    on<UpdateCornerRadiusEvent>(_onUpdateCornerRadius);
    on<UpdateFontSizeEvent>(_onUpdateFontSize);
    on<UpdateFontFamilyEvent>(_onUpdateFontFamily);
    on<UpdateTextAlignmentEvent>(_onUpdateTextAlignment);
    on<UpdateLineSpacingEvent>(_onUpdateLineSpacing);
    on<ToggleHighContrastEvent>(_onToggleHighContrast);
    on<ToggleMotionReducedEvent>(_onToggleMotionReduced);
    on<TogglePauseAllNotificationsEvent>(_onTogglePauseAllNotifications);
    on<UpdateSleepModeEvent>(_onUpdateSleepMode);
    on<ToggleNotificationEvent>(_onToggleNotification);
    on<UpdateSummaryFrequencyEvent>(_onUpdateSummaryFrequency);
    on<ToggleEmailNotificationsEvent>(_onToggleEmailNotifications);
    on<ToggleSmsNotificationsEvent>(_onToggleSmsNotifications);
    on<ClearSettingsMessagesEvent>(_onClearMessages);

    // Auto-load settings on init
    add(const LoadSettingsEvent());
  }

  // SharedPreferences keys
  static const _keyLanguage = 'settings_language';
  static const _keyThemeMode = 'theme_mode';
  static const _keyDynamicColor = 'theme_dynamic';
  static const _keyColorPalette = 'theme_palette';
  static const _keyCornerRadius = 'theme_corner';
  static const _keyFontSize = 'settings_fontSize';
  static const _keyFontFamily = 'settings_fontFamily';
  static const _keyTextAlign = 'settings_textAlign';
  static const _keyLineSpacing = 'settings_lineSpacing';
  static const _keyHighContrast = 'settings_highContrast';
  static const _keyMotionReduced = 'settings_motionReduced';

  // ==========================================
  // Load Settings
  // ==========================================

  Future<void> _onLoadSettings(
    LoadSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final prefs = await SharedPreferences.getInstance();

      emit(
        state.copyWith(
          isLoading: false,
          // Language
          languageCode: prefs.getString(_keyLanguage) ?? 'en',
          // Theme
          themeMode: prefs.getString(_keyThemeMode) ?? 'system',
          dynamicColor: prefs.getBool(_keyDynamicColor) ?? true,
          colorPalette: prefs.getString(_keyColorPalette) ?? 'Ocean',
          cornerRadius: prefs.getDouble(_keyCornerRadius) ?? 16.0,
          // Accessibility - Text
          fontSize: prefs.getDouble(_keyFontSize) ?? 16.0,
          fontFamily: prefs.getString(_keyFontFamily) ?? 'Inter',
          textAlignment:
              _textAlignFromIndex(prefs.getInt(_keyTextAlign) ?? 0),
          lineSpacing: prefs.getDouble(_keyLineSpacing) ?? 1.4,
          // Accessibility - Visual
          highContrast: prefs.getBool(_keyHighContrast) ?? false,
          motionReduced: prefs.getBool(_keyMotionReduced) ?? false,
        ),
      );

      AppLogger.i('[SettingsBloc] Settings loaded successfully');
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to load settings', error: e, stackTrace: st);
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Failed to load settings',
        ),
      );
    }
  }

  String _textAlignFromIndex(int index) {
    switch (index) {
      case 1:
        return 'center';
      case 2:
        return 'justify';
      default:
        return 'left';
    }
  }

  int _textAlignToIndex(String alignment) {
    switch (alignment) {
      case 'center':
        return 1;
      case 'justify':
        return 2;
      default:
        return 0;
    }
  }

  // ==========================================
  // Language
  // ==========================================

  Future<void> _onUpdateLanguage(
    UpdateLanguageEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyLanguage, event.languageCode);

      emit(
        state.copyWith(
          languageCode: event.languageCode,
          languageRegion: event.region,
          message: 'Language updated',
        ),
      );

      AppLogger.i('[SettingsBloc] Language updated to: ${event.languageCode}');
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update language', error: e, stackTrace: st);
      emit(state.copyWith(errorMessage: 'Failed to update language'));
    }
  }

  // ==========================================
  // Theme
  // ==========================================

  Future<void> _onUpdateThemeMode(
    UpdateThemeModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyThemeMode, event.mode);
      emit(state.copyWith(themeMode: event.mode));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update theme mode', error: e, stackTrace: st);
    }
  }

  Future<void> _onToggleDynamicColor(
    ToggleDynamicColorEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyDynamicColor, event.enabled);
      emit(state.copyWith(dynamicColor: event.enabled));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to toggle dynamic color', error: e, stackTrace: st);
    }
  }

  Future<void> _onUpdateColorPalette(
    UpdateColorPaletteEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyColorPalette, event.palette);
      emit(state.copyWith(colorPalette: event.palette));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update color palette', error: e, stackTrace: st);
    }
  }

  Future<void> _onUpdateCornerRadius(
    UpdateCornerRadiusEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyCornerRadius, event.radius);
      emit(state.copyWith(cornerRadius: event.radius));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update corner radius', error: e, stackTrace: st);
    }
  }

  // ==========================================
  // Accessibility
  // ==========================================

  Future<void> _onUpdateFontSize(
    UpdateFontSizeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyFontSize, event.size);
      emit(state.copyWith(fontSize: event.size));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update font size', error: e, stackTrace: st);
    }
  }

  Future<void> _onUpdateFontFamily(
    UpdateFontFamilyEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyFontFamily, event.family);
      emit(state.copyWith(fontFamily: event.family));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update font family', error: e, stackTrace: st);
    }
  }

  Future<void> _onUpdateTextAlignment(
    UpdateTextAlignmentEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(_keyTextAlign, _textAlignToIndex(event.alignment));
      emit(state.copyWith(textAlignment: event.alignment));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update text alignment', error: e, stackTrace: st);
    }
  }

  Future<void> _onUpdateLineSpacing(
    UpdateLineSpacingEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_keyLineSpacing, event.spacing);
      emit(state.copyWith(lineSpacing: event.spacing));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to update line spacing', error: e, stackTrace: st);
    }
  }

  Future<void> _onToggleHighContrast(
    ToggleHighContrastEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyHighContrast, event.enabled);
      emit(state.copyWith(highContrast: event.enabled));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to toggle high contrast', error: e, stackTrace: st);
    }
  }

  Future<void> _onToggleMotionReduced(
    ToggleMotionReducedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyMotionReduced, event.enabled);
      emit(state.copyWith(motionReduced: event.enabled));
    } catch (e, st) {
      AppLogger.e('[SettingsBloc] Failed to toggle motion reduced', error: e, stackTrace: st);
    }
  }

  // ==========================================
  // Notifications
  // ==========================================

  Future<void> _onTogglePauseAllNotifications(
    TogglePauseAllNotificationsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(pauseAllNotifications: event.enabled));
    // TODO: Sync to Supabase when online
  }

  Future<void> _onUpdateSleepMode(
    UpdateSleepModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      state.copyWith(
        sleepModeEnabled: event.enabled,
        sleepStartHour: event.startHour ?? state.sleepStartHour,
        sleepStartMinute: event.startMinute ?? state.sleepStartMinute,
        sleepEndHour: event.endHour ?? state.sleepEndHour,
        sleepEndMinute: event.endMinute ?? state.sleepEndMinute,
      ),
    );
    // TODO: Sync to Supabase when online
  }

  Future<void> _onToggleNotification(
    ToggleNotificationEvent event,
    Emitter<SettingsState> emit,
  ) async {
    switch (event.type) {
      case 'posts_and_stories':
        emit(state.copyWith(notifyPostsAndStories: event.enabled));
      case 'live_videos':
        emit(state.copyWith(notifyLiveVideos: event.enabled));
      case 'new_campaigns':
        emit(state.copyWith(notifyNewCampaigns: event.enabled));
      case 'likes':
        emit(state.copyWith(notifyLikes: event.enabled));
      case 'comment_replies':
        emit(state.copyWith(notifyCommentReplies: event.enabled));
      case 'mentions':
        emit(state.copyWith(notifyMentions: event.enabled));
      case 'new_followers':
        emit(state.copyWith(notifyNewFollowers: event.enabled));
      case 'donation_received':
        emit(state.copyWith(notifyDonationReceived: event.enabled));
      case 'campaign_milestone':
        emit(state.copyWith(notifyCampaignMilestone: event.enabled));
      case 'campaign_updates':
        emit(state.copyWith(notifyCampaignUpdates: event.enabled));
      case 'withdrawal_status':
        emit(state.copyWith(notifyWithdrawalStatus: event.enabled));
      case 'direct_messages':
        emit(state.copyWith(notifyDirectMessages: event.enabled));
      case 'message_requests':
        emit(state.copyWith(notifyMessageRequests: event.enabled));
      case 'group_invites':
        emit(state.copyWith(notifyGroupInvites: event.enabled));
    }
    // TODO: Sync to Supabase when online
  }

  Future<void> _onUpdateSummaryFrequency(
    UpdateSummaryFrequencyEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(summaryFrequency: event.frequency));
    // TODO: Sync to Supabase when online
  }

  Future<void> _onToggleEmailNotifications(
    ToggleEmailNotificationsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(emailNotifications: event.enabled));
    // TODO: Sync to Supabase when online
  }

  Future<void> _onToggleSmsNotifications(
    ToggleSmsNotificationsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(smsNotifications: event.enabled));
    // TODO: Sync to Supabase when online
  }

  // ==========================================
  // Clear Messages
  // ==========================================

  void _onClearMessages(
    ClearSettingsMessagesEvent event,
    Emitter<SettingsState> emit,
  ) {
    emit(state.copyWith(message: null, errorMessage: null));
  }
}
