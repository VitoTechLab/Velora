import 'package:shared_preferences/shared_preferences.dart';

/// Service for managing security settings and preferences
class SecuritySettingsService {
  static const String _keyTwoFactorEnabled = 'security_two_factor_enabled';
  static const String _keyTwoFactorSecret = 'security_two_factor_secret';
  static const String _keyTwoFactorSetupDate = 'security_two_factor_setup_date';
  static const String _keyDeviceAlertsEnabled = 'security_device_alerts_enabled';
  static const String _keyLastPasswordChange = 'security_last_password_change';
  static const String _keyRecoveryEmail = 'security_recovery_email';
  static const String _keyRecoveryEmailVerified = 'security_recovery_email_verified';
  static const String _keyRecoveryPhone = 'security_recovery_phone';

  /// Check if two-factor authentication is enabled
  Future<bool> isTwoFactorEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyTwoFactorEnabled) ?? false;
  }

  /// Enable two-factor authentication with secret
  Future<bool> enableTwoFactor(String secret) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyTwoFactorEnabled, true);
      await prefs.setString(_keyTwoFactorSecret, secret);
      await prefs.setString(
        _keyTwoFactorSetupDate,
        DateTime.now().toIso8601String(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Disable two-factor authentication
  Future<bool> disableTwoFactor() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyTwoFactorEnabled, false);
      await prefs.remove(_keyTwoFactorSecret);
      await prefs.remove(_keyTwoFactorSetupDate);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Get two-factor secret
  Future<String?> getTwoFactorSecret() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyTwoFactorSecret);
  }

  /// Get two-factor setup date
  Future<DateTime?> getTwoFactorSetupDate() async {
    final prefs = await SharedPreferences.getInstance();
    final dateString = prefs.getString(_keyTwoFactorSetupDate);
    if (dateString != null) {
      return DateTime.parse(dateString);
    }
    return null;
  }

  /// Check if device alerts are enabled
  Future<bool> areDeviceAlertsEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyDeviceAlertsEnabled) ?? true;
  }

  /// Set device alerts preference
  Future<bool> setDeviceAlerts(bool enabled) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_keyDeviceAlertsEnabled, enabled);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Update last password change date
  Future<bool> updatePasswordChangeDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        _keyLastPasswordChange,
        DateTime.now().toIso8601String(),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Get last password change date
  Future<DateTime?> getLastPasswordChangeDate() async {
    final prefs = await SharedPreferences.getInstance();
    final dateString = prefs.getString(_keyLastPasswordChange);
    if (dateString != null) {
      return DateTime.parse(dateString);
    }
    return null;
  }

  /// Get recovery email
  Future<String?> getRecoveryEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyRecoveryEmail);
  }

  /// Check if recovery email is verified
  Future<bool> isRecoveryEmailVerified() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyRecoveryEmailVerified) ?? false;
  }

  /// Set recovery email
  Future<bool> setRecoveryEmail(String email, {bool verified = false}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyRecoveryEmail, email);
      await prefs.setBool(_keyRecoveryEmailVerified, verified);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Get recovery phone
  Future<String?> getRecoveryPhone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyRecoveryPhone);
  }

  /// Set recovery phone
  Future<bool> setRecoveryPhone(String phone) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyRecoveryPhone, phone);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Get comprehensive security settings
  Future<SecuritySettings> getSecuritySettings() async {
    final twoFactorEnabled = await isTwoFactorEnabled();
    final twoFactorSetupDate = await getTwoFactorSetupDate();
    final deviceAlertsEnabled = await areDeviceAlertsEnabled();
    final lastPasswordChange = await getLastPasswordChangeDate();
    final recoveryEmail = await getRecoveryEmail();
    final recoveryEmailVerified = await isRecoveryEmailVerified();
    final recoveryPhone = await getRecoveryPhone();

    return SecuritySettings(
      twoFactorEnabled: twoFactorEnabled,
      twoFactorSetupDate: twoFactorSetupDate,
      deviceAlertsEnabled: deviceAlertsEnabled,
      lastPasswordChange: lastPasswordChange,
      recoveryEmail: recoveryEmail,
      recoveryEmailVerified: recoveryEmailVerified,
      recoveryPhone: recoveryPhone,
    );
  }
}

/// Data class for security settings
class SecuritySettings {
  const SecuritySettings({
    required this.twoFactorEnabled,
    this.twoFactorSetupDate,
    required this.deviceAlertsEnabled,
    this.lastPasswordChange,
    this.recoveryEmail,
    required this.recoveryEmailVerified,
    this.recoveryPhone,
  });

  final bool twoFactorEnabled;
  final DateTime? twoFactorSetupDate;
  final bool deviceAlertsEnabled;
  final DateTime? lastPasswordChange;
  final String? recoveryEmail;
  final bool recoveryEmailVerified;
  final String? recoveryPhone;

  bool get hasRecoveryEmail => recoveryEmail != null && recoveryEmail!.isNotEmpty;
  bool get hasRecoveryPhone => recoveryPhone != null && recoveryPhone!.isNotEmpty;
  bool get hasAnyRecoveryMethod => hasRecoveryEmail || hasRecoveryPhone;
}
