import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:velora/features/auth/domain/usecases/watch_auth_snapshot_usecase.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';

class _MockSignUpUseCase extends Mock implements SignUpUseCase {}

class _MockSignInUseCase extends Mock implements SignInUseCase {}

class _MockSignInWithGoogleUseCase extends Mock implements SignInWithGoogleUseCase {}

class _MockResetPasswordUseCase extends Mock implements ResetPasswordUseCase {}

class _MockSignOutUseCase extends Mock implements SignOutUseCase {}

class _MockWatchAuthSnapshotUseCase extends Mock
    implements WatchAuthSnapshotUseCase {}

void main() {
  late _MockSignUpUseCase signUp;
  late _MockSignInUseCase signIn;
  late _MockSignInWithGoogleUseCase signInWithGoogle;
  late _MockResetPasswordUseCase resetPassword;
  late _MockSignOutUseCase signOut;
  late _MockWatchAuthSnapshotUseCase watchSnapshot;

  const session = AuthSessionEntity(
    userId: 'user-123',
    email: 'user@velora.app',
    emailVerified: true,
  );

  AuthBloc buildBloc() {
    when(
      () => watchSnapshot(),
    ).thenAnswer((_) => const Stream<AuthSnapshotEntity>.empty());
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
    signUp = _MockSignUpUseCase();
    signIn = _MockSignInUseCase();
    signInWithGoogle = _MockSignInWithGoogleUseCase();
    resetPassword = _MockResetPasswordUseCase();
    signOut = _MockSignOutUseCase();
    watchSnapshot = _MockWatchAuthSnapshotUseCase();
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
      const AuthEvent.signIn(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatusEntity.authenticated,
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
      const AuthEvent.signIn(
        email: 'user@velora.app',
        password: 'bad-password',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatusEntity.unauthenticated,
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
        bloc.add(const AuthEvent.resetPassword(email: 'user@velora.app')),
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
      const AuthEvent.authSnapshotChanged(
        snapshot: AuthSnapshotEntity(
          status: AuthStatusEntity.authenticated,
          userId: 'user-123',
        ),
      ),
    ),
    expect: () => const [
      AuthState(
        status: AuthStatusEntity.authenticated,
        loadingType: AuthLoadingType.none,
        userId: 'user-123',
      ),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'emits email unverified message when sign up succeeds without verification',
    build: () {
      const unverifiedSession = AuthSessionEntity(
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
      const AuthEvent.signUp(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatusEntity.emailUnverified,
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
      const AuthEvent.signUp(
        email: 'user@velora.app',
        password: 'Password123!',
      ),
    ),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(
        status: AuthStatusEntity.unauthenticated,
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
    act: (bloc) => bloc.add(const AuthEvent.signInWithGoogle()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.google),
      AuthState(
        status: AuthStatusEntity.authenticated,
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
    act: (bloc) => bloc.add(const AuthEvent.signInWithGoogle()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.google),
      AuthState(
        status: AuthStatusEntity.unauthenticated,
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
        const AuthState(status: AuthStatusEntity.authenticated, userId: 'user-123'),
    act: (bloc) => bloc.add(const AuthEvent.signOut()),
    expect: () => const [
      AuthState(
        status: AuthStatusEntity.authenticated,
        loadingType: AuthLoadingType.emailPassword,
        userId: 'user-123',
      ),
      AuthState(
        status: AuthStatusEntity.unauthenticated,
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
    act: (bloc) => bloc.add(const AuthEvent.signOut()),
    expect: () => const [
      AuthState(loadingType: AuthLoadingType.emailPassword),
      AuthState(loadingType: AuthLoadingType.none, errorMessage: 'Could not sign out'),
    ],
  );

  blocTest<AuthBloc, AuthState>(
    'clear messages resets message and error',
    build: () => buildBloc(),
    seed: () => const AuthState(message: 'Success', errorMessage: 'Error'),
    act: (bloc) => bloc.add(const AuthEvent.clearMessages()),
    expect: () => const [AuthState(message: null, errorMessage: null)],
  );
}
