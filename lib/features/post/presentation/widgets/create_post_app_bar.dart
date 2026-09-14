import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Minimal app bar for post creation with close and next actions
class CreatePostAppBar extends StatelessWidget {
  const CreatePostAppBar({
    super.key,
    required this.onClosePressed,
    required this.onNextPressed,
    this.isNextEnabled = false,
  });

  final VoidCallback onClosePressed;
  final VoidCallback onNextPressed;
  final bool isNextEnabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            // Close button with modern container
            Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onClosePressed,
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.close,
                      size: 24,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ),

            // Title with gradient
            Expanded(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.secondary,
                  ],
                ).createShader(bounds),
                child: Text(
                  t.postCreateAppBarTitle,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Colors.white,
                    letterSpacing: 0.2,
                  ),
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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: isEnabled ? 1.0 : 0.4,
      child: Container(
        decoration: BoxDecoration(
          gradient: isEnabled
              ? LinearGradient(
                  colors: [
                    colorScheme.primary,
                    colorScheme.primary.withValues(alpha: 0.85),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isEnabled ? null : colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          boxShadow: isEnabled
              ? [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.3),
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
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                label,
                style: textTheme.labelLarge?.copyWith(
                  color: isEnabled
                      ? colorScheme.onPrimary
                      : colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
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
