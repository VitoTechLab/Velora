import 'package:flutter/widgets.dart';
import 'package:velora/shared/android/android_app.dart';
import 'package:velora/shared/common/common_app.dart';
import 'package:velora/shared/ios/ios_app.dart';
import 'package:velora/shared/web/web_app.dart';

class VeloraApp extends StatelessWidget {
  const VeloraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonApp(
      androidApp: AndroidApp(),
      iosApp: IOSApp(),
      webApp: WebApp(),
    );
  }
}
