import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/auth_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/features/auth/domain/entities/auth_snapshot_entity.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:velora/features/auth/domain/usecases/resend_verification_email_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:velora/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:velora/features/auth/domain/usecases/watch_auth_snapshot_usecase.dart';

import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';

/// Manages authentication flows and maintains global auth status for routing.
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUseCase signUpUseCase;
  final SignInUseCase signInUseCase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final ResendVerificationEmailUseCase resendVerificationEmailUseCase;
  final SignOutUseCase signOutUseCase;
  final WatchAuthSnapshotUseCase watchAuthSnapshotUseCase;

  AuthBloc({
    required this.signUpUseCase,
    required this.signInUseCase,
    required this.signInWithGoogleUseCase,
    required this.resetPasswordUseCase,
    required this.resendVerificationEmailUseCase,
    required this.signOutUseCase,
    required this.watchAuthSnapshotUseCase,
  }) : super(const AuthState()) {
    on<SignUpEvent>(_onSignUp);
    on<SignInEvent>(_onSignIn);
    on<ResetPasswordEvent>(_onResetPassword);
    on<SignOutEvent>(_onSignOut);
    on<SignInWithGoogleEvent>(_onSignInWithGoogle);
    on<ResendEmailVerificationEvent>(_onResendVerificationEmail);
    on<ClearMessagesEvent>(_onClearMessages);
    on<AuthSnapshotChangedEvent>(_onAuthSnapshotChanged);

    _listenToAuthStatus();
  }

  StreamSubscription<AuthSnapshotEntity>? _authSubscription;
  String? _lastEmailForVerification;

  /// Subscribe to Supabase auth state changes
  void _listenToAuthStatus() {
    _authSubscription?.cancel();
    _authSubscription = watchAuthSnapshotUseCase().listen(
      (snap) => add(AuthEvent.authSnapshotChanged(snapshot: snap)),
      onError: (e, st) =>
          AppLogger.e('[AuthBloc] stream error', error: e, stackTrace: st),
    );
  }

  /// Handle internal auth state updates from Supabase
  void _onAuthSnapshotChanged(
    AuthSnapshotChangedEvent event,
    Emitter<AuthState> emit,
  ) {
    final currentUserId =
        event.snapshot.status == AuthStatusEntity.authenticated
            ? event.snapshot.userId
            : null;
    final didAuthIdentityChange =
        state.status != event.snapshot.status || state.userId != currentUserId;

    if (!didAuthIdentityChange && state.loadingType == AuthLoadingType.none) {
      return;
    }

    // Keep transient UI feedback intact; clearMessages owns that lifecycle.
    emit(
      state.copyWith(
        status: event.snapshot.status,
        loadingType:
            didAuthIdentityChange ? AuthLoadingType.none : state.loadingType,
        userId: currentUserId,
      ),
    );
  }

  /// Register new user with email and password
  Future<void> _onSignUp(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      _lastEmailForVerification = event.email;
      final result = await signUpUseCase(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) {
          final status =
              _statusForFailure(failure, AuthStatusEntity.unauthenticated);
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
                  ? AuthStatusEntity.authenticated
                  : AuthStatusEntity.emailUnverified,
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
      _handleError(
        error,
        stackTrace,
        emit,
        'sign-up',
        statusOnError: AuthStatusEntity.unauthenticated,
      );
    }
  }

  /// Authenticate user with email and password
  Future<void> _onSignIn(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(
      loadingType: AuthLoadingType.emailPassword,
      message: null,
      errorMessage: null,
    ));

    try {
      _lastEmailForVerification = event.email;
      final result = await signInUseCase(
        email: event.email,
        password: event.password,
      );

      result.fold(
        (failure) {
          final status =
              _statusForFailure(failure, AuthStatusEntity.unauthenticated);
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
              status: AuthStatusEntity.authenticated,
              loadingType: AuthLoadingType.none,
              message: 'Welcome back!',
              errorMessage: null,
              userId: session?.userId,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      _handleError(
        error,
        stackTrace,
        emit,
        'sign-in',
        statusOnError: AuthStatusEntity.unauthenticated,
      );
    }
  }

  /// Send password reset email to user
  Future<void> _onResetPassword(
    ResetPasswordEvent event,
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
      _handleError(
        error,
        stackTrace,
        emit,
        'password reset',
        statusOnError: state.status,
      );
    }
  }

  /// Sign out current user from session
  Future<void> _onSignOut(
    SignOutEvent event,
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
              status: AuthStatusEntity.unauthenticated,
              loadingType: AuthLoadingType.none,
              message: null,
              errorMessage: null,
              userId: null,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      _handleError(
        error,
        stackTrace,
        emit,
        'sign-out',
        statusOnError: state.status,
      );
    }
  }

  /// Authenticate user with Google OAuth
  Future<void> _onSignInWithGoogle(
    SignInWithGoogleEvent event,
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
          final status =
              _statusForFailure(failure, AuthStatusEntity.unauthenticated);
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
                  ? AuthStatusEntity.emailUnverified
                  : AuthStatusEntity.authenticated,
              loadingType: AuthLoadingType.none,
              message: 'Signed in with Google',
              errorMessage: null,
              userId: session?.userId,
            ),
          );
        },
      );
    } catch (error, stackTrace) {
      _handleError(
        error,
        stackTrace,
        emit,
        'Google sign-in',
        statusOnError: AuthStatusEntity.unauthenticated,
      );
    }
  }

  /// Clear transient messages after UI has displayed them
  Future<void> _onClearMessages(
    ClearMessagesEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (state.message == null && state.errorMessage == null) return;
    emit(state.copyWith(message: null, errorMessage: null));
  }

  /// Public helper to clear success and error messages
  void clearMessages() {
    add(const AuthEvent.clearMessages());
  }

  Future<void> _onResendVerificationEmail(
    ResendEmailVerificationEvent event,
    Emitter<AuthState> emit,
  ) async {
    final requestedEmail = event.email?.trim();
    final targetEmail = requestedEmail?.isNotEmpty == true
        ? requestedEmail
        : _lastEmailForVerification;

    if (state.isVerificationEmailLoading) return;

    emit(state.copyWith(
      loadingType: AuthLoadingType.verificationEmail,
      message: null,
      errorMessage: null,
    ));

    try {
      final result = await resendVerificationEmailUseCase(
        email: targetEmail,
      );

      result.fold(
        (failure) {
          emit(state.copyWith(
            loadingType: AuthLoadingType.none,
            errorMessage: failure.message,
            message: null,
          ));
        },
        (_) {
          emit(state.copyWith(
            loadingType: AuthLoadingType.none,
            message: 'Verification email resent',
            errorMessage: null,
          ));
        },
      );
    } catch (error, stackTrace) {
      _handleError(
        error,
        stackTrace,
        emit,
        'resend verification email',
        statusOnError: state.status,
      );
    }
  }

  /// Handle error and emit error state
  void _handleError(
    Object error,
    StackTrace stackTrace,
    Emitter<AuthState> emit,
    String operation, {
    required AuthStatusEntity statusOnError,
  }) {
    AppLogger.e(
      '[AuthBloc] Error during $operation',
      error: error,
      stackTrace: stackTrace,
    );
    final failure = Failure.fromException(error);
    final shouldResetUserId = statusOnError == AuthStatusEntity.unauthenticated;
    emit(
      state.copyWith(
        status: statusOnError,
        loadingType: AuthLoadingType.none,
        errorMessage: failure.message,
        message: null,
        userId: shouldResetUserId ? null : state.userId,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _authSubscription?.cancel();
    return super.close();
  }

  /// Map authentication failure types to corresponding status values
  AuthStatusEntity _statusForFailure(
      Failure failure, AuthStatusEntity fallback) {
    if (failure is AuthFailure) {
      switch (failure.type) {
        case AuthFailureType.emailNotVerified:
          return AuthStatusEntity.emailUnverified;
        default:
          return fallback;
      }
    }
    return fallback;
  }
}
