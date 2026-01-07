/// Centralized input field validators
class FieldValidator {
  // Regex patterns for password validation
  static final _uppercasePattern = RegExp(r'[A-Z]');
  static final _numberPattern = RegExp(r'\d');
  static final _specialCharPattern = RegExp(
    r'[!@#\$%^&*()_+{}\[\]:;<>,.?/~\\-]',
  );
  static final _emailPattern = RegExp(r'^[^@]+@[^@]+\.[^@]+');

  /// Validate password strength
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }
    if (!_uppercasePattern.hasMatch(value)) {
      return "Password must contain at least 1 uppercase letter (A-Z)";
    }
    if (!_numberPattern.hasMatch(value)) {
      return "Password must contain at least 1 number (0-9)";
    }
    if (!_specialCharPattern.hasMatch(value)) {
      return "Password must contain at least 1 special character (!@#\$%^&* etc.)";
    }
    return null;
  }

  /// Validate email format
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your email";
    }
    if (!_emailPattern.hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }

  /// Validate name is not empty
  static String? name(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }
}
