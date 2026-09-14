import 'package:flutter/widgets.dart';
import 'package:velora/shared/android/android_app.dart';
import 'package:velora/shared/common/common_app.dart';
import 'package:velora/shared/ios/ios_app.dart';

class PlatformApp extends StatelessWidget {
  const PlatformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonApp(
      androidApp: AndroidApp(),
      iosApp: IOSApp(),
    );
  }
}
