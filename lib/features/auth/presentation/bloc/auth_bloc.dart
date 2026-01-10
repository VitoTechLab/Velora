import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';
import 'package:velora/features/auth/domain/usecases/auth_reset_password.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_in_with_google.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_out.dart';
import 'package:velora/features/auth/domain/usecases/auth_sign_up.dart';
import 'package:velora/features/auth/domain/usecases/auth_watch_auth_snapshot.dart';

import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';

/// AuthBloc handles user-facing auth flows (sign in, sign up, reset password,
/// sign out) and keeps a global [AuthStatus] for routing.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// Domain use cases for auth operations.
  final AuthSignUp signUpUseCase;
  final AuthSignIn signInUseCase;
  final AuthSignInWithGoogle signInWithGoogleUseCase;
  final AuthResetPassword resetPasswordUseCase;
  final AuthSignOut signOutUseCase;
  final AuthWatchAuthSnapshot watchAuthSnapshotUseCase;

  AuthBloc({
    required this.signUpUseCase,
    required this.signInUseCase,
    required this.signInWithGoogleUseCase,
    required this.resetPasswordUseCase,
    required this.signOutUseCase,
    required this.watchAuthSnapshotUseCase,
  }) : super(const AuthState()) {
    on<AuthSignUpRequested>(_onSignUpRequested);
    on<AuthSignInRequested>(_onSignInRequested);
    on<AuthResetPasswordRequested>(_onResetPasswordRequested);
    on<AuthSignOutRequested>(_onSignOutRequested);
    on<AuthSignInWithGoogleRequested>(_onSignInWithGoogleRequested);
    on<AuthClearMessagesRequested>(_onClearMessagesRequested);
    on<AuthSupabaseSnapshotChanged>(_onSupabaseSnapshotChanged);

    _listenToAuthStatus();
  }

  StreamSubscription<AuthSnapshot>? _authSubscription;

  void _listenToAuthStatus() {
    _authSubscription?.cancel();
    _authSubscription = watchAuthSnapshotUseCase().listen(
      (snap) => add(AuthSupabaseSnapshotChanged(snapshot: snap)),
      onError: (e, st) =>
          AppLogger.e('[AuthBloc] stream error', error: e, stackTrace: st),
    );
  }

  void _onSupabaseSnapshotChanged(
    AuthSupabaseSnapshotChanged event,
    Emitter<AuthState> emit,
  ) {
    // Get current user ID from the auth status stream if available
    String? currentUserId;
    if (event.snapshot.status == AuthStatus.authenticated) {
      // Try to get userId from current session
      // This will be set by sign in/sign up flows
      currentUserId = event.snapshot.userId;
    }

    emit(
      state.copyWith(
        status: event.snapshot.status,
        loadingType: AuthLoadingType.none,
        message: null,
        errorMessage: null,
        userId: currentUserId,
      ),
    );
  }

  Future<void> _onSignUpRequested(
    AuthSignUpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await signUpUseCase(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) {
          final status = _statusForFailure(failure, AuthStatus.unauthenticated);
          emit(
            state.copyWith(
              status: status,
              loadingType: AuthLoadingType.none,
              errorMessage: failure.message,
              message: null,
              userId: null,
            ),
          );
        },
        (session) {
          final isEmailVerified = session?.emailVerified ?? false;
          emit(
            state.copyWith(
              status: isEmailVerified
                  ? AuthStatus.authenticated
                  : AuthStatus.emailUnverified,
              loadingType: AuthLoadingType.none,
              message:
                  'We\'ve sent a verification link to your email. Please verify '
                  'before signing in.',
              errorMessage: null,
              userId: session?.userId,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      AppLogger.e(
        '[AuthBloc] Unknown error during sign-up',
        error: error,
        stackTrace: stackTrace,
      );
      final failure = Failure.fromException(error);
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
          loadingType: AuthLoadingType.none,
          errorMessage: failure.message,
          message: null,
        ),
      );
    }
  }

  Future<void> _onSignInRequested(
    AuthSignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await signInUseCase(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) {
          final status = _statusForFailure(failure, AuthStatus.unauthenticated);
          emit(
            state.copyWith(
              status: status,
              loadingType: AuthLoadingType.none,
              errorMessage: failure.message,
              message: null,
              userId: null,
            ),
          );
        },
        (session) {
          emit(
            state.copyWith(
              status: AuthStatus.authenticated,
              loadingType: AuthLoadingType.none,
              message: 'Welcome back!',
              errorMessage: null,
              userId: session?.userId,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      AppLogger.e(
        '[AuthBloc] Unknown error during sign-in',
        error: error,
        stackTrace: stackTrace,
      );
      final failure = Failure.fromException(error);
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
          loadingType: AuthLoadingType.none,
          errorMessage: failure.message,
          message: null,
        ),
      );
    }
  }

  Future<void> _onResetPasswordRequested(
    AuthResetPasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await resetPasswordUseCase(email: event.email);

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              loadingType: AuthLoadingType.none,
              errorMessage: failure.message,
              message: null,
            ),
          );
        },
        (_) {
          AppLogger.i('[AuthBloc] Password reset email sent to ${event.email}');
          emit(
            state.copyWith(
              loadingType: AuthLoadingType.none,
              message: 'Password reset link sent to your email.',
              errorMessage: null,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      AppLogger.e(
        '[AuthBloc] Unknown error during password reset',
        error: error,
        stackTrace: stackTrace,
      );
      final failure = Failure.fromException(error);
      emit(
        state.copyWith(
          loadingType: AuthLoadingType.none,
          errorMessage: failure.message,
          message: null,
        ),
      );
    }
  }

  Future<void> _onSignOutRequested(
    AuthSignOutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await signOutUseCase();

      result.fold(
        (failure) {
          emit(
            state.copyWith(
              loadingType: AuthLoadingType.none,
              errorMessage: failure.message,
              message: null,
            ),
          );
        },
        (_) {
          AppLogger.i('[AuthBloc] User signed out');
          emit(
            state.copyWith(
              status: AuthStatus.unauthenticated,
              loadingType: AuthLoadingType.none,
              message: null,
              errorMessage: null,
              userId: null,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      AppLogger.e(
        '[AuthBloc] Unknown error during sign-out',
        error: error,
        stackTrace: stackTrace,
      );
      final failure = Failure.fromException(error);
      emit(
        state.copyWith(
          loadingType: AuthLoadingType.none,
          errorMessage: failure.message,
          message: null,
        ),
      );
    }
  }

  Future<void> _onSignInWithGoogleRequested(
    AuthSignInWithGoogleRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.google,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await signInWithGoogleUseCase();

      result.fold(
        (failure) {
          final status = _statusForFailure(failure, AuthStatus.unauthenticated);
          emit(
            state.copyWith(
              status: status,
              loadingType: AuthLoadingType.none,
              errorMessage: failure.message,
              message: null,
              userId: null,
            ),
          );
        },
        (session) {
          emit(
            state.copyWith(
              status: session?.emailVerified == false
                  ? AuthStatus.emailUnverified
                  : AuthStatus.authenticated,
              loadingType: AuthLoadingType.none,
              message: 'Signed in with Google',
              errorMessage: null,
              userId: session?.userId,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      AppLogger.e(
        '[AuthBloc] Unknown error during Google sign-in',
        error: error,
        stackTrace: stackTrace,
      );
      final failure = Failure.fromException(error);
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
          loadingType: AuthLoadingType.none,
          errorMessage: failure.message,
          message: null,
        ),
      );
    }
  }

  /// Clear transient messages after UI has displayed them.
  Future<void> _onClearMessagesRequested(
    AuthClearMessagesRequested event,
    Emitter<AuthState> emit,
  ) async {
    if (state.message == null && state.errorMessage == null) return;
    emit(state.copyWith(message: null, errorMessage: null));
  }

  /// Public helper so UI can still call bloc.clearMessages().
  void clearMessages() {
    add(const AuthClearMessagesRequested());
  }

  @override
  Future<void> close() async {
    await _authSubscription?.cancel();
    return super.close();
  }

  AuthStatus _statusForFailure(Failure failure, AuthStatus fallback) {
    if (failure is AuthFailure) {
      switch (failure.type) {
        case AuthFailureType.emailNotVerified:
          return AuthStatus.emailUnverified;
        default:
          return fallback;
      }
    }
    return fallback;
  }
}
