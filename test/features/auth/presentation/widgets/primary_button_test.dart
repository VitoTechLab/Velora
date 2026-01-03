import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';

void main() {
  testWidgets('PrimaryButton shows loader when isLoading true', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PrimaryButton(
            text: 'Submit',
            isLoading: true,
            onPressed: () => tapped = true,
          ),
        ),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.tap(find.byType(ElevatedButton));
    expect(tapped, isFalse, reason: 'Button should be disabled while loading');
  });

  testWidgets('PrimaryButton calls onPressed when enabled', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PrimaryButton(
            text: 'Submit',
            onPressed: () => tapped = true,
          ),
        ),
      ),
    );

    await tester.tap(find.byType(ElevatedButton));
    expect(tapped, isTrue);
  });
}
