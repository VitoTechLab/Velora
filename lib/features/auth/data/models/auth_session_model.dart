import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_session.dart';

part 'auth_session_model.freezed.dart';
part 'auth_session_model.g.dart';

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

  AuthSession toEntity() {
    return AuthSession(
      userId: userId,
      email: email,
      emailVerified: emailVerified,
    );
  }
}
