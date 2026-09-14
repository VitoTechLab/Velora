import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_text_field.dart';

void main() {
  late TextEditingController controller;
  late FocusNode focusNode;

  setUp(() {
    controller = TextEditingController();
    focusNode = FocusNode();
  });

  tearDown(() {
    controller.dispose();
    focusNode.dispose();
  });

  Widget buildTestWidget(Widget child, {GlobalKey<FormState>? formKey}) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              child,
              TextButton(
                onPressed: () => formKey?.currentState?.validate(),
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  testWidgets('shows validation error after blur', (tester) async {
    final formKey = GlobalKey<FormState>();
    await tester.pumpWidget(
      buildTestWidget(
        AuthTextField(
          controller: controller,
          focusNode: focusNode,
          label: 'Email',
          validator: (value) =>
              value == null || value.isEmpty ? 'Required' : null,
        ),
        formKey: formKey,
      ),
    );

    await tester.tap(find.byType(TextFormField));
    await tester.enterText(find.byType(TextFormField), '');
    await tester.tap(find.text('Next'));
    await tester.pump();

    expect(find.text('Required'), findsOneWidget);
  });

  testWidgets('accepts valid input without error', (tester) async {
    final formKey = GlobalKey<FormState>();
    await tester.pumpWidget(
      buildTestWidget(
        AuthTextField(
          controller: controller,
          focusNode: focusNode,
          label: 'Email',
          validator: (value) =>
              value == null || value.isEmpty ? 'Required' : null,
        ),
        formKey: formKey,
      ),
    );

    await tester.enterText(find.byType(TextFormField), 'test@example.com');
    await tester.tap(find.text('Next'));
    await tester.pump();

    expect(find.text('Required'), findsNothing);
  });

  testWidgets('disabled when enabled is false', (tester) async {
    await tester.pumpWidget(
      buildTestWidget(
        AuthTextField(
          controller: controller,
          focusNode: focusNode,
          label: 'Email',
          enabled: false,
        ),
      ),
    );

    final textField = tester.widget<TextFormField>(find.byType(TextFormField));
    expect(textField.enabled, isFalse);
  });
}
