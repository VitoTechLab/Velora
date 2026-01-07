import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:velora/core/config/admob_config.dart';
import 'package:velora/core/utils/app_logger.dart';

/// Native Ad Widget for displaying AdMob native ads in feed
/// Uses factory ID 'veloraFeedNative' which must be registered in Android/iOS
class NativeAdWidget extends HookWidget {
  final double height;
  final bool useTestAds;
  final String factoryId;

  const NativeAdWidget({
    super.key,
    this.height = 110,
    this.useTestAds = false,
    this.factoryId = 'veloraFeedNative',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ad = useState<NativeAd?>(null);
    final loaded = useState(false);

    useEffect(() {
      final nativeAd = NativeAd(
        adUnitId: AdMobConfig.getNativeAdUnitId(useTestAds: useTestAds),
        factoryId: factoryId,
        request: const AdRequest(),
        listener: NativeAdListener(
          onAdLoaded: (_) {
            AppLogger.i('[NativeAd] Ad loaded successfully');
            loaded.value = true;
          },
          onAdFailedToLoad: (ad, error) {
            AppLogger.e('[NativeAd] Failed to load ad', error: error);
            ad.dispose();
          },
        ),
      )..load();

      ad.value = nativeAd;

      return () {
        AppLogger.i('[NativeAd] Disposing ad');
        nativeAd.dispose();
      };
    }, []);

    if (!loaded.value || ad.value == null) {
      return Container(
        height: height,
        color: theme.colorScheme.surfaceContainerLowest,
      );
    }

    return Container(
      height: height,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AdWidget(ad: ad.value!),
      ),
    );
  }
}
