import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/screens/reset_password_screen.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState> implements AuthBloc {
  @override
  void clearMessages() => super.noSuchMethod(
    Invocation.method(#clearMessages, const []),
    returnValue: null,
    returnValueForMissingStub: null,
  );
}

void main() {
  late _MockAuthBloc mockBloc;
  late StreamController<AuthState> controller;

  Finder textFieldByLabel(String label) {
    return find.byWidgetPredicate(
      (widget) =>
          widget is TextFormField && widget.decoration?.labelText == label,
      description: 'TextFormField with label $label',
    );
  }

  Future<void> pumpScreen(WidgetTester tester) async {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => BlocProvider<AuthBloc>.value(
            value: mockBloc,
            child: const ResetPasswordScreen(),
          ),
        ),
        GoRoute(
          path: '/auth/signin',
          builder: (context, state) => const SizedBox.shrink(),
        ),
      ],
    );

    await tester.pumpWidget(MaterialApp.router(routerConfig: router));
    await tester.pumpAndSettle();
  }

  setUpAll(() {
    registerFallbackValue(const AuthSignOutRequested());
    registerFallbackValue(const AuthState());
  });

  setUp(() {
    mockBloc = _MockAuthBloc();
    controller = StreamController<AuthState>.broadcast();
    when(() => mockBloc.state).thenReturn(const AuthState());
    when(() => mockBloc.stream).thenAnswer((_) => controller.stream);
    when(() => mockBloc.add(any())).thenReturn(null);
    when(() => mockBloc.clearMessages()).thenReturn(null);
  });

  tearDown(() {
    controller.close();
  });

  testWidgets('dispatches reset password event when form is valid', (
    tester,
  ) async {
    await pumpScreen(tester);

    await tester.enterText(textFieldByLabel('Email'), 'user@velora.app');
    await tester.tap(find.text('Send reset link'));
    await tester.pump();

    verify(
      () => mockBloc.add(
        const AuthResetPasswordRequested(email: 'user@velora.app'),
      ),
    ).called(1);
  });

  testWidgets('shows dialog when success message emitted', (tester) async {
    await pumpScreen(tester);

    controller.add(const AuthState(message: 'Check your inbox'));
    await tester.pump();

    expect(find.text('Check your email'), findsOneWidget);
    expect(find.text('Check your inbox'), findsOneWidget);
  });
}
