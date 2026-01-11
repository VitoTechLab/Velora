import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:velora/core/config/admob_config.dart';
import 'package:velora/core/constants/short_en_message.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/firebase/firebase_initializer.dart';
import 'package:velora/core/firebase/firebase_messaging_service.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/core/utils/bloc_observer.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';
import 'dart:async' show unawaited;
import 'package:velora/core/translation/translation.dart';

class AppBootstrapper {
  const AppBootstrapper._();

  static Future<void> initializeCore() async {
    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (details) {
      loge(
        'Flutter error',
        error: details.exception,
        stackTrace: details.stack,
      );
    };

    Bloc.observer = AppBlocObserver();
    timeago.setLocaleMessages('en_short_no_ago', ShortEnMessagesNoAgo());

    await FirebaseInitializer.initialize();
    await AdMobConfig.initialize();
    await configureDependencies();

    // Initialize AppBottomSheet with navigation key
    final navigationService = getIt<NavigationService>();
    AppBottomSheet.navigatorKey = navigationService.navigatorKey;

    final messaging = getIt<FirebaseMessagingService>();
    await messaging.initialize();

    final connectivity = getIt<ConnectivityService>();
    await connectivity.initialize();

    // Preload translation models in background (non-blocking)
    // This downloads models for specified languages to avoid delays during runtime
    final preloader = getIt<TranslationPreloader>();
    unawaited(preloader.preload(languages: ['en', 'id', 'ja', 'ko', 'zh']));
  }

  static void configureSystemUI() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
