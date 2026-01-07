import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';

import 'auth_remote_datasource.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required SupabaseClient supabaseClient,
    GoogleSignIn? googleSignIn,
    bool? isWebOverride,
  }) : _client = supabaseClient,
       _googleSignIn =
           googleSignIn ??
           GoogleSignIn(
             scopes: const ['email', 'profile'],
             serverClientId: const String.fromEnvironment(
               'GOOGLE_OAUTH_CLIENT_ID',
               defaultValue: '',
             ),
           ),
       _isWeb = isWebOverride ?? kIsWeb;

  final SupabaseClient _client;
  final GoogleSignIn _googleSignIn;
  final bool _isWeb;

  static const _logTag = 'AuthRemoteDataSource';

  AuthSessionModel? _sessionToModel(Session? session) {
    if (session == null) return null;
    final user = session.user;

    return AuthSessionModel(
      userId: user.id,
      email: user.email,
      emailVerified: user.emailConfirmedAt != null,
    );
  }

  @override
  Future<AuthSessionModel?> signUp({
    required String email,
    required String password,
  }) async {
    logi('Supabase signUp email=$email', tag: _logTag);
    final response = await _client.auth.signUp(
      email: email,
      password: password,
    );
    return _sessionToModel(response.session ?? _client.auth.currentSession);
  }

  @override
  Future<AuthSessionModel?> signIn({
    required String email,
    required String password,
  }) async {
    logi('Supabase signIn email=$email', tag: _logTag);
    final response = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    return _sessionToModel(response.session ?? _client.auth.currentSession);
  }

  @override
  Future<AuthSessionModel?> signInWithGoogle() async {
    logi('Supabase signInWithGoogle', tag: _logTag);

    if (_isWeb) {
      await _client.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: null,
      );
      return _sessionToModel(_client.auth.currentSession);
    }

    await _googleSignIn.signOut();

    final account = await _googleSignIn.signIn();
    if (account == null) {
      throw Exception('Google sign-in aborted by user');
    }

    final auth = await account.authentication;
    final idToken = auth.idToken;
    final accessToken = auth.accessToken;

    if (idToken == null) {
      throw Exception('Missing Google ID token');
    }

    final response = await _client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );

    return _sessionToModel(response.session ?? _client.auth.currentSession);
  }

  @override
  Future<void> resetPassword({required String email}) {
    logi('Supabase resetPassword email=$email', tag: _logTag);
    return _client.auth.resetPasswordForEmail(
      email,
      redirectTo: 'velora://auth/reset-password',
    );
  }

  @override
  Future<void> signOut() async {
    logi('Supabase signOut current user', tag: _logTag);

    await _client.auth.signOut();

    if (kIsWeb) {
      return;
    }

    try {
      await _googleSignIn.signOut();
    } catch (error) {
      logw('GoogleSignIn signOut failed: $error', tag: _logTag);
    }
  }

  @override
  AuthSessionModel? currentSession() {
    return _sessionToModel(_client.auth.currentSession);
  }

  @override
  Stream<AuthSessionModel?> watchAuthSession() {
    return _client.auth.onAuthStateChange.map(
      (event) => _sessionToModel(event.session),
    );
  }
}
