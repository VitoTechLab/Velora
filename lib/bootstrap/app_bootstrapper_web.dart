import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:velora/core/constants/short_en_message.dart';
import 'package:velora/core/utils/log_alias.dart';

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
        'Flutter web error',
        error: details.exception,
        stackTrace: details.stack,
      );
    };

    timeago.setLocaleMessages('en_short_no_ago', ShortEnMessagesNoAgo());
  }

  static Future<void> configureSystemUI() async {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
