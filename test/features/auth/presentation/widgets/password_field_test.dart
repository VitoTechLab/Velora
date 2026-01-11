import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/password_field.dart';

void main() {
  late TextEditingController controller;

  setUp(() {
    controller = TextEditingController();
  });

  tearDown(() {
    controller.dispose();
  });

  Widget buildTestWidget(Widget child) {
    return MaterialApp(
      home: Scaffold(body: child),
    );
  }

  testWidgets('toggles visibility', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PasswordField(controller: controller, validator: (_) => null),
      ),
    );

    final textField = find.byType(TextFormField);
    expect(tester.widget<TextFormField>(textField).obscureText, isTrue);

    await tester.tap(find.byIcon(Icons.visibility_outlined));
    await tester.pump();

    expect(tester.widget<TextFormField>(textField).obscureText, isFalse);

    await tester.tap(find.byIcon(Icons.visibility_off_outlined));
    await tester.pump();

    expect(tester.widget<TextFormField>(textField).obscureText, isTrue);
  });

  testWidgets('shows strength indicator when enabled', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PasswordField(
          controller: controller,
          validator: (_) => null,
          showStrengthIndicator: true,
        ),
      ),
    );

    await tester.enterText(find.byType(TextFormField), 'Password123!');
    await tester.pump();

    expect(find.text('Strong'), findsOneWidget);
  });

  testWidgets('shows weak strength for short password', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PasswordField(
          controller: controller,
          validator: (_) => null,
          showStrengthIndicator: true,
        ),
      ),
    );

    await tester.enterText(find.byType(TextFormField), '123');
    await tester.pump();

    expect(find.text('Weak'), findsOneWidget);
  });

  testWidgets('hides strength indicator by default', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        PasswordField(controller: controller, validator: (_) => null),
      ),
    );

    await tester.enterText(find.byType(TextFormField), 'Password123!');
    await tester.pump();

    expect(find.text('Strong'), findsNothing);
    expect(find.text('Weak'), findsNothing);
  });
}
