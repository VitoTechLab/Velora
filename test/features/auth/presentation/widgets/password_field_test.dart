import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/presentation/widgets/components/password_field.dart';
import 'package:velora/l10n/app_localizations.dart';

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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(body: child),
    );
  }

  group('PasswordField Widget Tests', () {
    testWidgets('renders with default properties', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(controller: controller, validator: (_) => null),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Should find password field and visibility toggle
      expect(find.byType(PasswordField), findsOneWidget);
      expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);
      expect(find.byIcon(Icons.lock_outline), findsOneWidget);
    });

    testWidgets('toggles password visibility', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(controller: controller, validator: (_) => null),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Initially obscured - visibility icon should show
      expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);

      // Tap to show password
      await tester.tap(find.byIcon(Icons.visibility_outlined));
      await tester.pump();

      // Should now show visibility_off icon
      expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);
      expect(find.byIcon(Icons.visibility_outlined), findsNothing);

      // Tap again to hide password
      await tester.tap(find.byIcon(Icons.visibility_off_outlined));
      await tester.pump();

      // Back to visibility icon
      expect(find.byIcon(Icons.visibility_outlined), findsOneWidget);
      expect(find.byIcon(Icons.visibility_off_outlined), findsNothing);
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
      await tester.pump(const Duration(milliseconds: 100));

      // Enter strong password
      await tester.enterText(find.byType(TextFormField), 'Password123!');
      await tester.pump();

      // Should show strength indicator with "Strong" text
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
      await tester.pump(const Duration(milliseconds: 100));

      // Enter weak password
      await tester.enterText(find.byType(TextFormField), '123');
      await tester.pump();

      // Should show "Weak" strength
      expect(find.text('Weak'), findsOneWidget);
    });

    testWidgets('shows medium strength for moderate password', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(
            controller: controller,
            validator: (_) => null,
            showStrengthIndicator: true,
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Enter medium strength password
      await tester.enterText(find.byType(TextFormField), 'password123');
      await tester.pump();

      // Should show "Medium" strength
      expect(find.text('Medium'), findsOneWidget);
    });

    testWidgets('hides strength indicator by default', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(controller: controller, validator: (_) => null),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Enter password
      await tester.enterText(find.byType(TextFormField), 'Password123!');
      await tester.pump();

      // Should not show any strength indicators
      expect(find.text('Strong'), findsNothing);
      expect(find.text('Medium'), findsNothing);
      expect(find.text('Weak'), findsNothing);
    });

    testWidgets('accepts custom label', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(
            controller: controller,
            validator: (_) => null,
            label: 'Custom Password Label',
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Should show custom label
      expect(find.text('Custom Password Label'), findsOneWidget);
    });

    testWidgets('works with FocusNode', (tester) async {
      final focusNode = FocusNode();
      addTearDown(focusNode.dispose);

      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(
            controller: controller,
            focusNode: focusNode,
            validator: (_) => null,
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Focus the field
      focusNode.requestFocus();
      await tester.pump();

      expect(focusNode.hasFocus, isTrue);
    });

    testWidgets('calls onEditingComplete when done', (tester) async {
      var callbackCalled = false;
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(
            controller: controller,
            validator: (_) => null,
            onEditingComplete: () {
              callbackCalled = true;
            },
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Enter text and submit
      await tester.enterText(find.byType(TextFormField), 'password');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      expect(callbackCalled, isTrue);
    });

    testWidgets('updates controller text', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(controller: controller, validator: (_) => null),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Enter text
      await tester.enterText(find.byType(TextFormField), 'mypassword');
      await tester.pump();

      // Controller should have the entered text
      expect(controller.text, 'mypassword');
    });

    testWidgets('shows correct icon for password field', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(controller: controller, validator: (_) => null),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Should have lock icon as prefix
      expect(find.byIcon(Icons.lock_outline), findsOneWidget);
    });

    testWidgets('can use custom prefix icon', (tester) async {
      await tester.pumpWidget(
        buildTestWidget(
          PasswordField(
            controller: controller,
            validator: (_) => null,
            prefixIcon: const Icon(Icons.security),
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 100));

      // Should have custom security icon
      expect(find.byIcon(Icons.security), findsOneWidget);
    });
  });
}
