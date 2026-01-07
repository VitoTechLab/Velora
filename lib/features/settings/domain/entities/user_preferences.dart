import 'package:flutter/foundation.dart';

/// User preferences for app behavior and performance settings.
///
/// This class manages user-configurable settings that affect
/// navigation animations, accessibility, and performance optimizations.
class UserPreferences extends ChangeNotifier {
  UserPreferences({
    bool enableNavigationAnimations = true,
    bool respectSystemReduceMotion = true,
  }) : _enableNavigationAnimations = enableNavigationAnimations,
       _respectSystemReduceMotion = respectSystemReduceMotion;

  bool _enableNavigationAnimations;
  bool _respectSystemReduceMotion;

  /// Whether to enable smooth sliding animations when switching navigation tabs.
  ///
  /// When true, tab transitions use a 280ms animation.
  /// When false, tab switches are instant (0ms).
  ///
  /// Default: true
  bool get enableNavigationAnimations => _enableNavigationAnimations;

  set enableNavigationAnimations(bool value) {
    if (_enableNavigationAnimations != value) {
      _enableNavigationAnimations = value;
      notifyListeners();
    }
  }

  /// Whether to respect the system's "Reduce Motion" accessibility setting.
  ///
  /// When true, the app will disable animations if the user has enabled
  /// "Reduce Motion" in their device's accessibility settings.
  ///
  /// Default: true
  bool get respectSystemReduceMotion => _respectSystemReduceMotion;

  set respectSystemReduceMotion(bool value) {
    if (_respectSystemReduceMotion != value) {
      _respectSystemReduceMotion = value;
      notifyListeners();
    }
  }

  /// Determines if animations should be shown based on user preferences
  /// and system settings.
  ///
  /// Returns false if:
  /// - User disabled animations manually, OR
  /// - User enabled "respect system settings" AND system has "reduce motion" on
  bool shouldUseAnimations(bool systemReduceMotion) {
    if (!_enableNavigationAnimations) return false;
    if (_respectSystemReduceMotion && systemReduceMotion) return false;
    return true;
  }
}
