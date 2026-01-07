import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Chooses the correct platform wrapper for the app.
class CommonApp extends StatelessWidget {
  const CommonApp({
    super.key,
    required this.androidApp,
    this.iosApp,
    this.webApp,
  });

  final Widget androidApp;
  final Widget? iosApp;
  final Widget? webApp;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return webApp ?? androidApp;
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return iosApp ?? androidApp;
      case TargetPlatform.android:
        return androidApp;
      default:
        return androidApp;
    }
  }
}
