import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import 'package:velora/features/auth/data/datasources/auth_remote_datasource_impl.dart';

class _MockSupabaseClient extends Mock implements supabase.SupabaseClient {}

class _MockSupabaseAuth extends Mock implements supabase.SupabaseAuth {}

class _MockAuthResponse extends Mock implements supabase.AuthResponse {}

class _MockSession extends Mock implements supabase.Session {}

class _MockSupabaseUser extends Mock implements supabase.User {}

class _MockSupabaseAuthState extends Mock implements supabase.AuthState {}

class _MockGoogleSignIn extends Mock implements GoogleSignIn {}

class _MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {}

class _MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {}

void main() {
  late _MockSupabaseClient supabaseClient;
  late _MockSupabaseAuth goTrue;
  late _MockGoogleSignIn googleSignIn;
  late AuthRemoteDataSourceImpl dataSource;

  final mockResponse = _MockAuthResponse();
  final mockSession = _MockSession();
  final mockUser = _MockSupabaseUser();

  setUp(() {
    supabaseClient = _MockSupabaseClient();
    goTrue = _MockSupabaseAuth();
    googleSignIn = _MockGoogleSignIn();
    when(() => supabaseClient.auth).thenReturn(goTrue);
    when(() => mockResponse.session).thenReturn(mockSession);
    when(() => mockSession.user).thenReturn(mockUser);
    when(() => mockUser.id).thenReturn('user-123');
    when(() => mockUser.email).thenReturn('user@velora.app');
    when(() => mockUser.emailConfirmedAt).thenReturn(DateTime.now());
    dataSource = AuthRemoteDataSourceImpl(
      supabaseClient: supabaseClient,
      googleSignIn: googleSignIn,
      isWebOverride: false,
    );
  });

  group('signIn', () {
    test('maps session returned by Supabase', () async {
      when(
        () => goTrue.signInWithPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await dataSource.signIn(
        email: 'user@velora.app',
        password: 'Password123!',
      );

      expect(result?.userId, equals('user-123'));
      expect(result?.email, equals('user@velora.app'));
      expect(result?.emailVerified, isTrue);
      verify(
        () => goTrue.signInWithPassword(
          email: 'user@velora.app',
          password: 'Password123!',
        ),
      ).called(1);
    });
  });

  group('signUp', () {
    test('delegates to Supabase and maps response', () async {
      when(
        () => goTrue.signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await dataSource.signUp(
        email: 'user@velora.app',
        password: 'Password123!',
      );

      expect(result?.userId, equals('user-123'));
      verify(
        () => goTrue.signUp(
          email: 'user@velora.app',
          password: 'Password123!',
        ),
      ).called(1);
    });
  });

  group('signInWithGoogle', () {
    setUp(() {
      when(() => googleSignIn.signOut()).thenAnswer((_) async {
        return null;
      });
    });

    test('performs Google flow and maps Supabase session', () async {
      final account = _MockGoogleSignInAccount();
      final authentication = _MockGoogleSignInAuthentication();
      when(() => googleSignIn.signIn()).thenAnswer((_) async => account);
      when(() => account.authentication).thenAnswer((_) async => authentication);
      when(() => authentication.idToken).thenReturn('id-token');
      when(() => authentication.accessToken).thenReturn('access-token');
      when(
        () => goTrue.signInWithIdToken(
          provider: supabase.OAuthProvider.google,
          idToken: any(named: 'idToken'),
          accessToken: any(named: 'accessToken'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final result = await dataSource.signInWithGoogle();

      expect(result?.userId, equals('user-123'));
      verify(() => googleSignIn.signOut()).called(1);
      verify(() => googleSignIn.signIn()).called(1);
      verify(
        () => goTrue.signInWithIdToken(
          provider: supabase.OAuthProvider.google,
          idToken: 'id-token',
          accessToken: 'access-token',
        ),
      ).called(1);
    });

    test('throws when google sign-in aborted', () async {
      when(() => googleSignIn.signIn()).thenAnswer((_) async => null);

      expect(
        () => dataSource.signInWithGoogle(),
        throwsA(isA<Exception>()),
      );
      verify(() => googleSignIn.signOut()).called(1);
    });
  });

  test('signInWithGoogle web path uses OAuth sign in', () async {
    final webDataSource = AuthRemoteDataSourceImpl(
      supabaseClient: supabaseClient,
      googleSignIn: googleSignIn,
      isWebOverride: true,
    );
    when(
      () => goTrue.signInWithOAuth(
        supabase.OAuthProvider.google,
        redirectTo: any(named: 'redirectTo'),
      ),
    ).thenAnswer((_) async => mockResponse);
    when(() => goTrue.currentSession).thenReturn(mockSession);

    final result = await webDataSource.signInWithGoogle();

    expect(result?.userId, 'user-123');
    verify(
      () => goTrue.signInWithOAuth(
        supabase.OAuthProvider.google,
        redirectTo: null,
      ),
    ).called(1);
    verifyNever(() => googleSignIn.signIn());
  });

  group('resetPassword', () {
    test('delegates to Supabase', () async {
      when(() => goTrue.resetPasswordForEmail(any()))
          .thenAnswer((_) async {
            return null;
          });

      await dataSource.resetPassword(email: 'user@velora.app');

      verify(() => goTrue.resetPasswordForEmail('user@velora.app')).called(1);
    });
  });

  group('signOut', () {
    test('signs out from Supabase and Google', () async {
      when(() => goTrue.signOut()).thenAnswer((_) async => {});
      when(() => googleSignIn.signOut()).thenAnswer((_) async {
        return null;
      });

      await dataSource.signOut();

      verify(() => goTrue.signOut()).called(1);
      verify(() => googleSignIn.signOut()).called(1);
    });
  });

  group('watchAuthSession', () {
    test('maps Supabase auth states to AuthSessionModels', () async {
      final secondSession = _MockSession();
      final secondUser = _MockSupabaseUser();
      when(() => secondSession.user).thenReturn(secondUser);
      when(() => secondUser.id).thenReturn('user-999');
      when(() => secondUser.email).thenReturn('other@velora.app');
      when(() => secondUser.emailConfirmedAt).thenReturn(null);

      final authState1 = _MockSupabaseAuthState();
      final authState2 = _MockSupabaseAuthState();
      when(() => authState1.session).thenReturn(mockSession);
      when(() => authState2.session).thenReturn(secondSession);

      when(() => goTrue.onAuthStateChange).thenAnswer(
        (_) => Stream.fromIterable([authState1, authState2]),
      );

      final results = await dataSource.watchAuthSession().toList();

      expect(results.length, 2);
      expect(results.first?.userId, 'user-123');
      expect(results.last?.userId, 'user-999');
    });
  });

  test('watchAuthSession emits null when Supabase session is null', () async {
    final authState = _MockSupabaseAuthState();
    when(() => authState.session).thenReturn(null);
    when(() => goTrue.onAuthStateChange).thenAnswer(
      (_) => Stream.fromIterable([authState]),
    );

    final results = await dataSource.watchAuthSession().toList();

    expect(results, [null]);
  });
}
