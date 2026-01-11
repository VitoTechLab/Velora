import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/password_field.dart';

void main() {
  testWidgets('PasswordField toggles visibility', (tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PasswordField(controller: controller, validator: (_) => null),
        ),
      ),
    );

    // Check initial state - password should be obscured
    expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);

    // Tap to show password
    await tester.tap(find.byIcon(Icons.visibility_outlined));
    await tester.pump();

    // After tapping, icon should change to visibility_off
    expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);
  });

  testWidgets('PasswordField shows strength indicator', (tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PasswordField(
            controller: controller,
            validator: (_) => null,
            showStrengthIndicator: true,
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextFormField), 'Password123!');
    await tester.pump();

    expect(find.text('Strong'), findsOneWidget);
  });
}
