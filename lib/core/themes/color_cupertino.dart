import 'package:flutter/material.dart';

class CupertinoColorsCustom {
  // Core palette aligned with Material colors for parity.
  static const Color brandEmerald = Color(0xFF1F6F5C);
  static const Color brandSeafoam = Color(0xFF4CC4A7);
  static const Color brandCoral = Color(0xFFFF8A63);
  static const Color brandSky = Color(0xFFBBDDF6);

  /// Backward-compatibility aliases for legacy references.
  static const Color primaryYellow = brandEmerald;
  static const Color accentYellow = brandSeafoam;
  static const Color brandBlue = Color(0xFF4AA3F2);
  static const Color brandBlueSoft = brandSky;
  static const Color brandRed = Color(0xFFEB6A64);
  static const Color brandGreen = Color(0xFF2BB673);
  static const Color brandOrange = brandCoral;
  static const Color black = Color(0xFF0B1A24);
  static const Color white = Colors.white;

  // Soft Neutral iOS Style
  static const Color softWhite = Color(0xFFF5F6FA);
  static const Color softContainer = Color(0xFFF0F2F6);
  static const Color softBorder = Color(0xFFDFE4EB);
  static const Color softGreyMedium = Color(0xFF7A8795);
  static const Color softGreyDark = Color(0xFF1C2433);

  // Light Mode iOS Feel
  static const Color lightBackground = softWhite;
  static const Color lightCard = softContainer;
  static const Color lightAppBarBackground = softContainer;
  static const Color lightTextPrimary = Color(0xFF0F2534);
  static const Color lightTextSecondary = softGreyMedium;
  static const Color lightOutline = softBorder;
  static const Color lightHighlightIcon = brandSeafoam;
  static const Color lightNavigationBarBackground = softContainer;
  static const Color lightButtonBackground = brandEmerald;
  static const Color lightButtonText = white;

  // Dark Mode iOS Feel
  static const Color darkBackground = Color(0xFF050E16);
  static const Color darkCard = Color(0xFF101F2C);
  static const Color darkSurface = darkCard;
  static const Color darkTextPrimary = Color(0xFFE6EDF4);
  static const Color darkTextSecondary = Color(0xFFA4B5C4);
  static const Color darkOutline = Color(0xFF223140);
  static const Color darkHighlightIcon = brandSeafoam;
  static const Color darkNavigationBarBackground = Color(0xFF081723);
  static const Color darkButtonBackground = brandSeafoam;
  static const Color darkButtonText = white;

  // Status Colors Sinkron
  static const Color error = brandRed;
  static const Color success = brandGreen;
  static const Color warning = brandOrange;
  static const Color info = brandBlue;

  // Miscellaneous
  static const Color shadowColor = Color(0x140C1A2C);
}
