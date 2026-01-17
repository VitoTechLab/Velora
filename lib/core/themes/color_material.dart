import 'package:flutter/material.dart';

class MaterialColorsCustom {
  /// Core brand palette tuned for a clean, modern campaign identity.
  static const Color brandEmerald = Color(0xFF1F6F5C);
  static const Color brandSeafoam = Color(0xFF4CC4A7);
  static const Color brandCoral = Color(0xFFFF8A63);
  static const Color brandIndigo = Color(0xFF415371);
  static const Color brandSky = Color(0xFFBBDDF6);

  /// Neon/Vibrant palette for dark theme auth screens
  static const Color neonViolet = Color(0xFF6366F1);
  static const Color neonPurple = Color(0xFF8B5CF6);
  static const Color neonMagenta = Color(0xFFA855F7);
  static const Color neonIndigo = Color(0xFF818CF8);
  static const Color neonLavender = Color(0xFFC084FC);
  static const Color neonCyan = Color(0xFF06B6D4);
  static const Color neonTeal = Color(0xFF22D3EE);
  static const Color neonRose = Color(0xFFEC4899);
  static const Color neonPink = Color(0xFFF472B6);
  static const Color neonLightPurple = Color(0xFFA78BFA);
  static const Color neonLilac = Color(0xFFC4B5FD);

  /// Dark gradient backgrounds for auth
  static const Color darkNavy1 = Color(0xFF1a1a2e);
  static const Color darkNavy2 = Color(0xFF16213e);
  static const Color darkNavy3 = Color(0xFF0f3460);
  static const Color darkNavy4 = Color(0xFF533483);

  /// Legacy aliases kept for backward compatibility with older widgets.
  static const Color primaryYellow = brandEmerald;
  static const Color accentYellow = brandSeafoam;
  static const Color brandBlue = Color(0xFF4AA3F2);
  static const Color brandBlueSoft = brandSky;
  static const Color brandRed = Color(0xFFEB6A64);
  static const Color brandGreen = Color(0xFF2BB673);
  static const Color brandOrange = brandCoral;
  static const Color black = Color(0xFF0B1A24);
  static const Color white = Colors.white;

  // Neutral palette
  static const Color mist = Color(0xFFF5F7FA);
  static const Color slate = Color(0xFF5A6B7B);
  static const Color deepNavy = Color(0xFF0C1826);
  static const Color dusk = Color(0xFF152534);
  static const Color greyLightBorder = Color(0xFFD7E0E8);
  static const Color greyLightContainer = mist;
  static const Color greyMedium = slate;
  static const Color greyDarkBorder = Color(0xFF253549);

  static const Color arrowIndicatorLight = Color(0xFF6F7D8C);
  static const Color arrowIndicatorDark = Color(0xFF9EB4C5);

  // Light Mode
  static const Color lightBackground = mist;
  static const Color lightCard = white;
  static const Color lightAppBarBackground = white;
  static const Color lightTextPrimary = Color(0xFF0F2534);
  static const Color lightTextSecondary = Color(0xFF5C6C7D);
  static const Color lightIcon = lightTextPrimary;
  static const Color lightOutline = greyLightBorder;
  static const Color lightHighlightIcon = brandSeafoam;
  static const Color lightIconBackground = Color(0xFFE4F4F0);
  static const Color lightElevatedButtonText = white;
  static const Color lightNavigationBarBackground = white;
  static const Color lightButtonBackground = brandEmerald;
  static const Color lightButtonText = white;
  static const Color lightButtonOutline = brandSeafoam;
  static const Color lightContainerDoftBlue = Color(0xFFE2F0FF);
  static const Color lightArrowIndicator = arrowIndicatorLight;
  static const Color lightContainerBorder = Color(0xFFD2DCE5);

  // Dark Mode - Enhanced with neon colors
  static const Color darkBackground = darkNavy1;
  static const Color darkCard = Color(0xFF0F1F2D);
  static const Color darkSurface = dusk;
  static const Color darkTextPrimary = Color(0xFFE6EDF3);
  static const Color darkTextSecondary = Color(0xFFA4B5C4);
  static const Color darkIcon = darkTextPrimary;
  static const Color darkOutline = greyDarkBorder;
  static const Color darkHighlightIcon = neonIndigo;
  static const Color darkIconBackground = Color(0xFF113B38);
  static const Color darkElevatedButtonText = white;
  static const Color darkNavigationBarBackground = Color(0xFF081723);
  static const Color darkButtonBackground = neonViolet;
  static const Color darkButtonText = white;
  static const Color darkButtonOutline = neonIndigo;
  static const Color darkContainerDoftBlue = Color(0xFF10263D);
  static const Color darkArrowIndicator = arrowIndicatorDark;
  static const Color darkContainerBorder = Color(0xFF223446);

  // Status Colors
  static const Color error = brandRed;
  static const Color success = brandGreen;
  static const Color warning = Color(0xFFF6B756);
  static const Color info = brandBlue;

  // Miscellaneous
  static const Color shadowColor = Color(0x140C1A2C);
}
