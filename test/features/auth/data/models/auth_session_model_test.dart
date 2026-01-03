import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/auth/data/models/auth_session_model.dart';

void main() {
  const model = AuthSessionModel(
    userId: 'user-123',
    email: 'user@velora.app',
    emailVerified: true,
  );

  group('AuthSessionModel', () {
    test('converts to domain entity with matching values', () {
      final entity = model.toEntity();

      expect(entity.userId, equals(model.userId));
      expect(entity.email, equals(model.email));
      expect(entity.emailVerified, isTrue);
    });

    test('serializes and deserializes via json', () {
      final json = model.toJson();
      final fromJson = AuthSessionModel.fromJson(json);

      expect(fromJson, equals(model));
    });
  });
}
