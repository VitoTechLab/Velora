// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:velora/core/themes/color_cupertino.dart';

// CupertinoThemeData buildCupertinoTheme(Brightness brightness) {
//   final bool isLight = brightness == Brightness.light;

//   final ColorScheme colorScheme = ColorScheme(
//     brightness: brightness,
//     primary: CupertinoColorsCustom.primaryYellow,
//     onPrimary: isLight ? CupertinoColorsCustom.lightButtonText : CupertinoColorsCustom.darkButtonText,
//     secondary: CupertinoColorsCustom.accentYellow,
//     onSecondary: CupertinoColorsCustom.black,
//     error: CupertinoColorsCustom.brandRed,
//     onError: CupertinoColorsCustom.white,
//     surface: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkSurface,
//     onSurface: isLight ? CupertinoColorsCustom.lightTextPrimary : CupertinoColorsCustom.darkTextPrimary,
//     outline: isLight ? CupertinoColorsCustom.greyLightBorder : CupertinoColorsCustom.darkOutline,
//     inverseSurface: isLight ? CupertinoColorsCustom.darkBackground : CupertinoColorsCustom.lightBackground,
//     inversePrimary: CupertinoColorsCustom.brandBlue,
//     tertiary: CupertinoColorsCustom.brandBlueSoft,
//     onTertiary: isLight ? CupertinoColorsCustom.black : CupertinoColorsCustom.white,
//     surfaceDim: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkCard,
//     surfaceBright: isLight ? CupertinoColorsCustom.white : CupertinoColorsCustom.darkSurface,
//     surfaceContainerLowest: isLight ? CupertinoColorsCustom.white : CupertinoColorsCustom.darkCard,
//     surfaceContainerLow: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkSurface,
//     surfaceContainer: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkSurface,
//     surfaceContainerHigh: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkSurface,
//     surfaceContainerHighest: isLight ? CupertinoColorsCustom.greyLightContainer : CupertinoColorsCustom.darkSurface,
//     onSurfaceVariant: isLight ? CupertinoColorsCustom.greyMedium : CupertinoColorsCustom.darkTextSecondary,
//     outlineVariant: isLight ? CupertinoColorsCustom.greyLightBorder : CupertinoColorsCustom.darkOutline,
//     shadow: CupertinoColorsCustom.shadowColor,
//   );

//   return CupertinoThemeData(
//     brightness: brightness,
//     primaryColor: colorScheme.primary,
//     primaryContrastingColor: colorScheme.secondary,
//     scaffoldBackgroundColor: colorScheme.surfaceContainerLowest,
//     barBackgroundColor: colorScheme.surfaceContainer,
//     textTheme: CupertinoTextThemeData(
//       primaryColor: colorScheme.primary,
//       textStyle: TextStyle(
//         color: colorScheme.onSurface,
//         fontSize: 16,
//       ),
//       navTitleTextStyle: TextStyle(
//         color: colorScheme.onSurface,
//         fontSize: 18,
//         fontWeight: FontWeight.w600,
//       ),
//       navLargeTitleTextStyle: TextStyle(
//         color: colorScheme.onSurface,
//         fontSize: 28,
//         fontWeight: FontWeight.w700,
//       ),
//       actionTextStyle: TextStyle(
//         color: colorScheme.primary,
//         fontSize: 16,
//       ),
//     ),
//   );
// }
