import 'package:freezed_annotation/freezed_annotation.dart';

/// Gender enum matching database enum
/// Used across profile domain and data layers
enum UserGender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
  @JsonValue('other')
  other,
  @JsonValue('prefer_not_to_say')
  preferNotToSay,
}

/// Extension for JSON serialization helpers
extension UserGenderExtension on UserGender {
  String toJsonValue() {
    switch (this) {
      case UserGender.male:
        return 'male';
      case UserGender.female:
        return 'female';
      case UserGender.other:
        return 'other';
      case UserGender.preferNotToSay:
        return 'prefer_not_to_say';
    }
  }

  /// Display name for UI
  String get displayName {
    switch (this) {
      case UserGender.male:
        return 'Male';
      case UserGender.female:
        return 'Female';
      case UserGender.other:
        return 'Other';
      case UserGender.preferNotToSay:
        return 'Prefer not to say';
    }
  }

  /// Parse from string value
  static UserGender? fromString(String? value) {
    if (value == null) return null;
    switch (value.toLowerCase()) {
      case 'male':
        return UserGender.male;
      case 'female':
        return UserGender.female;
      case 'other':
        return UserGender.other;
      case 'prefer_not_to_say':
        return UserGender.preferNotToSay;
      default:
        return null;
    }
  }
}
