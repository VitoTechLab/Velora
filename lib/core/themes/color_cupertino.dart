import 'package:flutter/material.dart';

class CupertinoColorsCustom {
  // === Brand Tetap Sinkron ===
  static const Color primaryYellow = Color(0xFFFFC107);
  static const Color accentYellow = Color(0xFFFFE082);
  static const Color brandBlue = Color(0xFF4A90E2);
  static const Color brandBlueSoft = Color(0xFF90CAF9);
  static const Color brandRed = Color(0xFFEF5350);
  static const Color brandGreen = Color(0xFF66BB6A);
  static const Color brandOrange = Color(0xFFFFA726);
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  // === Soft Neutral iOS Style ===
  static const Color softWhite = Color(0xFFF9F9F9); // mirip container Light Velora
  static const Color softContainer = Color(0xFFF5F5F7); 
  static const Color softBorder = Color(0xFFE0E0E0);
  static const Color softGreyMedium = Color(0xFFB0B0B0);
  static const Color softGreyDark = Color(0xFF2C2C2E);

  // === Light Mode iOS Feel ===
  static const Color lightBackground = softWhite;
  static const Color lightCard = softContainer;
  static const Color lightAppBarBackground = softContainer;
  static const Color lightTextPrimary = Color(0xFF1C1C1E);
  static const Color lightTextSecondary = softGreyMedium;
  static const Color lightOutline = softBorder;
  static const Color lightHighlightIcon = primaryYellow;
  static const Color lightNavigationBarBackground = softContainer;
  static const Color lightButtonBackground = primaryYellow;
  static const Color lightButtonText = black;

  // === Dark Mode iOS Feel ===
  static const Color darkBackground = Color(0xFF000000);
  static const Color darkCard = softGreyDark;
  static const Color darkSurface = softGreyDark;
  static const Color darkTextPrimary = white;
  static const Color darkTextSecondary = Color(0xFF8E8E93);
  static const Color darkOutline = Color(0xFF3A3A3C);
  static const Color darkHighlightIcon = primaryYellow;
  static const Color darkNavigationBarBackground = Color(0xFF1C1C1E);
  static const Color darkButtonBackground = accentYellow;
  static const Color darkButtonText = black;

  // === Status Colors Sinkron ===
  static const Color error = brandRed;
  static const Color success = brandGreen;
  static const Color warning = brandOrange;
  static const Color info = brandBlue;

  // === Miscellaneous ===
  static const Color shadowColor = Color(0x29000000); 
}
