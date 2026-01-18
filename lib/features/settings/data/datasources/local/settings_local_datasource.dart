/// Abstract interface for local settings persistence
/// 
/// Handles all SharedPreferences operations for settings feature.
/// Supports theme, language, accessibility, and notification preferences.
abstract class SettingsLocalDataSource {
  // ==========================================
  // Language Settings
  // ==========================================
  
  /// Get saved language code (en, id, ko, ja, zh)
  Future<String?> getLanguageCode();
  
  /// Save language code
  Future<void> setLanguageCode(String code);

  // ==========================================
  // Theme Settings
  // ==========================================
  
  /// Get theme mode ('light', 'dark', 'system')
  Future<String?> getThemeMode();
  
  /// Save theme mode
  Future<void> setThemeMode(String mode);
  
  /// Get dynamic color enabled status
  Future<bool> getDynamicColor();
  
  /// Save dynamic color status
  Future<void> setDynamicColor(bool enabled);
  
  /// Get color palette name
  Future<String?> getColorPalette();
  
  /// Save color palette
  Future<void> setColorPalette(String palette);
  
  /// Get corner radius
  Future<double> getCornerRadius();
  
  /// Save corner radius
  Future<void> setCornerRadius(double radius);

  // ==========================================
  // Accessibility - Text Settings
  // ==========================================
  
  /// Get font size
  Future<double> getFontSize();
  
  /// Save font size
  Future<void> setFontSize(double size);
  
  /// Get font family
  Future<String?> getFontFamily();
  
  /// Save font family
  Future<void> setFontFamily(String family);
  
  /// Get text alignment (0=left, 1=center, 2=justify)
  Future<int> getTextAlignment();
  
  /// Save text alignment
  Future<void> setTextAlignment(int alignment);
  
  /// Get line spacing
  Future<double> getLineSpacing();
  
  /// Save line spacing
  Future<void> setLineSpacing(double spacing);

  // ==========================================
  // Accessibility - Visual Settings
  // ==========================================
  
  /// Get high contrast mode status
  Future<bool> getHighContrast();
  
  /// Save high contrast mode
  Future<void> setHighContrast(bool enabled);
  
  /// Get motion reduced mode status
  Future<bool> getMotionReduced();
  
  /// Save motion reduced mode
  Future<void> setMotionReduced(bool enabled);

  // ==========================================
  // All Settings
  // ==========================================
  
  /// Load all settings at once (for initial load)
  Future<SettingsData> loadAllSettings();
  
  /// Clear all settings (for logout/reset)
  Future<void> clearAllSettings();
}

/// Data class for all settings
class SettingsData {
  final String languageCode;
  final String themeMode;
  final bool dynamicColor;
  final String colorPalette;
  final double cornerRadius;
  final double fontSize;
  final String fontFamily;
  final int textAlignment;
  final double lineSpacing;
  final bool highContrast;
  final bool motionReduced;

  const SettingsData({
    this.languageCode = 'en',
    this.themeMode = 'system',
    this.dynamicColor = true,
    this.colorPalette = 'Ocean',
    this.cornerRadius = 16.0,
    this.fontSize = 16.0,
    this.fontFamily = 'Inter',
    this.textAlignment = 0,
    this.lineSpacing = 1.4,
    this.highContrast = false,
    this.motionReduced = false,
  });

  /// Convert text alignment index to string
  String get textAlignmentString {
    switch (textAlignment) {
      case 1:
        return 'center';
      case 2:
        return 'justify';
      default:
        return 'left';
    }
  }
}
