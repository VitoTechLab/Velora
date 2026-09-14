import 'dart:async' show unawaited;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:velora/core/config/admob_config.dart';
import 'package:velora/core/constants/short_en_message.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/firebase/firebase_initializer.dart';
import 'package:velora/core/firebase/firebase_messaging_service.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/translation/translation.dart';
import 'package:velora/core/ui/app_bottom_sheet.dart';
import 'package:velora/core/utils/bloc_observer.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';

class AppBootstrapper {
  const AppBootstrapper._();

  static Future<void> initializeCore() async {
    WidgetsFlutterBinding.ensureInitialized();

    try {
      await dotenv.load(fileName: '.env.local');
      logi('Environment variables loaded from .env.local');
    } catch (error) {
      logw('Failed to load .env.local, using fallback values: $error');
    }

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

    final navigationService = getIt<NavigationService>();
    AppBottomSheet.navigatorKey = navigationService.navigatorKey;

    final messaging = getIt<FirebaseMessagingService>();
    await messaging.initialize();

    final connectivity = getIt<ConnectivityService>();
    await connectivity.initialize();

    final preloader = getIt<TranslationPreloader>();
    unawaited(preloader.preload(languages: ['en', 'id', 'ja', 'ko', 'zh']));
  }

  static Future<void> configureSystemUI() async {
    await SystemChrome.setPreferredOrientations(
      const [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }
}
