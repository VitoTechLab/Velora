import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthTermsRow extends StatelessWidget {
  const AuthTermsRow({
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
      borderRadius: BorderRadius.circular(14),
      onTap: enabled ? () => onChanged(!value) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: _AuthMiniCheckbox(
                value: value,
                enabled: enabled,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text.rich(
                TextSpan(
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    height: 1.45,
                  ),
                  children: [
                    TextSpan(text: t.authAgreeTermsPrefix),
                    TextSpan(
                      text: t.authTermsOfService,
                      style: TextStyle(
                        color: colorScheme.tertiary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(text: t.authAnd),
                    TextSpan(
                      text: t.authPrivacyPolicy,
                      style: TextStyle(
                        color: colorScheme.tertiary,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AuthMiniCheckbox extends StatelessWidget {
  const _AuthMiniCheckbox({
    required this.value,
    required this.enabled,
  });

  final bool value;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedContainer(
      width: 18,
      height: 18,
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
        color: value
            ? colorScheme.tertiary
            : colorScheme.surface.withValues(alpha: enabled ? 0.68 : 0.38),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: value
              ? colorScheme.tertiary
              : colorScheme.outline.withValues(alpha: enabled ? 0.34 : 0.18),
          width: 1.1,
        ),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: value
            ? Icon(
                Icons.check_rounded,
                key: const ValueKey('checked'),
                size: 13,
                color: colorScheme.onTertiary,
              )
            : const SizedBox.shrink(key: ValueKey('unchecked')),
      ),
    );
  }
}
