/// Service to detect device capabilities and system settings.
///
/// This class provides information about the device's performance
/// characteristics for navigation optimization purposes.
///
/// Note: Platform detection is already handled by CommonApp.
/// This service focuses on performance-related capabilities only.
class DeviceInfo {
  DeviceInfo._();

  static final DeviceInfo instance = DeviceInfo._();

  /// Detects if the current device is considered "low-end" based on
  /// available system information.
  ///
  /// Currently returns false by default. For production use,
  /// integrate device_info_plus package for accurate RAM/CPU detection.
  ///
  /// Example with device_info_plus:
  /// ```dart
  /// final deviceInfo = await DeviceInfoPlugin();
  /// if (Platform.isAndroid) {
  ///   final androidInfo = await deviceInfo.androidInfo;
  ///   final memoryGB = androidInfo.totalMemory / (1024 * 1024 * 1024);
  ///   return memoryGB < 2.0; // Less than 2GB = low-end
  /// }
  /// ```
  bool get isLowEndDevice {
    // Note: Actual device capability detection can be implemented with device_info_plus package
    // For now, return false and let system reduce motion handle accessibility
    return false;
  }

  /// Checks if the device can handle smooth animations without performance issues.
  ///
  /// Returns true by default. In production, this should check:
  /// - Available RAM (< 2GB might struggle)
  /// - CPU cores/speed
  /// - Current memory pressure
  bool get canHandleAnimationsSmoothly {
    return !isLowEndDevice;
  }
}
