import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/domain/repositories/auth_repository.dart';
import 'package:velora/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:velora/features/auth/domain/usecases/watch_auth_snapshot_usecase.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _FakeFailure extends Fake implements Failure {}

void main() {
  late _MockAuthRepository repository;

  const session = AuthSessionEntity(
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

  test('SignInUseCase delegates to repository', () async {
    final useCase = SignInUseCase(repository: repository);
    when(
      () => repository.signIn(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => const Right(session));

    final result = await useCase(email: 'user@velora.app', password: '123456');

    expect(result, equals(const Right(session)));
    verify(
      () => repository.signIn(email: 'user@velora.app', password: '123456'),
    ).called(1);
  });

  test('SignUpUseCase delegates to repository', () async {
    final useCase = SignUpUseCase(repository: repository);
    when(
      () => repository.signUp(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => const Right(session));

    final result = await useCase(email: 'user@velora.app', password: 'Strong!');

    expect(result, equals(const Right(session)));
    verify(
      () => repository.signUp(email: 'user@velora.app', password: 'Strong!'),
    ).called(1);
  });

  test('SignInWithGoogleUseCase delegates to repository', () async {
    final useCase = SignInWithGoogleUseCase(repository: repository);
    when(
      () => repository.signInWithGoogle(),
    ).thenAnswer((_) async => const Right(session));

    final result = await useCase();

    expect(result, equals(const Right(session)));
    verify(() => repository.signInWithGoogle()).called(1);
  });

  test('ResetPasswordUseCase delegates to repository', () async {
    final useCase = ResetPasswordUseCase(repository: repository);
    when(
      () => repository.resetPassword(email: any(named: 'email')),
    ).thenAnswer((_) async => const Right(null));

    final result = await useCase(email: 'user@velora.app');

    expect(result, equals(const Right(null)));
    verify(() => repository.resetPassword(email: 'user@velora.app')).called(1);
  });

  test('SignOutUseCase delegates to repository', () async {
    final useCase = SignOutUseCase(repository: repository);
    when(() => repository.signOut()).thenAnswer((_) async => const Right(null));

    final result = await useCase();

    expect(result, equals(const Right(null)));
    verify(() => repository.signOut()).called(1);
  });

  test('WatchAuthSnapshotUseCase delegates to repository', () async {
    final snapshots = [
      const AuthSnapshotEntity(status: AuthStatusEntity.unauthenticated),
      const AuthSnapshotEntity(status: AuthStatusEntity.authenticated, userId: 'user-123'),
    ];
    when(
      () => repository.watchAuthSnapshot(),
    ).thenAnswer((_) => Stream.fromIterable(snapshots));

    final useCase = WatchAuthSnapshotUseCase(repository: repository);

    expect(await useCase().toList(), equals(snapshots));
    verify(() => repository.watchAuthSnapshot()).called(1);
  });
}
