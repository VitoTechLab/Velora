import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/screens/verification_email_screen.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState>
    implements AuthBloc {}

void main() {
  late _MockAuthBloc mockBloc;
  late GoRouter router;

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
  });

  Future<void> pumpVerificationScreen(WidgetTester tester) async {
    router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => BlocProvider<AuthBloc>.value(
            value: mockBloc,
            child: const VerificationEmailScreen(),
          ),
        ),
        GoRoute(
          path: '/auth/signin',
          builder: (context, state) => const SizedBox.shrink(),
        ),
      ],
    );

    await tester.pumpWidget(
      MaterialApp.router(routerConfig: router),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('sign out button dispatches AuthSignOutRequested and navigates',
      (tester) async {
    await pumpVerificationScreen(tester);

    await tester.tap(find.text('Wrong email? Sign out'));
    await tester.pumpAndSettle();

    verify(() => mockBloc.add(const AuthSignOutRequested())).called(1);
    expect(router.location, '/auth/signin');
  });

  testWidgets('primary CTA navigates to sign in', (tester) async {
    await pumpVerificationScreen(tester);

    await tester.tap(find.text("I've verified my email"));
    await tester.pumpAndSettle();

    expect(router.location, '/auth/signin');
  });
}
