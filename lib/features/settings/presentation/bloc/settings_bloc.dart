import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/features/settings/data/datasources/local/settings_local_datasource.dart';
import 'package:velora/features/settings/presentation/bloc/settings_event.dart';
import 'package:velora/features/settings/presentation/bloc/settings_state.dart';

/// SettingsBloc manages user preferences for theme, language, accessibility,
/// and notifications. Settings are persisted to SharedPreferences via
/// [SettingsLocalDataSource] for offline support and fast loading.
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({required SettingsLocalDataSource localDataSource})
      : _localDataSource = localDataSource,
        super(const SettingsState()) {
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

  final SettingsLocalDataSource _localDataSource;

  // ==========================================
  // Load Settings
  // ==========================================

  Future<void> _onLoadSettings(
    LoadSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final settings = await _localDataSource.loadAllSettings();

      emit(
        state.copyWith(
          isLoading: false,
          // Language
          languageCode: settings.languageCode,
          // Theme
          themeMode: settings.themeMode,
          dynamicColor: settings.dynamicColor,
          colorPalette: settings.colorPalette,
          cornerRadius: settings.cornerRadius,
          // Accessibility - Text
          fontSize: settings.fontSize,
          fontFamily: settings.fontFamily,
          textAlignment: settings.textAlignmentString,
          lineSpacing: settings.lineSpacing,
          // Accessibility - Visual
          highContrast: settings.highContrast,
          motionReduced: settings.motionReduced,
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
      await _localDataSource.setLanguageCode(event.languageCode);

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
      await _localDataSource.setThemeMode(event.mode);
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
      await _localDataSource.setDynamicColor(event.enabled);
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
      await _localDataSource.setColorPalette(event.palette);
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
      await _localDataSource.setCornerRadius(event.radius);
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
      await _localDataSource.setFontSize(event.size);
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
      await _localDataSource.setFontFamily(event.family);
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
      await _localDataSource.setTextAlignment(_textAlignToIndex(event.alignment));
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
      await _localDataSource.setLineSpacing(event.spacing);
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
      await _localDataSource.setHighContrast(event.enabled);
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
      await _localDataSource.setMotionReduced(event.enabled);
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
    // Note: Sync to Supabase when online feature will be implemented
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
    // Note: Sync to Supabase when online feature will be implemented
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
    // Note: Sync to Supabase when online feature will be implemented
  }

  Future<void> _onUpdateSummaryFrequency(
    UpdateSummaryFrequencyEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(summaryFrequency: event.frequency));
    // Note: Sync to Supabase when online feature will be implemented
  }

  Future<void> _onToggleEmailNotifications(
    ToggleEmailNotificationsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(emailNotifications: event.enabled));
    // Note: Sync to Supabase when online feature will be implemented
  }

  Future<void> _onToggleSmsNotifications(
    ToggleSmsNotificationsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(smsNotifications: event.enabled));
    // Note: Sync to Supabase when online feature will be implemented
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
