import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';

void main() {
  testWidgets('CustomTextField shows validation error after blur',
      (tester) async {
    final controller = TextEditingController();
    final focusNode = FocusNode();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              CustomTextField(
                controller: controller,
                focusNode: focusNode,
                label: 'Email',
                validator: (value) =>
                    value == null || value.isEmpty ? 'Required' : null,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );

    await tester.tap(find.byType(TextFormField));
    await tester.enterText(find.byType(TextFormField), '');
    await tester.tap(find.text('Next'));
    await tester.pump();

    expect(find.text('Required'), findsOneWidget);
  });
}
