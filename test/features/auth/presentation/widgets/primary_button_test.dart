import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';

void main() {
  Widget buildTestWidget(Widget child) {
    return MaterialApp(
      home: Scaffold(body: child),
    );
  }

  testWidgets('shows loader when isLoading true', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      buildTestWidget(
        PrimaryButton(
          text: 'Submit',
          isLoading: true,
          onPressed: () => tapped = true,
        ),
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    // Text exists in widget tree but hidden with AnimatedOpacity(opacity: 0)
    expect(find.text('Submit'), findsOneWidget);
    
    // Verify text is hidden (opacity = 0)
    final opacity = tester.widget<AnimatedOpacity>(
      find.ancestor(
        of: find.text('Submit'),
        matching: find.byType(AnimatedOpacity),
      ),
    );
    expect(opacity.opacity, 0);
    
    await tester.tap(find.byType(ElevatedButton));
    expect(tapped, isFalse, reason: 'Button should be disabled while loading');
  });

  testWidgets('calls onPressed when enabled', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      buildTestWidget(
        PrimaryButton(text: 'Submit', onPressed: () => tapped = true),
      ),
    );

    expect(find.text('Submit'), findsOneWidget);
    
    await tester.tap(find.byType(ElevatedButton));
    expect(tapped, isTrue);
  });

  testWidgets('disabled when onPressed is null', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PrimaryButton(text: 'Submit', onPressed: null),
      ),
    );

    final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
    expect(button.onPressed, isNull);
  });

  testWidgets('shows correct text', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PrimaryButton(text: 'Login', onPressed: () {}),
      ),
    );

    expect(find.text('Login'), findsOneWidget);
  });
}
