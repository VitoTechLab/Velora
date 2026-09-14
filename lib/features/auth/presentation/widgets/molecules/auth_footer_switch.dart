import 'package:flutter/material.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthFooterSwitch extends StatelessWidget {
  const AuthFooterSwitch({
    super.key,
    required this.mode,
    required this.onPressed,
    required this.enabled,
  });

  final AuthMode mode;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final prompt = mode.isSignIn ? t.authNoAccount : t.authAlreadyHaveAccount;
    final action = mode.isSignIn ? t.authSignUpLink : t.authSignInLink;

    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          prompt,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        TextButton(
          onPressed: enabled ? onPressed : null,
          child: Text(
            action,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
