import 'package:flutter/material.dart';

/// Primary CTA button following Velora design system.
///
/// Features:
/// - Full-width by default
/// - Inline loading state (spinner + disabled)
/// - Elevation shadow / Neon glow
/// - 56dp height (thumb-friendly)
/// - 12dp/16dp border radius (modern)
/// - Supports both light and dark themes with gradient
class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isFullWidth;
  final IconData? icon;
  final double? height;
  final bool isDarkTheme;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isFullWidth = true,
    this.icon,
    this.height = 56,
    this.isDarkTheme = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    // Determine if we should use dark theme styling
    final brightness = Theme.of(context).brightness;
    final useDarkStyle = isDarkTheme || brightness == Brightness.dark;

    if (useDarkStyle) {
      // Dark theme with gradient and neon glow
      return SizedBox(
        width: isFullWidth ? double.infinity : null,
        height: height ?? 56,
        child: ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            disabledBackgroundColor: Colors.transparent,
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: onPressed == null
                  ? LinearGradient(
                      colors: [
                        Colors.grey[600]!.withOpacity(0.3),
                        Colors.grey[600]!.withOpacity(0.3),
                      ],
                    )
                  : const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF6366F1),
                        Color(0xFF8B5CF6),
                        Color(0xFFA855F7),
                      ],
                    ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: onPressed != null && !isLoading
                  ? [
                      BoxShadow(
                        color: const Color(0xFF6366F1).withOpacity(0.5),
                        blurRadius: 25,
                        offset: const Offset(0, 8),
                      ),
                      BoxShadow(
                        color: const Color(0xFF8B5CF6).withOpacity(0.3),
                        blurRadius: 40,
                        offset: const Offset(0, 12),
                      ),
                    ]
                  : null,
            ),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                        if (icon != null) ...[
                          Icon(icon, size: 20, color: Colors.white),
                          const SizedBox(width: 8),
                        ],
                        Text(
                          text,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isLoading)
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // Light theme (original design)
    final button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        disabledBackgroundColor: colorScheme.primary.withValues(alpha: 0.5),
        disabledForegroundColor: colorScheme.onPrimary.withValues(alpha: 0.7),
        minimumSize: Size(isFullWidth ? double.infinity : 120, height ?? 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: isLoading ? 0 : 2,
        shadowColor: colorScheme.shadow.withValues(alpha: 0.15),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                if (icon != null) ...[
                  Icon(icon, size: 20),
                  const SizedBox(width: 8),
                ],
                Text(
                  text,
                  style: textTheme.labelLarge?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          if (isLoading)
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  colorScheme.onPrimary.withValues(alpha: 0.9),
                ),
              ),
            ),
        ],
      ),
    );

    return isFullWidth
        ? SizedBox(width: double.infinity, child: button)
        : button;
  }
}
