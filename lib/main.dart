import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/app.dart';
import 'package:velora/bootstrap/app_bootstrapper.dart';
import 'package:velora/core/themes/material_theme.dart';
import 'package:velora/features/auth/presentation/screens/splash_screen.dart';
import 'package:velora/l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBootstrapper.configureSystemUI();

  runApp(const _VeloraBootSplashApp());

  await Future.wait([
    AppBootstrapper.initializeCore(),
    Future<void>.delayed(const Duration(milliseconds: 900)),
  ]);

  runApp(const VeloraApp());
  await AppBootstrapper.configureSystemUI();
}

class _VeloraBootSplashApp extends StatelessWidget {
  const _VeloraBootSplashApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Velora',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      home: const SplashScreen(),
    );
  }
}
