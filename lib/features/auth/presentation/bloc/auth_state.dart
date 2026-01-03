import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_status.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.unknown) AuthStatus status,
    @Default(false) bool isLoading,
    String? message,
    String? errorMessage,
    String? userId,
  }) = _AuthState;
}
