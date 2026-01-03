import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';
import 'package:velora/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';

class _MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

void main() {
  late _MockAuthRemoteDataSource remote;
  late AuthRepositoryImpl repository;

  const sampleModel = AuthSessionModel(
    userId: 'user-42',
    email: 'user@velora.app',
    emailVerified: true,
  );

  setUp(() {
    remote = _MockAuthRemoteDataSource();
    repository = AuthRepositoryImpl(remoteDataSource: remote);
  });

  group('signIn', () {
    test('returns Right with mapped session when remote succeeds', () async {
      when(
        () => remote.signIn(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => sampleModel);

      final result = await repository.signIn(
        email: 'user@velora.app',
        password: 'Password123!',
      );

      expect(result.isRight(), isTrue);
      result.fold(
        (_) => fail('Expected a successful session mapping'),
        (session) {
          expect(session, isNotNull);
          expect(session!.userId, equals(sampleModel.userId));
          expect(session.email, equals(sampleModel.email));
          expect(session.emailVerified, isTrue);
        },
      );
      verify(
        () => remote.signIn(
          email: 'user@velora.app',
          password: 'Password123!',
        ),
      ).called(1);
    });

    test('returns AuthFailure when remote throws', () async {
      when(
        () => remote.signIn(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenThrow(Exception('network down'));

      final result = await repository.signIn(
        email: 'user@velora.app',
        password: 'Password123!',
      );

      expect(result.isLeft(), isTrue);
      result.fold(
        (failure) => expect(failure, isA<AuthFailure>()),
        (_) => fail('Expected failure'),
      );
    });
  });

  group('watchAuthSnapshot', () {
    test('emits snapshots mapped from remote datasource', () async {
      when(() => remote.currentSession()).thenReturn(null);
      when(() => remote.watchAuthSession()).thenAnswer(
        (_) => Stream.fromIterable([
          sampleModel,
          null,
        ]),
      );

      final snapshots = repository.watchAuthSnapshot();

      await expectLater(
        snapshots,
        emitsInOrder([
          predicate<AuthSnapshot>(
            (value) =>
                value.status == AuthStatus.unauthenticated &&
                value.userId == null,
          ),
          predicate<AuthSnapshot>(
            (value) =>
                value.status == AuthStatus.authenticated &&
                value.userId == sampleModel.userId,
          ),
          predicate<AuthSnapshot>(
            (value) => value.status == AuthStatus.unauthenticated,
          ),
        ]),
      );
    });
  });
}
