import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthRememberCheckbox extends StatelessWidget {
  const AuthRememberCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.enabled,
  });

  final bool value;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: enabled ? () => onChanged(!value) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedScale(
              scale: value ? 1.02 : 1,
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOutBack,
              child: AnimatedContainer(
                width: 18,
                height: 18,
                duration: const Duration(milliseconds: 180),
                curve: Curves.easeOutCubic,
                decoration: BoxDecoration(
                  color: value
                      ? colorScheme.tertiary
                      : colorScheme.surface.withValues(alpha: 0.64),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: value
                        ? colorScheme.tertiary
                        : colorScheme.outline.withValues(alpha: 0.34),
                    width: 1.1,
                  ),
                  boxShadow: value
                      ? [
                          BoxShadow(
                            color:
                                colorScheme.tertiary.withValues(alpha: 0.16),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ]
                      : null,
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 160),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: value
                      ? Icon(
                          Icons.check_rounded,
                          key: const ValueKey('checked'),
                          size: 13,
                          color: colorScheme.onTertiary,
                        )
                      : const SizedBox.shrink(key: ValueKey('unchecked')),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              t.authRememberMe,
              style: theme.textTheme.bodySmall?.copyWith(
                color: enabled
                    ? colorScheme.onSurfaceVariant
                    : colorScheme.onSurfaceVariant.withValues(alpha: 0.52),
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
