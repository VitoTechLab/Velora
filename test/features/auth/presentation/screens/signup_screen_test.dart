import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/screens/signup_screen.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState>
    implements AuthBloc {
  @override
  void clearMessages() => super.noSuchMethod(
        Invocation.method(#clearMessages, const []),
        returnValue: null,
        returnValueForMissingStub: null,
      );
}

void main() {
  late _MockAuthBloc mockBloc;

  Finder textFieldByLabel(String label) {
    return find.byWidgetPredicate(
      (widget) =>
          widget is TextFormField &&
          widget.decoration?.labelText == label,
      description: 'TextFormField with label $label',
    );
  }

  Future<void> pumpSignUpScreen(WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<AuthBloc>.value(
          value: mockBloc,
          child: const SignUpScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  setUpAll(() {
    registerFallbackValue(const AuthSignOutRequested());
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
    when(() => mockBloc.stream).thenAnswer(
      (_) => const Stream<AuthState>.empty(),
    );
    when(() => mockBloc.add(any())).thenReturn(null);
    when(() => mockBloc.clearMessages()).thenReturn(null);
  });

  testWidgets(
    'does not submit when terms are not accepted',
    (tester) async {
      await pumpSignUpScreen(tester);

      await tester.enterText(
        textFieldByLabel('Email'),
        'user@velora.app',
      );
      await tester.enterText(
        textFieldByLabel('Password'),
        'Password123!',
      );

      await tester.tap(find.text('Create Account'));
      await tester.pump();

      verifyNever(() => mockBloc.add(any()));
    },
  );

  testWidgets(
    'dispatches AuthSignUpRequested when form valid and terms accepted',
    (tester) async {
      await pumpSignUpScreen(tester);

      await tester.enterText(
        textFieldByLabel('Email'),
        'user@velora.app',
      );
      await tester.enterText(
        textFieldByLabel('Password'),
        'Password123!',
      );

      await tester.tap(find.byType(Checkbox));
      await tester.pump();

      await tester.tap(find.text('Create Account'));
      await tester.pump();

      verify(
        () => mockBloc.add(
          const AuthSignUpRequested(
            email: 'user@velora.app',
            password: 'Password123!',
          ),
        ),
      ).called(1);

      final emailField =
          tester.widget<TextFormField>(textFieldByLabel('Email'));
      final passwordField =
          tester.widget<TextFormField>(textFieldByLabel('Password'));
      expect(emailField.controller?.text, isEmpty);
      expect(passwordField.controller?.text, isEmpty);
    },
  );
}
