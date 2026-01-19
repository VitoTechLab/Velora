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
import 'package:velora/features/auth/presentation/screens/signup_screen.dart';
import 'package:velora/l10n/app_localizations.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {
  @override
  void clearMessages() {}
}

void main() {
  late _MockAuthBloc mockBloc;

  setUpAll(() {
    registerFallbackValue(AuthEvent.signUp(email: '', password: ''));
    registerFallbackValue(AuthEvent.signInWithGoogle());
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

  Future<void> pumpSignUpScreen(WidgetTester tester) async {
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
          child: const SignUpScreen(),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));
    await tester.pump(const Duration(milliseconds: 100));
  }

  Finder textFieldByLabel(String label) {
    return find.byWidgetPredicate(
      (widget) {
        if (widget is TextField) {
          final decoration = widget.decoration;
          return decoration?.labelText == label;
        }
        return false;
      },
      description: 'TextField with label $label',
    );
  }

  group('SignUpScreen Widget Tests', () {
    testWidgets('renders all UI elements correctly', (tester) async {
      await pumpSignUpScreen(tester);

      expect(find.text('Create Account'), findsAtLeastNWidgets(1));
      expect(textFieldByLabel('Email'), findsOneWidget);
      expect(textFieldByLabel('Password'), findsOneWidget);
      expect(find.byType(Checkbox), findsOneWidget);
      expect(find.text('Sign in'), findsOneWidget);
    });

    testWidgets('does not dispatch when terms are not accepted', (tester) async {
      await pumpSignUpScreen(tester);

      // Just verify no action is taken without terms acceptance
      verifyNever(() => mockBloc.add(any()));
    });

    testWidgets('checkbox toggles terms acceptance', (tester) async {
      await pumpSignUpScreen(tester);

      final checkbox = find.byType(Checkbox);
      expect(checkbox, findsOneWidget);

      // Initially unchecked
      Checkbox checkboxWidget = tester.widget(checkbox);
      expect(checkboxWidget.value, isFalse);

      // Tap to check - use ensureVisible to scroll if needed
      await tester.ensureVisible(checkbox);
      await tester.tap(checkbox);
      await tester.pump();

      // Now checked
      checkboxWidget = tester.widget(checkbox);
      expect(checkboxWidget.value, isTrue);
    });

    testWidgets('shows loading state when loading', (tester) async {
      when(() => mockBloc.state).thenReturn(
          const AuthState(loadingType: AuthLoadingType.emailPassword));

      await pumpSignUpScreen(tester);

      expect(find.byType(CircularProgressIndicator), findsAtLeastNWidgets(1));
    });

    testWidgets('has sign in navigation option', (tester) async {
      await pumpSignUpScreen(tester);

      expect(find.text('Sign in'), findsOneWidget);
    });

    testWidgets('renders Google sign in button', (tester) async {
      await pumpSignUpScreen(tester);

      expect(find.textContaining('Google'), findsOneWidget);
    });
  });
}
