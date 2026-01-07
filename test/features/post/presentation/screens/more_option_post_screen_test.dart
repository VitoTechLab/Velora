import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/features/post/presentation/screens/more_option_post_screen.dart';

void main() {
  testWidgets('returns updated MoreOptionData when toggles change', (
    tester,
  ) async {
    MoreOptionData? result;

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  result = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MoreOptionPostScreen(),
                    ),
                  );
                },
                child: const Text('Open'),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    // Toggle switches
    await tester.tap(find.byType(Switch).at(0));
    await tester.pump();

    await tester.tap(find.byType(Switch).at(1));
    await tester.pump();

    // Pop screen
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    expect(result, isNotNull);
    expect(result!.commentsEnabled, isFalse);
    expect(result!.hideLikeCount, isTrue);
  });
}
