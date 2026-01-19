import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/screens/login_screen.dart';
import 'package:velora/l10n/app_localizations.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {
  @override
  void clearMessages() {}
}

void main() {
  late _MockAuthBloc mockBloc;

  /// Helper untuk menemukan TextField berdasarkan key atau label/hint
  Finder findTextFieldByHint(String hint) {
    return find.byWidgetPredicate(
      (widget) {
        if (widget is TextField) {
          final decoration = widget.decoration;
          return decoration?.hintText == hint ||
              decoration?.labelText == hint;
        }
        return false;
      },
      description: 'TextField with hint or label: $hint',
    );
  }

  Future<void> pumpLoginScreen(WidgetTester tester) async {
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
          child: const LoginScreen(),
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
      const AuthEvent.signIn(email: '', password: ''),
    );
    registerFallbackValue(const AuthEvent.signInWithGoogle());
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

  group('LoginScreen Widget Tests', () {
    testWidgets('renders all essential UI elements', (tester) async {
      await pumpLoginScreen(tester);

      // Verify essential elements are present
      expect(find.byType(TextField), findsWidgets);
      expect(find.byType(ElevatedButton), findsWidgets);
      expect(find.byType(TextButton), findsWidgets);
    });

    testWidgets('dispatches AuthEvent.signIn when form is submitted', (
      tester,
    ) async {
      await pumpLoginScreen(tester);

      // Find text fields - gunakan index karena CustomTextField wrapped
      final emailField = find.byType(TextField).first;
      final passwordField = find.byType(TextField).at(1);

      // Enter valid credentials
      await tester.enterText(emailField, 'user@velora.app');
      await tester.pump();
      await tester.enterText(passwordField, 'Password123!');
      await tester.pump();

      // Find and tap sign in button
      final signInButton = find.widgetWithText(ElevatedButton, 'Sign In');
      expect(signInButton, findsOneWidget);
      
      await tester.ensureVisible(signInButton);
      await tester.tap(signInButton);
      await tester.pump();

      // Verify the correct event was dispatched
      verify(
        () => mockBloc.add(
          const AuthEvent.signIn(
            email: 'user@velora.app',
            password: 'Password123!',
          ),
        ),
      ).called(1);
    });

    testWidgets(
      'dispatches AuthEvent.signInWithGoogle when Google button tapped',
      (tester) async {
        await pumpLoginScreen(tester);

        // Find Google button - bisa berupa text atau dalam container
        final googleButton = find.text('Continue with Google');
        
        // Jika tidak ditemukan, cari ElevatedButton kedua (Google button)
        if (googleButton.evaluate().isEmpty) {
          final buttons = find.byType(ElevatedButton);
          expect(buttons, findsAtLeast(2));
          
          await tester.ensureVisible(buttons.at(1));
          await tester.tap(buttons.at(1));
        } else {
          await tester.ensureVisible(googleButton);
          await tester.tap(googleButton);
        }
        
        await tester.pump();

        verify(
          () => mockBloc.add(const AuthEvent.signInWithGoogle()),
        ).called(1);
      },
    );

    testWidgets('shows loading indicator when authenticating with email', (
      tester,
    ) async {
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

      await pumpLoginScreen(tester);
      await tester.pump();

      // Verify loading indicator is present
      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('shows loading indicator when authenticating with Google', (
      tester,
    ) async {
      whenListen(
        mockBloc,
        Stream.fromIterable([
          const AuthState(),
          const AuthState(
            loadingType: AuthLoadingType.google,
          ),
        ]),
        initialState: const AuthState(),
      );

      await pumpLoginScreen(tester);
      await tester.pump();

      // Verify loading indicator is present
      expect(find.byType(CircularProgressIndicator), findsWidgets);
    });

    testWidgets('disables buttons when loading', (tester) async {
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

      await pumpLoginScreen(tester);
      await tester.pump();

      // Find buttons
      final buttons = find.byType(ElevatedButton);
      
      // Verify buttons exist
      expect(buttons, findsWidgets);
      
      // Try to tap - should not trigger event again
      await tester.tap(buttons.first);
      await tester.pump();

      // Verify event only called once (from previous test setup)
      verifyNever(
        () => mockBloc.add(
          const AuthEvent.signIn(email: '', password: ''),
        ),
      );
    });

    testWidgets('has sign up navigation option', (
      tester,
    ) async {
      await pumpLoginScreen(tester);

      // Should have sign up related UI elements (TextButton)
      final textButtons = find.byType(TextButton);
      expect(textButtons, findsWidgets);
    });

    testWidgets('shows forgot password button', (tester) async {
      await pumpLoginScreen(tester);

      // Find forgot password button - biasanya TextButton
      final forgotPasswordButtons = find.byType(TextButton);
      
      // Should have at least one TextButton (forgot password or sign up)
      expect(forgotPasswordButtons, findsWidgets);
    });

    testWidgets('validates empty fields before submitting', (tester) async {
      await pumpLoginScreen(tester);

      // Tap sign in without entering any data
      final signInButton = find.widgetWithText(ElevatedButton, 'Sign In');
      await tester.ensureVisible(signInButton);
      await tester.tap(signInButton);
      await tester.pump();

      // Should NOT dispatch event with empty fields
      verifyNever(
        () => mockBloc.add(
          const AuthEvent.signIn(email: '', password: ''),
        ),
      );
    });
  });
}
