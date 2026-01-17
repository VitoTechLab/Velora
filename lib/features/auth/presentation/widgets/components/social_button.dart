import 'package:flutter/material.dart';
import 'package:velora/core/themes/color_material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Secondary button for social auth (Google, Apple, etc.)
///
/// Features:
/// - Outlined style (not filled)
/// - Brand logo + text
/// - Full-width
/// - 48dp/56dp height (secondary action)
/// - 12dp/16dp border radius
/// - Supports both light and dark themes
class SocialButton extends StatelessWidget {
  final String brand;
  final String iconAsset;
  final VoidCallback? onPressed;
  final bool isLoading;

  const SocialButton({
    super.key,
    required this.brand,
    required this.iconAsset,
    this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final isDark = colorScheme.brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      height: isDark ? 56 : 48,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor:
              isDark ? colorScheme.onSurface : colorScheme.onSurface,
          side: BorderSide(
            color: isDark
                ? colorScheme.onSurface.withValues(alpha: 0.15)
                : (isLoading
                    ? colorScheme.outline.withValues(alpha: 0.5)
                    : colorScheme.outline),
            width: isDark ? 1 : 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(isDark ? 16 : 12),
          ),
          backgroundColor: isDark
              ? colorScheme.onSurface.withValues(alpha: 0.08)
              : colorScheme.surface,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              opacity: isLoading ? 0 : 1,
              duration: const Duration(milliseconds: 200),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iconAsset,
                    width: isDark ? 24 : 20,
                    height: isDark ? 24 : 20,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    t.authContinueWith(brand),
                    style: isDark
                        ? TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: colorScheme.onSurface,
                          )
                        : textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: colorScheme.onSurface,
                          ),
                  ),
                ],
              ),
            ),
            if (isLoading)
              SizedBox(
                width: isDark ? 24 : 18,
                height: isDark ? 24 : 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isDark
                        ? MaterialColorsCustom.neonIndigo
                        : colorScheme.primary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
