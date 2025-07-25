import 'package:flutter/material.dart';

class MaterialColorsCustom {
  // === Core Brand Colors ===
  static const Color primaryYellow = Color(0xFFFFC107);
  static const Color accentYellow = Color(0xFFFFE082);
  static const Color brandBlue = Color(0xFF4A90E2);
  static const Color brandBlueSoft = Color(0xFF90CAF9);
  static const Color brandRed = Color(0xFFEF5350);
  static const Color brandGreen = Color(0xFF66BB6A);
  static const Color brandOrange = Color(0xFFFFA726);
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  // === Neutral Grayscale ===
  static const Color darkGrey = Color(0xFF2C2F33);       // Abu gelap klasik Velora
  static const Color greyLightBorder = Color(0xFFE0E0E0); // Border Light Mode abu soft
  static const Color greyLightContainer = Color(0xFFF9F9F9); // Container Light Mode (setara grey.shade50)
  static const Color greyMedium = Color(0xFF9E9E9E);     // Abu medium universal
  static const Color greyDarkBorder = Color(0xFF4D515A); // Border Dark Mode

  static const Color arrowIndicatorLight = Color(0xFF757575); // Abu navigasi ">" di Light Mode
  static const Color arrowIndicatorDark = Color(0xFFB0B0B0);  // Abu navigasi ">" di Dark Mode

  // === Light Mode ===
  static const Color lightBackground = white;
  static const Color lightCard = greyLightContainer;
  static const Color lightAppBarBackground = white;
  static const Color lightTextPrimary = Color(0xFF212121);
  static const Color lightTextSecondary = greyMedium;
  static const Color lightIcon = Color(0xFF212121);
  static const Color lightOutline = greyLightBorder;
  static const Color lightHighlightIcon = primaryYellow;
  static const Color lightIconBackground = accentYellow;
  static const Color lightElevatedButtonText = black;
  static const Color lightNavigationBarBackground = white;
  static const Color lightButtonBackground = primaryYellow;
  static const Color lightButtonText = black;
  static const Color lightButtonOutline = primaryYellow;
  static const Color lightContainerDoftBlue = Color(0xFFE3F2FD);
  static const Color lightArrowIndicator = arrowIndicatorLight;
  static const Color lightContainerBorder = Color(0xFFBDBDBD); // Border container abu lebih gelap

  // === Dark Mode ===
  static const Color darkBackground = Color(0xFF121212);  
  static const Color darkCard = Color(0xFF1F1F1F);
  static const Color darkSurface = darkGrey;
  static const Color darkTextPrimary = white;
  static const Color darkTextSecondary = Color(0xFFB0B3BA);
  static const Color darkIcon = white;
  static const Color darkOutline = greyDarkBorder;
  static const Color darkHighlightIcon = primaryYellow;
  static const Color darkIconBackground = accentYellow;
  static const Color darkElevatedButtonText = white;
  static const Color darkNavigationBarBackground = Color(0xFF1E1E1E);
  static const Color darkButtonBackground = accentYellow;
  static const Color darkButtonText = black;
  static const Color darkButtonOutline = accentYellow;
  static const Color darkContainerDoftBlue = Color(0xFF1A2A3A);
  static const Color darkArrowIndicator = arrowIndicatorDark;
  static const Color darkContainerBorder = Color(0xFF2A2A2A); // Border container abu gelap

  // === Status Colors ===
  static const Color error = brandRed;
  static const Color success = brandGreen;
  static const Color warning = brandOrange;
  static const Color info = brandBlue;

  // === Miscellaneous ===
  static const Color shadowColor = Color(0x29000000); 
}
