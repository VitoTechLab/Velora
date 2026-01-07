import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Email Verification Screen
///
/// UX Goals:
/// - Guide user through verification
/// - Clear next action
/// - Visible resend option
/// - Escape hatch (sign out)
class VerificationEmailScreen extends StatelessWidget {
  const VerificationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          tooltip: t.commonGoBack,
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Semantics(
            container: true,
            label: t.authEmailVerificationLabel,
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Lottie Animation (OK here - waiting state)
                Semantics(
                  label: t.authAnimatedEmailLabel,
                  image: true,
                  child: ExcludeSemantics(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Lottie.asset(
                        'assets/lottie/email.json',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // Headline
                Semantics(
                  header: true,
                  child: Text(
                    t.authCheckEmailTitle,
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 16),

                // Instructions
                Semantics(
                  label: t.authVerificationInstructions,
                  child: ExcludeSemantics(
                    child: Text(
                      t.authVerificationInstructions,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Primary CTA: I've Verified
                PrimaryButton(
                  text: t.authVerifiedCta,
                  icon: Icons.check_circle_outline,
                  onPressed: () {
                    // After verifying via email link, user can go back to sign in.
                    context.go('/auth/signin');
                  },
                  isLoading: false,
                ),

                const SizedBox(height: 16),

                // Secondary CTA: Resend Email
                Semantics(
                  button: true,
                  label: t.authResendVerificationLabel,
                  child: ExcludeSemantics(
                    child: TextButton.icon(
                      onPressed: () {
                        _showInlineMessage(
                          context,
                          t.authVerificationEmailResent,
                          isError: false,
                        );
                      },
                      icon: Icon(
                        Icons.refresh,
                        size: 18,
                        color: colorScheme.primary,
                      ),
                      label: Text(
                        t.authResendVerificationLabel,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                // Footer: Wrong email? Sign out
                Semantics(
                  button: true,
                  label: t.authWrongEmail,
                  hint: t.authSignOutHint,
                  child: ExcludeSemantics(
                    child: TextButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthSignOutRequested());
                        context.go('/auth/signin');
                      },
                      child: Text(
                        t.authWrongEmail,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showInlineMessage(
    BuildContext context,
    String message, {
    required bool isError,
  }) {
    AppMessenger.showToast(
      message: message,
      icon: isError ? Icons.error_outline : Icons.info_outline,
      isError: isError,
      duration: const Duration(seconds: 3),
    );
  }
}
