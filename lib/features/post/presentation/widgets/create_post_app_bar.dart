import 'package:flutter/material.dart';
import 'package:velora/core/themes/color_material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Minimal, modern app bar for create post screen
class CreatePostAppBar extends StatelessWidget {
  final VoidCallback onClosePressed;
  final VoidCallback onNextPressed;
  final bool isNextEnabled;

  const CreatePostAppBar({
    super.key,
    required this.onClosePressed,
    required this.onNextPressed,
    this.isNextEnabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: MaterialColorsCustom.shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            // Close button
            IconButton(
              onPressed: onClosePressed,
              icon: const Icon(Icons.close, size: 24),
              color: MaterialColorsCustom.lightTextPrimary,
              splashRadius: 24,
            ),

            // Title
            Expanded(
              child: Text(
                t.postCreateAppBarTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: MaterialColorsCustom.lightTextPrimary,
                ),
              ),
            ),

            // Next button with gradient
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _NextButton(
                onPressed: isNextEnabled ? onNextPressed : null,
                isEnabled: isNextEnabled,
                label: t.postCreateAppBarNext,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isEnabled;
  final String label;

  const _NextButton({
    required this.onPressed,
    required this.isEnabled,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: isEnabled ? 1.0 : 0.4,
      child: Container(
        decoration: BoxDecoration(
          gradient: isEnabled
              ? const LinearGradient(
                  colors: [
                    MaterialColorsCustom.brandSeafoam,
                    MaterialColorsCustom.brandEmerald,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isEnabled ? null : MaterialColorsCustom.greyMedium,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isEnabled
              ? [
                  BoxShadow(
                    color: MaterialColorsCustom.brandSeafoam.withValues(
                      alpha: 0.3,
                    ),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
