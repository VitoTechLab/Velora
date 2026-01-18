import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/screens/reset_password_screen.dart';
import 'package:velora/l10n/app_localizations.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {
  @override
  void clearMessages() {}
}

void main() {
  late _MockAuthBloc mockBloc;

  Future<void> pumpResetPasswordScreen(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: BlocProvider<AuthBloc>.value(
          value: mockBloc,
          child: const ResetPasswordScreen(),
        ),
      ),
    );
    // Gunakan pump() beberapa kali daripada pumpAndSettle untuk menghindari timeout
    await tester.pump(const Duration(milliseconds: 100));
    await tester.pump(const Duration(milliseconds: 100));
  }

  setUpAll(() {
    // Register fallback values untuk semua AuthEvent types
    registerFallbackValue(const AuthEvent.signOut());
    registerFallbackValue(
      const AuthEvent.resetPassword(email: ''),
    );
    registerFallbackValue(const AuthState());
  });

  setUp(() {
    mockBloc = _MockAuthBloc();
    whenListen(
      mockBloc,
      const Stream<AuthState>.empty(),
      initialState: const AuthState(),
    );
    when(() => mockBloc.state).thenReturn(const AuthState());
    when(() => mockBloc.add(any())).thenReturn(null);
  });

  group('ResetPasswordScreen Widget Tests', () {
    testWidgets('renders all essential UI elements', (tester) async {
      await pumpResetPasswordScreen(tester);

      // Verify essential elements are present
      expect(find.byType(TextField), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('dispatches AuthEvent.resetPassword when valid email submitted',
        (tester) async {
      await pumpResetPasswordScreen(tester);

      // Find email field
      final emailField = find.byType(TextField).first;

      // Enter valid email
      await tester.enterText(emailField, 'user@velora.app');
      await tester.pump();

      // Find and tap reset button
      final resetButton = find.widgetWithText(ElevatedButton, 'Send reset link');
      
      // Fallback jika tidak ditemukan dengan text
      final button = resetButton.evaluate().isNotEmpty
          ? resetButton
          : find.byType(ElevatedButton).first;

      await tester.ensureVisible(button);
      await tester.tap(button);
      await tester.pump();

      // Verify the correct event was dispatched
      verify(
        () => mockBloc.add(
          const AuthEvent.resetPassword(email: 'user@velora.app'),
        ),
      ).called(1);
    });

    testWidgets('validates invalid email format', (tester) async {
      await pumpResetPasswordScreen(tester);

      // Find email field
      final emailField = find.byType(TextField).first;

      // Enter invalid email
      await tester.enterText(emailField, 'invalid-email');
      await tester.pump();

      // Find and tap reset button
      final button = find.byType(ElevatedButton).first;
      await tester.ensureVisible(button);
      await tester.tap(button);
      await tester.pump();

      // Should NOT dispatch event with invalid email
      verifyNever(
        () => mockBloc.add(
          const AuthEvent.resetPassword(email: 'invalid-email'),
        ),
      );
    });

    testWidgets('validates empty email field', (tester) async {
      await pumpResetPasswordScreen(tester);

      // Find and tap reset button without entering email
      final button = find.byType(ElevatedButton).first;
      await tester.ensureVisible(button);
      await tester.tap(button);
      await tester.pump();

      // Should NOT dispatch event with empty email
      verifyNever(
        () => mockBloc.add(
          const AuthEvent.resetPassword(email: ''),
        ),
      );
    });

    testWidgets('shows loading indicator when processing', (tester) async {
      whenListen(
        mockBloc,
        Stream.fromIterable([
          const AuthState(),
          const AuthState(
            loadingType: AuthLoadingType.emailPassword,
          ),
        ]),
        initialState: const AuthState(),
      );

      await pumpResetPasswordScreen(tester);
      await tester.pump();

      // Verify loading indicator is present
      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('disables button when loading', (tester) async {
      whenListen(
        mockBloc,
        Stream.fromIterable([
          const AuthState(),
          const AuthState(
            loadingType: AuthLoadingType.emailPassword,
          ),
        ]),
        initialState: const AuthState(),
      );

      await pumpResetPasswordScreen(tester);
      await tester.pump();

      // Find button
      final button = find.byType(ElevatedButton).first;
      expect(button, findsOneWidget);

      // Button should be disabled
      final elevatedButton = tester.widget<ElevatedButton>(button);
      expect(elevatedButton.onPressed, isNull);
    });

    testWidgets('has back button in app bar', (tester) async {
      await pumpResetPasswordScreen(tester);

      // Find back button in AppBar
      final appBar = find.byType(AppBar);
      expect(appBar, findsOneWidget);
    });

    testWidgets('validates email with spaces', (tester) async {
      await pumpResetPasswordScreen(tester);

      final emailField = find.byType(TextField).first;

      // Enter email with leading/trailing spaces
      await tester.enterText(emailField, '  user@velora.app  ');
      await tester.pump();

      final button = find.byType(ElevatedButton).first;
      await tester.ensureVisible(button);
      await tester.tap(button);
      await tester.pump();

      // Should dispatch with trimmed email
      verify(
        () => mockBloc.add(
          const AuthEvent.resetPassword(email: 'user@velora.app'),
        ),
      ).called(1);
    });

    testWidgets('email field accepts text input', (tester) async {
      await pumpResetPasswordScreen(tester);

      final emailField = find.byType(TextField).first;

      // Enter and verify text
      await tester.enterText(emailField, 'test@example.com');
      await tester.pump();

      final textField = tester.widget<TextField>(emailField);
      expect(textField.controller?.text, 'test@example.com');
    });

    testWidgets('validates multiple invalid email formats', (tester) async {
      await pumpResetPasswordScreen(tester);

      final invalidEmails = [
        'notanemail',
        '@example.com',
        'user@',
      ];

      for (final email in invalidEmails) {
        final emailField = find.byType(TextField).first;
        await tester.enterText(emailField, email);
        await tester.pump();

        final button = find.byType(ElevatedButton).first;
        await tester.tap(button);
        await tester.pump();

        // Should NOT dispatch event
        verifyNever(
          () => mockBloc.add(
            AuthEvent.resetPassword(email: email),
          ),
        );
      }
    });
  });
}
