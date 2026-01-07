import 'package:flutter/material.dart';
import 'package:velora/app.dart';
import 'package:velora/bootstrap/app_bootstrapper.dart';

Future<void> main() async {
  await AppBootstrapper.initializeCore();

  runApp(const VeloraApp());
  AppBootstrapper.configureSystemUI();
}
