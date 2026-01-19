import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velora/core/themes/color_material.dart';

ThemeData buildTheme(Brightness brightness) {
  final bool isLight = brightness == Brightness.light;

  final ColorScheme colorScheme = ColorScheme(
    brightness: brightness,
    primary: MaterialColorsCustom.neonViolet,
    onPrimary: MaterialColorsCustom.white,
    secondary: MaterialColorsCustom.neonPurple,
    onSecondary: MaterialColorsCustom.white,
    error: MaterialColorsCustom.brandRed,
    onError: MaterialColorsCustom.white,
    surface: isLight ? MaterialColorsCustom.white : const Color(0xFF121212),
    onSurface: isLight
        ? MaterialColorsCustom.lightTextPrimary
        : MaterialColorsCustom.darkTextPrimary,
    outline: isLight
        ? MaterialColorsCustom.greyLightBorder
        : const Color(0xFF3D3D3D),
    inverseSurface:
        isLight ? const Color(0xFF121212) : MaterialColorsCustom.white,
    inversePrimary: MaterialColorsCustom.neonIndigo,
    tertiary: MaterialColorsCustom.neonTeal,
    onTertiary: MaterialColorsCustom.white,

    // Surface variants: clean white untuk light, pure dark untuk dark
    surfaceDim: isLight ? MaterialColorsCustom.mist : const Color(0xFF0D0D0D),
    surfaceBright:
        isLight ? MaterialColorsCustom.white : const Color(0xFF1E1E1E),
    surfaceContainerLowest:
        isLight ? MaterialColorsCustom.white : const Color(0xFF121212),
    surfaceContainerLow:
        isLight ? MaterialColorsCustom.white : const Color(0xFF1A1A1A),
    surfaceContainer:
        isLight ? MaterialColorsCustom.mist : const Color(0xFF1E1E1E),
    surfaceContainerHigh:
        isLight ? MaterialColorsCustom.mist : const Color(0xFF222222),
    surfaceContainerHighest: isLight
        ? MaterialColorsCustom.greyLightContainer
        : const Color(0xFF2A2A2A),

    // Optional, tapi recommended untuk icon atau outline halus
    onSurfaceVariant:
        isLight ? MaterialColorsCustom.greyMedium : const Color(0xFF9E9E9E),
    outlineVariant: isLight
        ? MaterialColorsCustom.greyLightBorder
        : const Color(0xFF3D3D3D),
    shadow: MaterialColorsCustom.shadowColor,
  );

  final baseColor = colorScheme.onSurface;

  TextTheme veloraTextTheme(Color baseColor) {
    return TextTheme(
      displayLarge: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        height: 1.2,
        color: baseColor,
      ),
      displayMedium: GoogleFonts.pacifico(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        color: baseColor,
      ),
      headlineLarge: GoogleFonts.montserrat(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.25,
        color: baseColor,
      ),
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.3,
        color: baseColor,
      ),
      headlineSmall: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 1.3,
        color: baseColor,
      ),
      titleLarge: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.4,
        color: baseColor,
      ),
      titleMedium: GoogleFonts.sourceSans3(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.4,
        color: baseColor,
      ),
      bodyLarge: GoogleFonts.sourceSans3(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
        color: baseColor,
      ),
      bodyMedium: GoogleFonts.sourceSans3(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: baseColor,
      ),
      bodySmall: GoogleFonts.sourceSans3(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: baseColor,
      ),
      labelLarge: GoogleFonts.sourceSans3(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.4,
        color: baseColor,
      ),
    );
  }

  final TextTheme textTheme = veloraTextTheme(baseColor);

  return ThemeData(
    brightness: brightness,
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.surfaceContainerLowest,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surfaceContainerLowest,
      foregroundColor: baseColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: textTheme.titleMedium,
    ),
    textTheme: textTheme,
    iconTheme: IconThemeData(color: baseColor),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        shadowColor: Colors.transparent,
        minimumSize: const Size.fromHeight(56),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        side: BorderSide(color: colorScheme.outline),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size.fromHeight(48),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      hintStyle: TextStyle(color: colorScheme.onSurfaceVariant),
      isDense: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor:
          isLight ? MaterialColorsCustom.white : const Color(0xFF121212),
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        return IconThemeData(
          color: states.contains(WidgetState.selected)
              ? colorScheme.primary
              : colorScheme.onSurfaceVariant,
        );
      }),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: isLight ? MaterialColorsCustom.white : const Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      margin: const EdgeInsets.all(8),
    ),
    dividerTheme: DividerThemeData(
      color: colorScheme.outlineVariant,
      thickness: 1,
      space: 24,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(colorScheme.primary),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(colorScheme.primary),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(colorScheme.primary),
      trackColor: WidgetStateProperty.all(
        Color.alphaBlend(
          colorScheme.primary.withAlpha(102),
          colorScheme.surfaceContainerLowest,
        ),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurfaceVariant,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor:
          isLight ? MaterialColorsCustom.black : const Color(0xFF1E1E1E),
      contentTextStyle: textTheme.bodyMedium?.copyWith(
        color: MaterialColorsCustom.white,
      ),
      actionTextColor: colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
    ),
  );
}

final ThemeData materialLightTheme = buildTheme(Brightness.light);
final ThemeData materialDarkTheme = buildTheme(Brightness.dark);
