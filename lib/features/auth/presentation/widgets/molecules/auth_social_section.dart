import 'package:flutter/material.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_divider.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_social_button.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthSocialSection extends StatelessWidget {
  const AuthSocialSection({
    super.key,
    required this.onGooglePressed,
    required this.isLoading,
    required this.enabled,
  });

  final VoidCallback onGooglePressed;
  final bool isLoading;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Column(
      children: [
        const SizedBox(height: 24),
        AuthDivider(label: t.authDividerText),
        const SizedBox(height: 24),
        AuthSocialButton(
          brand: 'Google',
          iconAsset: 'assets/images/google.png',
          onPressed: enabled ? onGooglePressed : null,
          isLoading: isLoading,
        ),
      ],
    );
  }
}
