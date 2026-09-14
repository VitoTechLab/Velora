import 'package:flutter/material.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_brand_mark.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_impact_halo.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.mode,
  });

  final AuthMode mode;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final title =
        mode.isSignIn ? t.authWelcomeBackTitle : t.authCreateAccountTitle;
    final subtitle =
        mode.isSignIn ? t.authSignInSubtitle : t.authJoinCommunitySubtitle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(child: AuthImpactHalo(child: AuthBrandMark())),
        const SizedBox(height: 24),
        Semantics(
          header: true,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
            height: 1.45,
          ),
        ),
      ],
    );
  }
}
