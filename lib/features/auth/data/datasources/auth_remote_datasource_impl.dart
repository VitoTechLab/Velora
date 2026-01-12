import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';

import 'auth_remote_datasource.dart';

/// Implementation of auth remote datasource using Supabase and Google Sign-In
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required SupabaseClient supabaseClient,
    GoogleSignIn? googleSignIn,
    bool? isWebOverride,
  })  : _client = supabaseClient,
        _googleSignIn = googleSignIn ??
            GoogleSignIn(
              scopes: const ['email', 'profile'],
              serverClientId: dotenv.get(
                'GOOGLE_OAUTH_CLIENT_ID',
                fallback: '292141038283-ua7p2rc6cvogimi84q1gd2o1cshu7kam.apps.googleusercontent.com',
              ),
            ),
        _isWeb = isWebOverride ?? kIsWeb;

  final SupabaseClient _client;
  final GoogleSignIn _googleSignIn;
  final bool _isWeb;

  static const _logTag = 'AuthRemoteDataSource';

  /// Convert Supabase session to app session model
  AuthSessionModel? _sessionToModel(Session? session) {
    if (session == null) return null;
    final user = session.user;

    return AuthSessionModel(
      userId: user.id,
      email: user.email,
      emailVerified: user.emailConfirmedAt != null,
    );
  }

  /// Register new user with email and password
  @override
  Future<AuthSessionModel?> signUp({
    required String email,
    required String password,
  }) async {
    logi('Supabase signUp email=$email', tag: _logTag);
    try {
      final response = await _client.auth.signUp(
        email: email,
        password: password,
      );
      return _sessionToModel(response.session ?? _client.auth.currentSession);
    } catch (e) {
      loge('Supabase signUp failed', error: e, tag: _logTag);
      rethrow;
    }
  }

  /// Authenticate user with email and password
  @override
  Future<AuthSessionModel?> signIn({
    required String email,
    required String password,
  }) async {
    logi('Supabase signIn email=$email', tag: _logTag);
    try {
      final response = await _client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return _sessionToModel(response.session ?? _client.auth.currentSession);
    } catch (e) {
      loge('Supabase signIn failed', error: e, tag: _logTag);
      rethrow;
    }
  }

  /// Authenticate user with Google OAuth (web and mobile)
  @override
  Future<AuthSessionModel?> signInWithGoogle() async {
    logi('Supabase signInWithGoogle', tag: _logTag);

    try {
      // Web platform uses OAuth redirect flow
      if (_isWeb) {
        await _client.auth.signInWithOAuth(
          OAuthProvider.google,
          redirectTo: null,
        );
        return _sessionToModel(_client.auth.currentSession);
      }

      // Mobile platform uses native Google Sign-In
      await _googleSignIn.signOut();

      final account = await _googleSignIn.signIn();
      if (account == null) {
        loge('Google sign-in cancelled by user', tag: _logTag);
        throw Exception('Google sign-in cancelled');
      }

      final auth = await account.authentication;
      final idToken = auth.idToken;
      final accessToken = auth.accessToken;

      if (idToken == null) {
        loge('Missing Google ID token', tag: _logTag);
        throw Exception('Failed to get Google ID token');
      }

      final response = await _client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      return _sessionToModel(response.session ?? _client.auth.currentSession);
    } catch (e) {
      loge('Google sign-in failed', error: e, tag: _logTag);
      rethrow;
    }
  }

  /// Send password reset email to user
  @override
  Future<void> resetPassword({required String email}) {
    logi('Supabase resetPassword email=$email', tag: _logTag);
    return _client.auth.resetPasswordForEmail(
      email,
      redirectTo: 'velora://auth/reset-password',
    );
  }

  /// Sign out from Supabase and Google (if mobile)
  @override
  Future<void> signOut() async {
    logi('Supabase signOut current user', tag: _logTag);

    await _client.auth.signOut();

    if (_isWeb) {
      return;
    }

    // Attempt to sign out from Google on mobile
    try {
      await _googleSignIn.signOut();
    } catch (error) {
      logw('GoogleSignIn signOut failed: $error', tag: _logTag);
    }
  }

  /// Get current session from Supabase
  @override
  AuthSessionModel? currentSession() {
    return _sessionToModel(_client.auth.currentSession);
  }

  /// Stream of auth state changes from Supabase
  @override
  Stream<AuthSessionModel?> watchAuthSession() {
    return _client.auth.onAuthStateChange.map(
      (event) => _sessionToModel(event.session),
    );
  }
}
