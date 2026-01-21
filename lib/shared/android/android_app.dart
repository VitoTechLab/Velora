import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_gallery_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/post/services/post_sync_service.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:velora/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:velora/features/settings/presentation/bloc/settings_state.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class AndroidApp extends StatefulWidget {
  const AndroidApp({super.key});

  @override
  State<AndroidApp> createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  late final PostSyncService _syncService;

  @override
  void initState() {
    super.initState();
    // Start auto-sync service for offline posts
    _syncService = getIt<PostSyncService>();
    _syncService.startAutoSync();
  }

  @override
  void dispose() {
    _syncService.stopAutoSync();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>().router;

    return MultiBlocProvider(
      providers: [
        // Global AuthBloc - singleton instance from service locator
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        // Global UserPresenceBloc - singleton, auto-start for heartbeat
        BlocProvider<UserPresenceBloc>(
          create: (_) => getIt<UserPresenceBloc>(),
          lazy: false,
        ),
        // SettingsBloc - singleton, manages user preferences including language
        BlocProvider<SettingsBloc>(
          create: (_) => getIt<SettingsBloc>(),
          lazy: false,
        ),
        // FeedBloc - factory instance, new instance per provider
        BlocProvider<FeedBloc>(create: (_) => getIt<FeedBloc>()),
        // PostBloc - factory instance
        BlocProvider<PostBloc>(create: (_) => getIt<PostBloc>()),
        // MediaUploadBloc - factory instance
        BlocProvider<MediaUploadBloc>(
          create: (_) => getIt<MediaUploadBloc>(),
        ),
        // MediaGalleryBloc - factory instance
        BlocProvider<MediaGalleryBloc>(
          create: (_) => getIt<MediaGalleryBloc>(),
        ),
        // CampaignBloc - factory instance
        BlocProvider<CampaignBloc>(create: (_) => getIt<CampaignBloc>()),
        // SocialRelationBloc - factory instance
        BlocProvider<SocialRelationBloc>(
          create: (_) => getIt<SocialRelationBloc>(),
        ),
        // ProfileBloc - factory instance
        BlocProvider<ProfileBloc>(create: (_) => getIt<ProfileBloc>()),
        // NotificationBloc - factory instance
        BlocProvider<NotificationBloc>(
          create: (_) => getIt<NotificationBloc>(),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        buildWhen: (prev, curr) =>
            prev.languageCode != curr.languageCode ||
            prev.themeMode != curr.themeMode,
        builder: (context, settingsState) {
          // Convert language code string to Locale
          final locale = _parseLocale(settingsState.languageCode);
          // Convert theme mode string to ThemeMode
          final themeMode = _parseThemeMode(settingsState.themeMode);

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Velora',
            // Dynamic locale based on user settings
            locale: locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            theme: buildTheme(Brightness.light),
            darkTheme: buildTheme(Brightness.dark),
            // Dynamic theme mode based on user settings
            themeMode: themeMode,
            scaffoldMessengerKey: AppMessenger.messengerKey,
            routerConfig: router,
          );
        },
      ),
    );
  }

  /// Parse theme mode string to ThemeMode
  /// Supports: light, dark, system
  ThemeMode _parseThemeMode(String? mode) {
    if (mode == null || mode.isEmpty) return ThemeMode.system;

    switch (mode.toLowerCase()) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  /// Parse language code string to Locale
  /// Supports: en, id, ko, ja, zh
  Locale? _parseLocale(String? code) {
    if (code == null || code.isEmpty) return null;

    switch (code.toLowerCase()) {
      case 'en':
        return const Locale('en', 'US');
      case 'id':
        return const Locale('id', 'ID');
      case 'ko':
        return const Locale('ko', 'KR');
      case 'ja':
        return const Locale('ja', 'JP');
      case 'zh':
        return const Locale('zh', 'CN');
      default:
        return null; // Use system default
    }
  }
}
