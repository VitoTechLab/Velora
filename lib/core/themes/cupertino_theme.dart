import 'package:flutter/cupertino.dart';
import 'package:velora/core/themes/color_cupertino.dart';
import 'material_theme.dart';

CupertinoThemeData buildCupertinoTheme(Brightness brightness) {
  final bool isLight = brightness == Brightness.light;

  return CupertinoThemeData(
    brightness: brightness,
    primaryColor: buildTheme(brightness).colorScheme.primary,
    scaffoldBackgroundColor: isLight
        ? CupertinoColorsCustom.lightBackground
        : CupertinoColorsCustom.darkBackground,
    barBackgroundColor: isLight
        ? CupertinoColorsCustom.lightNavigationBarBackground
        : CupertinoColorsCustom.darkNavigationBarBackground,
    textTheme: CupertinoTextThemeData(
      primaryColor: isLight
          ? CupertinoColorsCustom.lightTextPrimary
          : CupertinoColorsCustom.darkTextPrimary,
      textStyle: TextStyle(
        fontSize: 16,
        color: isLight
            ? CupertinoColorsCustom.lightTextPrimary
            : CupertinoColorsCustom.darkTextPrimary,
      ),
      navTitleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: isLight
            ? CupertinoColorsCustom.lightTextPrimary
            : CupertinoColorsCustom.darkTextPrimary,
      ),
      navLargeTitleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: isLight
            ? CupertinoColorsCustom.lightTextPrimary
            : CupertinoColorsCustom.darkTextPrimary,
      ),
      actionTextStyle: TextStyle(
        fontSize: 16,
        color: buildTheme(brightness).colorScheme.primary,
      ),
    ),
  );
}

final CupertinoThemeData cupertinoLightTheme = buildCupertinoTheme(
  Brightness.light,
);
final CupertinoThemeData cupertinoDarkTheme = buildCupertinoTheme(
  Brightness.dark,
);
