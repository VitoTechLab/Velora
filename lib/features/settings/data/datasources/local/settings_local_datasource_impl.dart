import 'package:shared_preferences/shared_preferences.dart';
import 'settings_local_datasource.dart';

/// Implementation of [SettingsLocalDataSource] using SharedPreferences
/// 
/// Persists user settings locally for offline access and fast loading.
/// All keys are prefixed with 'settings_' for namespace isolation.
class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  SettingsLocalDataSourceImpl({required SharedPreferences sharedPreferences})
      : _prefs = sharedPreferences;

  final SharedPreferences _prefs;

  // SharedPreferences keys
  static const _keyLanguage = 'settings_language';
  static const _keyThemeMode = 'settings_theme_mode';
  static const _keyDynamicColor = 'settings_dynamic_color';
  static const _keyColorPalette = 'settings_color_palette';
  static const _keyCornerRadius = 'settings_corner_radius';
  static const _keyFontSize = 'settings_font_size';
  static const _keyFontFamily = 'settings_font_family';
  static const _keyTextAlign = 'settings_text_align';
  static const _keyLineSpacing = 'settings_line_spacing';
  static const _keyHighContrast = 'settings_high_contrast';
  static const _keyMotionReduced = 'settings_motion_reduced';

  // Default values
  static const _defaultLanguage = 'en';
  static const _defaultThemeMode = 'system';
  static const _defaultDynamicColor = true;
  static const _defaultColorPalette = 'Ocean';
  static const _defaultCornerRadius = 16.0;
  static const _defaultFontSize = 16.0;
  static const _defaultFontFamily = 'Inter';
  static const _defaultTextAlign = 0; // left
  static const _defaultLineSpacing = 1.4;
  static const _defaultHighContrast = false;
  static const _defaultMotionReduced = false;

  // ==========================================
  // Language Settings
  // ==========================================

  @override
  Future<String?> getLanguageCode() async {
    return _prefs.getString(_keyLanguage);
  }

  @override
  Future<void> setLanguageCode(String code) async {
    await _prefs.setString(_keyLanguage, code);
  }

  // ==========================================
  // Theme Settings
  // ==========================================

  @override
  Future<String?> getThemeMode() async {
    return _prefs.getString(_keyThemeMode);
  }

  @override
  Future<void> setThemeMode(String mode) async {
    await _prefs.setString(_keyThemeMode, mode);
  }

  @override
  Future<bool> getDynamicColor() async {
    return _prefs.getBool(_keyDynamicColor) ?? _defaultDynamicColor;
  }

  @override
  Future<void> setDynamicColor(bool enabled) async {
    await _prefs.setBool(_keyDynamicColor, enabled);
  }

  @override
  Future<String?> getColorPalette() async {
    return _prefs.getString(_keyColorPalette);
  }

  @override
  Future<void> setColorPalette(String palette) async {
    await _prefs.setString(_keyColorPalette, palette);
  }

  @override
  Future<double> getCornerRadius() async {
    return _prefs.getDouble(_keyCornerRadius) ?? _defaultCornerRadius;
  }

  @override
  Future<void> setCornerRadius(double radius) async {
    await _prefs.setDouble(_keyCornerRadius, radius);
  }

  // ==========================================
  // Accessibility - Text Settings
  // ==========================================

  @override
  Future<double> getFontSize() async {
    return _prefs.getDouble(_keyFontSize) ?? _defaultFontSize;
  }

  @override
  Future<void> setFontSize(double size) async {
    await _prefs.setDouble(_keyFontSize, size);
  }

  @override
  Future<String?> getFontFamily() async {
    return _prefs.getString(_keyFontFamily);
  }

  @override
  Future<void> setFontFamily(String family) async {
    await _prefs.setString(_keyFontFamily, family);
  }

  @override
  Future<int> getTextAlignment() async {
    return _prefs.getInt(_keyTextAlign) ?? _defaultTextAlign;
  }

  @override
  Future<void> setTextAlignment(int alignment) async {
    await _prefs.setInt(_keyTextAlign, alignment);
  }

  @override
  Future<double> getLineSpacing() async {
    return _prefs.getDouble(_keyLineSpacing) ?? _defaultLineSpacing;
  }

  @override
  Future<void> setLineSpacing(double spacing) async {
    await _prefs.setDouble(_keyLineSpacing, spacing);
  }

  // ==========================================
  // Accessibility - Visual Settings
  // ==========================================

  @override
  Future<bool> getHighContrast() async {
    return _prefs.getBool(_keyHighContrast) ?? _defaultHighContrast;
  }

  @override
  Future<void> setHighContrast(bool enabled) async {
    await _prefs.setBool(_keyHighContrast, enabled);
  }

  @override
  Future<bool> getMotionReduced() async {
    return _prefs.getBool(_keyMotionReduced) ?? _defaultMotionReduced;
  }

  @override
  Future<void> setMotionReduced(bool enabled) async {
    await _prefs.setBool(_keyMotionReduced, enabled);
  }

  // ==========================================
  // All Settings
  // ==========================================

  @override
  Future<SettingsData> loadAllSettings() async {
    return SettingsData(
      languageCode: _prefs.getString(_keyLanguage) ?? _defaultLanguage,
      themeMode: _prefs.getString(_keyThemeMode) ?? _defaultThemeMode,
      dynamicColor: _prefs.getBool(_keyDynamicColor) ?? _defaultDynamicColor,
      colorPalette: _prefs.getString(_keyColorPalette) ?? _defaultColorPalette,
      cornerRadius: _prefs.getDouble(_keyCornerRadius) ?? _defaultCornerRadius,
      fontSize: _prefs.getDouble(_keyFontSize) ?? _defaultFontSize,
      fontFamily: _prefs.getString(_keyFontFamily) ?? _defaultFontFamily,
      textAlignment: _prefs.getInt(_keyTextAlign) ?? _defaultTextAlign,
      lineSpacing: _prefs.getDouble(_keyLineSpacing) ?? _defaultLineSpacing,
      highContrast: _prefs.getBool(_keyHighContrast) ?? _defaultHighContrast,
      motionReduced: _prefs.getBool(_keyMotionReduced) ?? _defaultMotionReduced,
    );
  }

  @override
  Future<void> clearAllSettings() async {
    await Future.wait([
      _prefs.remove(_keyLanguage),
      _prefs.remove(_keyThemeMode),
      _prefs.remove(_keyDynamicColor),
      _prefs.remove(_keyColorPalette),
      _prefs.remove(_keyCornerRadius),
      _prefs.remove(_keyFontSize),
      _prefs.remove(_keyFontFamily),
      _prefs.remove(_keyTextAlign),
      _prefs.remove(_keyLineSpacing),
      _prefs.remove(_keyHighContrast),
      _prefs.remove(_keyMotionReduced),
    ]);
  }
}
