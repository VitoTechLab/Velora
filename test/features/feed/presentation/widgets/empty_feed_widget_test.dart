import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/presentation/widgets/empty_feed_widget.dart';

void main() {
  testWidgets('shows default messages without refresh button', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: EmptyFeedWidget())),
    );

    expect(find.text('No posts yet'), findsOneWidget);
    expect(find.text('Pull to refresh or check back later'), findsOneWidget);
    expect(find.text('Refresh'), findsNothing);
  });

  testWidgets('renders refresh button when callback provided', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: EmptyFeedWidget(onRefresh: () => tapped = true)),
      ),
    );

    await tester.tap(find.text('Refresh'));
    expect(tapped, isTrue);
  });
}
