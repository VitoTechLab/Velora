import 'dart:io';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service to handle biometric authentication
/// Stores biometric settings in local storage
class BiometricService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  static const String _biometricEnabledKey = 'biometric_enabled';
  static const String _biometricSetupDateKey = 'biometric_setup_date';

  /// Check if device supports biometric authentication
  Future<bool> isDeviceSupported() async {
    try {
      return await _localAuth.isDeviceSupported();
    } catch (e) {
      return false;
    }
  }

  /// Check if biometric is available (enrolled)
  Future<bool> isBiometricAvailable() async {
    try {
      final isSupported = await isDeviceSupported();
      if (!isSupported) return false;

      final availableBiometrics = await _localAuth.getAvailableBiometrics();
      return availableBiometrics.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  /// Get available biometric types
  Future<List<BiometricType>> getAvailableBiometrics() async {
    try {
      return await _localAuth.getAvailableBiometrics();
    } catch (e) {
      return [];
    }
  }

  /// Get biometric type name for display
  String getBiometricTypeName(BiometricType type) {
    switch (type) {
      case BiometricType.face:
        return 'Face ID';
      case BiometricType.fingerprint:
        return 'Fingerprint';
      case BiometricType.iris:
        return 'Iris';
      case BiometricType.strong:
        return 'Strong Biometric';
      case BiometricType.weak:
        return 'Weak Biometric';
    }
  }

  /// Authenticate with biometric
  Future<bool> authenticate({
    required String reason,
    bool useErrorDialogs = true,
    bool stickyAuth = true,
  }) async {
    try {
      final isAvailable = await isBiometricAvailable();
      if (!isAvailable) return false;

      return await _localAuth.authenticate(
        localizedReason: reason,
        options: AuthenticationOptions(
          useErrorDialogs: useErrorDialogs,
          stickyAuth: stickyAuth,
          biometricOnly: true,
        ),
      );
    } on PlatformException catch (e) {
      // Handle specific error codes
      if (e.code == 'NotAvailable' ||
          e.code == 'NotEnrolled' ||
          e.code == 'LockedOut' ||
          e.code == 'PermanentlyLockedOut') {
        return false;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  /// Check if biometric is enabled in app settings
  Future<bool> isBiometricEnabled() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_biometricEnabledKey) ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Enable biometric authentication
  /// Returns true if successfully enabled
  Future<bool> enableBiometric({required String reason}) async {
    try {
      // First check if biometric is available
      final isAvailable = await isBiometricAvailable();
      if (!isAvailable) return false;

      // Authenticate user before enabling
      final authenticated = await authenticate(reason: reason);
      if (!authenticated) return false;

      // Save to local storage
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_biometricEnabledKey, true);
      await prefs.setString(
        _biometricSetupDateKey,
        DateTime.now().toIso8601String(),
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  /// Disable biometric authentication
  Future<bool> disableBiometric() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_biometricEnabledKey, false);
      await prefs.remove(_biometricSetupDateKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Get biometric setup date
  Future<DateTime?> getBiometricSetupDate() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final dateString = prefs.getString(_biometricSetupDateKey);
      if (dateString == null) return null;
      return DateTime.parse(dateString);
    } catch (e) {
      return null;
    }
  }

  /// Get biometric status info
  Future<BiometricStatus> getBiometricStatus() async {
    final isSupported = await isDeviceSupported();
    final isAvailable = await isBiometricAvailable();
    final isEnabled = await isBiometricEnabled();
    final availableBiometrics = await getAvailableBiometrics();
    final setupDate = await getBiometricSetupDate();

    return BiometricStatus(
      isSupported: isSupported,
      isAvailable: isAvailable,
      isEnabled: isEnabled,
      availableBiometrics: availableBiometrics,
      setupDate: setupDate,
    );
  }

  /// Open device security settings to allow user to enroll biometrics
  /// Returns true if settings were opened successfully
  Future<bool> openSecuritySettings() async {
    try {
      if (Platform.isAndroid) {
        // On Android, open app settings which has security options
        // For biometric enrollment, user needs to go to device settings
        return await openAppSettings();
      } else if (Platform.isIOS) {
        // On iOS, open app settings (user needs to navigate to Face ID/Touch ID)
        return await openAppSettings();
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}

/// Biometric status data class
class BiometricStatus {
  final bool isSupported;
  final bool isAvailable;
  final bool isEnabled;
  final List<BiometricType> availableBiometrics;
  final DateTime? setupDate;

  BiometricStatus({
    required this.isSupported,
    required this.isAvailable,
    required this.isEnabled,
    required this.availableBiometrics,
    this.setupDate,
  });

  bool get canEnable => isSupported && isAvailable && !isEnabled;
  bool get isFullySetup => isSupported && isAvailable && isEnabled;

  String get primaryBiometricName {
    if (availableBiometrics.isEmpty) return 'Biometric';
    final type = availableBiometrics.first;
    switch (type) {
      case BiometricType.face:
        return 'Face ID';
      case BiometricType.fingerprint:
        return 'Fingerprint';
      case BiometricType.iris:
        return 'Iris';
      default:
        return 'Biometric';
    }
  }
}
