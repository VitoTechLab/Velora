import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:velora/app.dart';
import 'package:velora/bootstrap/app_bootstrapper.dart';

Future<void> main() async {
  await AppBootstrapper.initializeCore();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('id'), Locale('ko')],
      path: 'assets/languages',
      // fallbackLocale: const Locale('en'),
      // startLocale: const Locale('id'),
      child: const VeloraApp(),
    ),

  );
  AppBootstrapper.configureSystemUI();
}