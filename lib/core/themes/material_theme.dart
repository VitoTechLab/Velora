import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velora/core/themes/color_material.dart';

ThemeData buildTheme(Brightness brightness) {
  final bool isLight = brightness == Brightness.light;

  final ColorScheme colorScheme = ColorScheme(
    brightness: brightness,
    primary: MaterialColorsCustom.primaryYellow,
    onPrimary: isLight
        ? MaterialColorsCustom.lightButtonText
        : MaterialColorsCustom.darkButtonText,
    secondary: MaterialColorsCustom.accentYellow,
    onSecondary: MaterialColorsCustom.black,
    error: MaterialColorsCustom.brandRed,
    onError: MaterialColorsCustom.white,
    surface: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkSurface,
    onSurface: isLight
        ? MaterialColorsCustom.lightTextPrimary
        : MaterialColorsCustom.darkTextPrimary,
    outline: isLight
        ? MaterialColorsCustom.greyLightBorder
        : MaterialColorsCustom.darkOutline,
    inverseSurface: isLight
        ? MaterialColorsCustom.darkBackground
        : MaterialColorsCustom.lightBackground,
    inversePrimary: MaterialColorsCustom.brandBlue,
    tertiary: MaterialColorsCustom.brandBlueSoft,
    onTertiary: isLight
        ? MaterialColorsCustom.black
        : MaterialColorsCustom.white,

    // Tambahan Properti Baru (Gak wajib semua diisi, tergantung kebutuhan)
    surfaceDim: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkCard,
    surfaceBright: isLight
        ? MaterialColorsCustom.white
        : MaterialColorsCustom.darkSurface,
    surfaceContainerLowest: isLight
        ? MaterialColorsCustom.white
        : MaterialColorsCustom.darkCard,
    surfaceContainerLow: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkSurface,
    surfaceContainer: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkSurface,
    surfaceContainerHigh: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkSurface,
    surfaceContainerHighest: isLight
        ? MaterialColorsCustom.greyLightContainer
        : MaterialColorsCustom.darkSurface,

    // Optional, tapi recommended untuk icon atau outline halus
    onSurfaceVariant: isLight
        ? MaterialColorsCustom.greyMedium
        : MaterialColorsCustom.darkTextSecondary,
    outlineVariant: isLight
        ? MaterialColorsCustom.greyLightBorder
        : MaterialColorsCustom.darkOutline,
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
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 4,
        shadowColor: MaterialColorsCustom.shadowColor,
        minimumSize: const Size.fromHeight(50),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.outline),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
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
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      hintStyle: TextStyle(color: colorScheme.onSurfaceVariant),
      isDense: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.secondaryContainer,
      foregroundColor: colorScheme.onSecondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainerLow,
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
    ),
    cardTheme: CardThemeData(
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
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
      backgroundColor: colorScheme.surfaceContainer,
      contentTextStyle: textTheme.bodyMedium,
      actionTextColor: colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

final ThemeData materialLightTheme = buildTheme(Brightness.light);
final ThemeData materialDarkTheme = buildTheme(Brightness.dark);
