import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/auth/domain/entities/auth_session_entity.dart';

part 'auth_session_model.freezed.dart';
part 'auth_session_model.g.dart';

/// Data model for authenticated user session from Supabase.
@freezed
abstract class AuthSessionModel with _$AuthSessionModel {
  const factory AuthSessionModel({
    required String userId,
    required String? email,
    required bool emailVerified,
  }) = _AuthSessionModel;

  const AuthSessionModel._();

  factory AuthSessionModel.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionModelFromJson(json);

  /// Converts model to domain entity.
  AuthSessionEntity toEntity() {
    return AuthSessionEntity(
      userId: userId,
      email: email,
      emailVerified: emailVerified,
    );
  }
}
