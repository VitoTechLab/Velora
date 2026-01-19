import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/presentation/widgets/empty_feed_widget.dart';
import 'package:velora/l10n/app_localizations.dart';

void main() {
  Widget buildTestWidget(Widget child) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en')],
      home: Scaffold(body: child),
    );
  }

  testWidgets('shows default messages without refresh button', (tester) async {
    await tester.pumpWidget(buildTestWidget(const EmptyFeedWidget()));
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.byType(EmptyFeedWidget), findsOneWidget);
    expect(find.textContaining('posts', findRichText: true), findsWidgets);
  });

  testWidgets('shows custom message when provided', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        const EmptyFeedWidget(
          message: 'Custom message',
          subtitle: 'Custom subtitle',
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('Custom message'), findsOneWidget);
    expect(find.text('Custom subtitle'), findsOneWidget);
  });

  testWidgets('renders refresh button when callback provided', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      buildTestWidget(
        EmptyFeedWidget(onRefresh: () => tapped = true),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));
    await tester.pump(const Duration(milliseconds: 500));

    final refreshButton = find.text('Refresh');
    expect(refreshButton, findsOneWidget);

    await tester.tap(refreshButton);
    await tester.pump();
    expect(tapped, isTrue);
  });
}
