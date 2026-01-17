import 'package:flutter/material.dart';
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
  final bool isDarkTheme;

  const SocialButton({
    super.key,
    required this.brand,
    required this.iconAsset,
    this.onPressed,
    this.isLoading = false,
    this.isDarkTheme = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    // Determine if we should use dark theme styling
    final brightness = Theme.of(context).brightness;
    final useDarkStyle = isDarkTheme || brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      height: useDarkStyle ? 56 : 48,
      child: OutlinedButton(
        onPressed: isLoading ? null : onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: useDarkStyle ? Colors.white : colorScheme.onSurface,
          side: BorderSide(
            color: useDarkStyle
                ? Colors.white.withOpacity(0.15)
                : (isLoading
                    ? colorScheme.outline.withValues(alpha: 0.5)
                    : colorScheme.outline),
            width: useDarkStyle ? 1 : 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(useDarkStyle ? 16 : 12),
          ),
          backgroundColor: useDarkStyle
              ? Colors.white.withOpacity(0.08)
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
                    width: useDarkStyle ? 24 : 20,
                    height: useDarkStyle ? 24 : 20,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    t.authContinueWith(brand),
                    style: useDarkStyle
                        ? const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
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
                width: useDarkStyle ? 24 : 18,
                height: useDarkStyle ? 24 : 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    useDarkStyle
                        ? const Color(0xFF818CF8)
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
