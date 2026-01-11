import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/settings/domain/entities/user_preferences.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';

class _MockAuthBloc extends MockBloc<AuthEvent, AuthState>
    implements AuthBloc {}

void main() {
  late _MockAuthBloc authBloc;

  setUpAll(() {
    registerFallbackValue(const AuthEvent.signOut());
    registerFallbackValue(const AuthState());
  });

  setUp(() {
    authBloc = _MockAuthBloc();
    when(
      () => authBloc.stream,
    ).thenAnswer((_) => const Stream<AuthState>.empty());
  });

  Future<AppRouter> pumpRouter(
    WidgetTester tester, {
    required AuthState state,
  }) async {
    when(() => authBloc.state).thenReturn(state);
    final router = AppRouter(NavigationService(), UserPreferences(), authBloc);
    await tester.pumpWidget(
      BlocProvider<AuthBloc>.value(
        value: authBloc,
        child: MaterialApp.router(routerConfig: router.router),
      ),
    );
    await tester.pumpAndSettle();
    return router;
  }

  testWidgets('unauthenticated users are redirected to sign in', (
    tester,
  ) async {
    final router = await pumpRouter(
      tester,
      state: const AuthState(status: AuthStatusEntity.unauthenticated),
    );

    expect(router.router.location, AppRoutePath.signIn);
  });

  testWidgets('email unverified users see verification screen', (tester) async {
    final router = await pumpRouter(
      tester,
      state: const AuthState(status: AuthStatusEntity.emailUnverified),
    );

    expect(router.router.location, AppRoutePath.verificationEmail);
  });

  testWidgets('unknown status redirects to create post', (tester) async {
    final router = await pumpRouter(
      tester,
      state: const AuthState(status: AuthStatusEntity.unknown),
    );

    expect(router.router.location, AppRoutePath.createPost);
  });
}
