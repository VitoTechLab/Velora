import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';
import 'package:velora/shared/widgets/skeleton_loader.dart';

void main() {
  testWidgets('FeedLoadingShimmer renders skeleton list', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: const Scaffold(body: FeedLoadingShimmer()),
      ),
    );

    expect(find.byType(SkeletonFeedList), findsOneWidget);
  });
}
