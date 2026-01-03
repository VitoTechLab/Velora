import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';
import 'package:velora/features/auth/domain/usecases/auth_reset_password.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in_with_google.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_out.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_up.dart';
import 'package:velora/features/auth/domain/usecases/auth_watch_auth_snapshot.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _FakeFailure extends Fake implements Failure {}

void main() {
  late _MockAuthRepository repository;

  const session = AuthSession(
    userId: 'user-123',
    email: 'user@velora.app',
    emailVerified: true,
  );

  setUpAll(() {
    registerFallbackValue(_FakeFailure());
  });

  setUp(() {
    repository = _MockAuthRepository();
  });

  test('AuthSignIn delegates to repository', () async {
    final useCase = AuthSignIn(repository);
    when(
      () => repository.signIn(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => const Right(session));

    final result = await useCase(email: 'user@velora.app', password: '123456');

    expect(result, equals(const Right(session)));
    verify(
      () => repository.signIn(
        email: 'user@velora.app',
        password: '123456',
      ),
    ).called(1);
  });

  test('AuthSignUp delegates to repository', () async {
    final useCase = AuthSignUp(repository);
    when(
      () => repository.signUp(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => const Right(session));

    final result = await useCase(email: 'user@velora.app', password: 'Strong!');

    expect(result, equals(const Right(session)));
    verify(
      () => repository.signUp(
        email: 'user@velora.app',
        password: 'Strong!',
      ),
    ).called(1);
  });

  test('AuthSignInWithGoogle delegates to repository', () async {
    final useCase = AuthSignInWithGoogle(repository);
    when(() => repository.signInWithGoogle())
        .thenAnswer((_) async => const Right(session));

    final result = await useCase();

    expect(result, equals(const Right(session)));
    verify(() => repository.signInWithGoogle()).called(1);
  });

  test('AuthResetPassword delegates to repository', () async {
    final useCase = AuthResetPassword(repository);
    when(() => repository.resetPassword(email: any(named: 'email')))
        .thenAnswer((_) async => const Right(null));

    final result = await useCase(email: 'user@velora.app');

    expect(result, equals(const Right(null)));
    verify(() => repository.resetPassword(email: 'user@velora.app')).called(1);
  });

  test('AuthSignOut delegates to repository', () async {
    final useCase = AuthSignOut(repository);
    when(() => repository.signOut()).thenAnswer((_) async => const Right(null));

    final result = await useCase();

    expect(result, equals(const Right(null)));
    verify(() => repository.signOut()).called(1);
  });

  test('AuthWatchAuthSnapshot delegates to repository', () async {
    final snapshots = [
      const AuthSnapshot(status: AuthStatus.unauthenticated),
      const AuthSnapshot(status: AuthStatus.authenticated, userId: 'user-123'),
    ];
    when(() => repository.watchAuthSnapshot())
        .thenAnswer((_) => Stream.fromIterable(snapshots));

    final useCase = AuthWatchAuthSnapshot(repository);

    expect(await useCase().toList(), equals(snapshots));
    verify(() => repository.watchAuthSnapshot()).called(1);
  });
}
