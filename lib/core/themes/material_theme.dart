import 'package:flutter/material.dart';
import 'ui_tokens.dart';

ThemeData buildTheme(Brightness brightness) {
  final light = brightness == Brightness.light;
  final colors =
      ColorScheme.fromSeed(
        seedColor: const Color(0xFF7436C9),
        brightness: brightness,
      ).copyWith(
        primary: light ? const Color(0xFF7134BD) : const Color(0xFFD0ACFF),
        onPrimary: light ? Colors.white : const Color(0xFF301052),
        surface: light ? const Color(0xFFFEFDFE) : const Color(0xFF171619),
        onSurface: light ? const Color(0xFF252329) : const Color(0xFFF1EDF4),
        onSurfaceVariant: light
            ? const Color(0xFF66616D)
            : const Color(0xFFBDB6C5),
        surfaceContainerLowest: light ? Colors.white : const Color(0xFF131215),
        surfaceContainerLow: light
            ? const Color(0xFFF8F7F9)
            : const Color(0xFF1E1C21),
        surfaceContainer: light
            ? const Color(0xFFF4F2F6)
            : const Color(0xFF252229),
        surfaceContainerHigh: light
            ? const Color(0xFFEEEAF1)
            : const Color(0xFF2C2831),
        surfaceContainerHighest: light
            ? const Color(0xFFEAE6EE)
            : const Color(0xFF35303B),
        outline: light ? const Color(0xFFB3ACBA) : const Color(0xFF756B7F),
        outlineVariant: light
            ? const Color(0xFFE4DFE8)
            : const Color(0xFF3A343F),
        secondary: light ? const Color(0xFF087E78) : const Color(0xFF83D5CC),
        onSecondary: light ? Colors.white : const Color(0xFF003733),
        secondaryContainer: light
            ? const Color(0xFFE1F5EF)
            : const Color(0xFF143E38),
        onSecondaryContainer: light
            ? const Color(0xFF165149)
            : const Color(0xFFC0F1DF),
        tertiary: light ? const Color(0xFF087E78) : const Color(0xFF83D5CC),
        onTertiary: light ? Colors.white : const Color(0xFF003733),
        error: light ? const Color(0xFFB3261E) : const Color(0xFFFFB4AB),
      );
  // Use the platform font: crisp, accessible and available offline at launch.
  final base = ThemeData(brightness: brightness, useMaterial3: true);
  TextStyle type(double size, FontWeight weight, {double height = 1.4}) =>
      TextStyle(
        fontSize: size,
        fontWeight: weight,
        height: height,
        color: colors.onSurface,
      );
  final text = base.textTheme.copyWith(
    displayLarge: type(32, FontWeight.w700, height: 1.2),
    displayMedium: type(28, FontWeight.w700, height: 1.2),
    displaySmall: type(24, FontWeight.w700, height: 1.25),
    headlineLarge: type(28, FontWeight.w700, height: 1.25),
    headlineMedium: type(24, FontWeight.w700, height: 1.25),
    headlineSmall: type(20, FontWeight.w700, height: 1.3),
    titleLarge: type(20, FontWeight.w600, height: 1.3),
    titleMedium: type(16, FontWeight.w600),
    titleSmall: type(14, FontWeight.w600),
    bodyLarge: type(16, FontWeight.w400, height: 1.5),
    bodyMedium: type(14, FontWeight.w400, height: 1.5),
    bodySmall: type(12, FontWeight.w400),
    labelLarge: type(14, FontWeight.w600),
    labelMedium: type(12, FontWeight.w600),
    labelSmall: type(12, FontWeight.w500),
  );
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(UiTokens.radiusMedium),
  );
  OutlineInputBorder border(Color color, [double width = 1]) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(UiTokens.radiusMedium),
        borderSide: BorderSide(color: color, width: width),
      );
  final button = ButtonStyle(
    minimumSize: const WidgetStatePropertyAll(Size(48, UiTokens.controlHeight)),
    padding: const WidgetStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    shape: WidgetStatePropertyAll(shape),
    textStyle: WidgetStatePropertyAll(text.labelLarge),
    elevation: const WidgetStatePropertyAll(0),
    tapTargetSize: MaterialTapTargetSize.padded,
  );
  return base.copyWith(
    colorScheme: colors,
    textTheme: text,
    scaffoldBackgroundColor: colors.surface,
    appBarTheme: AppBarTheme(
      backgroundColor: colors.surface,
      foregroundColor: colors.onSurface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleSpacing: 16,
      titleTextStyle: text.titleLarge,
    ),
    iconTheme: IconThemeData(color: colors.onSurfaceVariant, size: 24),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(minimumSize: const Size(48, 48)),
    ),
    filledButtonTheme: FilledButtonThemeData(style: button),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: button.copyWith(
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.disabled)
              ? colors.onSurface.withValues(alpha: .12)
              : colors.primary,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.disabled)
              ? colors.onSurface.withValues(alpha: .38)
              : colors.onPrimary,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: button.copyWith(
        side: WidgetStatePropertyAll(BorderSide(color: colors.outlineVariant)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(style: button),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors.surfaceContainerLow,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: border(colors.outlineVariant),
      enabledBorder: border(colors.outlineVariant),
      focusedBorder: border(colors.primary, 1.5),
      disabledBorder: border(colors.outlineVariant.withValues(alpha: .5)),
      errorBorder: border(colors.error),
      focusedErrorBorder: border(colors.error, 1.5),
      hintStyle: text.bodyMedium?.copyWith(color: colors.onSurfaceVariant),
      errorMaxLines: 3,
    ),
    cardTheme: CardThemeData(
      color: colors.surface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colors.outlineVariant),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: colors.outlineVariant,
      thickness: .75,
      space: 16,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      iconColor: colors.onSurfaceVariant,
      titleTextStyle: text.bodyLarge,
      subtitleTextStyle: text.bodySmall?.copyWith(
        color: colors.onSurfaceVariant,
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: colors.surface,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: text.titleLarge,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colors.surface,
      surfaceTintColor: Colors.transparent,
      showDragHandle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: colors.surface,
      selectedColor: colors.primaryContainer,
      side: BorderSide(color: colors.outlineVariant),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      labelStyle: text.labelMedium,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colors.primary,
      linearTrackColor: colors.surfaceContainerHighest,
      linearMinHeight: 6,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colors.primary,
      unselectedLabelColor: colors.onSurfaceVariant,
      labelStyle: text.labelLarge,
      unselectedLabelStyle: text.labelLarge,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: colors.outlineVariant,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colors.surface,
      indicatorColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      height: 64,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (s) => text.labelSmall!.copyWith(
          color: s.contains(WidgetState.selected)
              ? colors.primary
              : colors.onSurfaceVariant,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (s) => IconThemeData(
          color: s.contains(WidgetState.selected)
              ? colors.primary
              : colors.onSurfaceVariant,
          size: 24,
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      elevation: 0,
      shape: shape,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      shape: shape,
      backgroundColor: colors.inverseSurface,
      contentTextStyle: text.bodyMedium?.copyWith(
        color: colors.onInverseSurface,
      ),
    ),
  );
}

final ThemeData materialLightTheme = buildTheme(Brightness.light);
final ThemeData materialDarkTheme = buildTheme(Brightness.dark);
