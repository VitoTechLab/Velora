import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velora/core/utils/app_logger.dart';

/// Configuration class for Google AdMob initialization and ad unit IDs
class AdMobConfig {
  AdMobConfig._();

  // Your AdMob Publisher ID
  static const String publisherId = 'ca-app-pub-8192708275999833';

  // Native Ad Unit ID - Your production ad unit
  static const String nativeAdUnitId = 'ca-app-pub-8192708275999833/6530673693';

  // Test Native Ad Unit ID for development
  static String testNativeAdUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/2247696110'
      : 'ca-app-pub-3940256099942544/3986624511';

  /// Initialize Google Mobile Ads SDK
  /// Should be called early in app startup, typically in main()
  static Future<void> initialize() async {
    try {
      AppLogger.i('[AdMob] Initializing Google Mobile Ads SDK...');

      // Initialize the Mobile Ads SDK
      await MobileAds.instance.initialize();

      // Optional: Set request configuration
      await MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(
          tagForChildDirectedTreatment:
              TagForChildDirectedTreatment.unspecified,
          testDeviceIds: <String>[
            // Add your test device IDs here for testing
            // Example: 'YOUR_DEVICE_ID',
          ],
        ),
      );

      AppLogger.i('[AdMob] Google Mobile Ads SDK initialized successfully');
    } catch (e, stackTrace) {
      AppLogger.e(
        '[AdMob] Failed to initialize Google Mobile Ads SDK',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  /// Get native ad unit ID based on environment
  /// Returns test ad unit ID in debug mode, real ad unit ID in release mode
  static String getNativeAdUnitId({bool useTestAds = true}) {
    return useTestAds ? testNativeAdUnitId : nativeAdUnitId;
  }
}
