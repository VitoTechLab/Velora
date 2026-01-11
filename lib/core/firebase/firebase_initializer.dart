import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:velora/core/config/firebase_options.dart';

class FirebaseInitializer {
  const FirebaseInitializer._();

  static Future<void> initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    if (!kIsWeb) {
      // ignore: deprecated_member_use
      await FirebaseAppCheck.instance.activate(
        webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key'),
        androidProvider: AndroidProvider.debug,
        appleProvider: AppleProvider.debug,
      );
    }
  }
}
