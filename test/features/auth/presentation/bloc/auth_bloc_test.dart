import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';
import 'package:velora/features/auth/domain/usecases/auth_reset_password.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in_with_google.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_out.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_up.dart';
import 'package:velora/features/auth/domain/usecases/auth_watch_auth_snapshot.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';

class _MockAuthSignUp extends Mock implements AuthSignUp {}

class _MockAuthSignIn extends Mock implements AuthSignIn {}

class _MockAuthSignInWithGoogle extends Mock implements AuthSignInWithGoogle {}

class _MockAuthResetPassword extends Mock implements AuthResetPassword {}

class _MockAuthSignOut extends Mock implements AuthSignOut {}

class _MockAuthWatchAuthSnapshot extends Mock
    implements AuthWatchAuthSnapshot {}

void main() {
  late _MockAuthSignUp signUp;
  late _MockAuthSignIn signIn;
  late _MockAuthSignInWithGoogle signInWithGoogle;
  late _MockAuthResetPassword resetPassword;
  late _MockAuthSignOut signOut;
  late _MockAuthWatchAuthSnapshot watchSnapshot;

  const session = AuthSession(
    userId: 'user-123',
    email: 'user@velora.app',
    emailVerified: true,
  );

  AuthBloc buildBloc() {
    when(
      () => watchSnapshot(),
    ).thenAnswer((_) => const Stream<AuthSnapshot>.empty());
    return AuthBloc(
      signUpUseCase: signUp,
      signInUseCase: signIn,
      signInWithGoogleUseCase: signInWithGoogle,
      resetPasswordUseCase: resetPassword,
      signOutUseCase: signOut,
      watchAuthSnapshotUseCase: watchSnapshot,
    );
  }

  setUp(() {
    signUp = _MockAuthSignUp();
    signIn = _MockAuthSignIn();
    signInWithGoogle = _MockAuthSignInWithGoogle();
    resetPassword = _MockAuthResetPassword();
    signOut = _MockAuthSignOut();
    watchSnapshot = _MockAuthWatchAuthSnapshot();
  });

  blocTest<AuthBloc, AuthState>(
    'emits authenticated state when sign in succeeds',
    build: () {
      when(
        () => signIn(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => const Right(session));
      return buildBloc();
    },
    act: (bloc) => bloc.add(
      const AuthSignInRequested(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatus.authenticated,
        loadingType: AuthLoadingType.none,
        message: 'Welcome back!',
        userId: 'user-123',
      ),
    ],
    verify: (_) {
      verify(
        () => signIn(email: 'user@velora.app', password: 'Password123!'),
      ).called(1);
    },
  );

  blocTest<AuthBloc, AuthState>(
    'emits error when sign in fails',
    build: () {
      const failure = AuthFailure(
        message: 'Invalid credentials',
        type: AuthFailureType.invalidCredentials,
      );
      when(
        () => signIn(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => const Left(failure));
      return buildBloc();
    },
    act: (bloc) => bloc.add(
      const AuthSignInRequested(
        email: 'user@velora.app',
        password: 'bad-password',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatus.unauthenticated,
        loadingType: AuthLoadingType.none,
        errorMessage: 'Invalid credentials',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'emits success message when reset password succeeds',
    build: () {
      when(
        () => resetPassword(email: any(named: 'email')),
      ).thenAnswer((_) async => const Right(null));
      return buildBloc();
    },
    act: (bloc) =>
        bloc.add(const AuthResetPasswordRequested(email: 'user@velora.app')),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        loadingType: AuthLoadingType.none,
        message: 'Password reset link sent to your email.',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'updates state when Supabase snapshot changes',
    build: () => buildBloc(),
    act: (bloc) => bloc.add(
      const AuthSupabaseSnapshotChanged(
        snapshot: AuthSnapshot(
          status: AuthStatus.authenticated,
          userId: 'user-123',
          emailVerified: true,
        ),
      ),
    ),
    expect: () => const [
      AuthState(
        status: AuthStatus.authenticated,
        loadingType: AuthLoadingType.none,
        userId: 'user-123',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'emits email unverified message when sign up succeeds without verification',
    build: () {
      const unverifiedSession = AuthSession(
        userId: 'user-123',
        email: 'user@velora.app',
        emailVerified: false,
      );
      when(
        () => signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => const Right(unverifiedSession));
      return buildBloc();
    },
    act: (bloc) => bloc.add(
      const AuthSignUpRequested(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatus.emailUnverified,
        loadingType: AuthLoadingType.none,
        message:
            "We've sent a verification link to your email. Please verify "
            'before signing in.',
        userId: 'user-123',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'emits error when sign up fails',
    build: () {
      const failure = AuthFailure(
        message: 'Email exists',
        type: AuthFailureType.emailAlreadyInUse,
      );
      when(
        () => signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => const Left(failure));
      return buildBloc();
    },
    act: (bloc) => bloc.add(
      const AuthSignUpRequested(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatus.unauthenticated,
        loadingType: AuthLoadingType.none,
        errorMessage: 'Email exists',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'sign in with Google success updates state',
    build: () {
      when(
        () => signInWithGoogle(),
      ).thenAnswer((_) async => const Right(session));
      return buildBloc();
    },
    act: (bloc) => bloc.add(const AuthSignInWithGoogleRequested()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.google),
      AuthState(
        status: AuthStatus.authenticated,
        loadingType: AuthLoadingType.none,
        message: 'Signed in with Google',
        userId: 'user-123',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'sign in with Google failure emits error',
    build: () {
      const failure = AuthFailure(
        message: 'Google failed',
        type: AuthFailureType.network,
      );
      when(
        () => signInWithGoogle(),
      ).thenAnswer((_) async => const Left(failure));
      return buildBloc();
    },
    act: (bloc) => bloc.add(const AuthSignInWithGoogleRequested()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.google),
      AuthState(
        status: AuthStatus.unauthenticated,
        loadingType: AuthLoadingType.none,
        errorMessage: 'Google failed',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'sign out success resets state to unauthenticated',
    build: () {
      when(() => signOut()).thenAnswer((_) async => const Right(null));
      return buildBloc();
    },
    seed: () =>
        const AuthState(status: AuthStatus.authenticated, userId: 'user-123'),
    act: (bloc) => bloc.add(const AuthSignOutRequested()),
    expect: () => const [
      AuthState(
        status: AuthStatus.authenticated,
        loadingType: AuthLoadingType.emailPassword,
        userId: 'user-123',
      ),
      AuthState(
        status: AuthStatus.unauthenticated,
        loadingType: AuthLoadingType.none,
        userId: null,
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'sign out failure emits error',
    build: () {
      const failure = AuthFailure(
        message: 'Could not sign out',
        type: AuthFailureType.unknown,
      );
      when(() => signOut()).thenAnswer((_) async => const Left(failure));
      return buildBloc();
    },
    act: (bloc) => bloc.add(const AuthSignOutRequested()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(loadingType: AuthLoadingType.none, errorMessage: 'Could not sign out'),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'clear messages resets message and error',
    build: () => buildBloc(),
    seed: () => const AuthState(message: 'Success', errorMessage: 'Error'),
    act: (bloc) => bloc.add(const AuthClearMessagesRequested()),
    expect: () => const [AuthState(message: null, errorMessage: null)],
  );
}
