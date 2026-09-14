import 'package:flutter/material.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_feedback_banner.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_glass_card.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_form_fields.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_header.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_remember_checkbox.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_social_section.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_terms_row.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/forgot_password_link.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthFormPanel extends StatelessWidget {
  const AuthFormPanel({
    super.key,
    required this.mode,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.isLoading,
    required this.isEmailLoading,
    required this.isGoogleLoading,
    required this.agreedToTerms,
    required this.rememberMe,
    required this.canSubmit,
    required this.feedbackMessage,
    required this.isFeedbackError,
    required this.onTermsChanged,
    required this.onRememberMeChanged,
    required this.onFormChanged,
    required this.onSubmit,
    required this.onGooglePressed,
    required this.onForgotPassword,
  });

  final AuthMode mode;
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final bool isLoading;
  final bool isEmailLoading;
  final bool isGoogleLoading;
  final bool agreedToTerms;
  final bool rememberMe;
  final bool canSubmit;
  final String? feedbackMessage;
  final bool isFeedbackError;
  final ValueChanged<bool> onTermsChanged;
  final ValueChanged<bool> onRememberMeChanged;
  final VoidCallback onFormChanged;
  final VoidCallback onSubmit;
  final VoidCallback onGooglePressed;
  final VoidCallback onForgotPassword;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final ctaLabel =
        mode.isSignIn ? t.authSignInButton : t.authCreateAccountButton;
    final loadingLabel =
        mode.isSignIn ? t.authSigningIn : t.authCreatingAccount;

    return AuthGlassCard(
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 260),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeInCubic,
              child: AuthHeader(
                key: ValueKey(mode),
                mode: mode,
              ),
            ),
            const SizedBox(height: 28),
            AuthFeedbackBanner(
              message: feedbackMessage,
              isError: isFeedbackError,
            ),
            if (feedbackMessage != null && feedbackMessage!.isNotEmpty)
              const SizedBox(height: 18),
            AuthFormFields(
              mode: mode,
              emailController: emailController,
              passwordController: passwordController,
              emailFocusNode: emailFocusNode,
              passwordFocusNode: passwordFocusNode,
              enabled: !isLoading,
              onPasswordSubmitted: onSubmit,
              onChanged: onFormChanged,
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 220),
              child: mode.isSignIn
                  ? Row(
                      key: const ValueKey('signin-actions'),
                      children: [
                        Expanded(
                          child: AuthRememberCheckbox(
                            value: rememberMe,
                            enabled: !isLoading,
                            onChanged: onRememberMeChanged,
                          ),
                        ),
                        ForgotPasswordLink(
                          onPressed: onForgotPassword,
                          enabled: !isLoading,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(key: ValueKey('signup-actions')),
            ),
            if (mode.isSignUp) ...[
              const SizedBox(height: 10),
              AuthTermsRow(
                value: agreedToTerms,
                enabled: !isLoading,
                onChanged: onTermsChanged,
              ),
            ],
            const SizedBox(height: 24),
            AuthPrimaryButton(
              label: ctaLabel,
              loadingLabel: loadingLabel,
              onPressed: isLoading || !canSubmit ? null : onSubmit,
              isLoading: isEmailLoading,
            ),
            AuthSocialSection(
              onGooglePressed: onGooglePressed,
              isLoading: isGoogleLoading,
              enabled: !isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
