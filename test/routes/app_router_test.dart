import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';
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
    registerFallbackValue(const AuthSignOutRequested());
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
        child: MaterialApp.router(
          routerConfig: router.router,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
        ),
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
      state: const AuthState(status: AuthStatus.unauthenticated),
    );

    expect(router.router.routeInformationProvider.value.uri.toString(), AppRoutePath.signIn);
  });

  testWidgets('email unverified users see verification screen', (tester) async {
    final router = await pumpRouter(
      tester,
      state: const AuthState(status: AuthStatus.emailUnverified),
    );

    expect(router.router.routeInformationProvider.value.uri.toString(), AppRoutePath.verificationEmail);
  });

  testWidgets('unknown status redirects to create post', (tester) async {
    final router = await pumpRouter(
      tester,
      state: const AuthState(status: AuthStatus.unknown),
    );

    expect(router.router.routeInformationProvider.value.uri.toString(), AppRoutePath.createPost);
  });
}
