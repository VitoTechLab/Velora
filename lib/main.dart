import 'package:flutter/material.dart';
import 'package:velora/app.dart';
import 'package:velora/bootstrap/app_bootstrapper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async {
  await AppBootstrapper.initializeCore();
  await MobileAds.instance.initialize();

  runApp(const VeloraApp());
  AppBootstrapper.configureSystemUI();
}