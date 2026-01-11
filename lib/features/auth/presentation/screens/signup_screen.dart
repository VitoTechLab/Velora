import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/app_logger.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/auth_divider.dart';
import 'package:velora/features/auth/presentation/widgets/components/password_field.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/components/social_button.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Sign Up Screen
///
/// UX Goals:
/// - Quick account creation
/// - Trust signals (password strength)
/// - Progressive disclosure (hints on focus)
/// - Minimal required fields
class SignUpScreen extends HookWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final agreedToTerms = useState(false);

    final submitSignUp = useCallback(
      () {
        if (!agreedToTerms.value) {
          AppMessenger.showToast(
            message: t.authAgreeTermsError,
            icon: Icons.error_outline,
            isError: true,
          );
          return;
        }

        // Unfocus to trigger validation on all fields
        FocusScope.of(context).unfocus();
        
        // Get bloc reference before async gap
        final bloc = context.read<AuthBloc>();
        
        // Small delay to allow focus change to complete validation
        Future.microtask(() {
          if (formKey.currentState?.validate() ?? false) {
            AppLogger.i("[RedesignedSignUp] Sign up initiated");
            bloc.add(
              AuthSignUpRequested(
                email: emailController.text.trim(),
                password: passwordController.text,
              ),
            );
            // Don't clear form here - wait for success response
          }
        });
      },
      [emailController, passwordController, formKey, agreedToTerms],
    );

    final signInWithGoogle = useCallback(() {
      AppLogger.i("[RedesignedSignUp] Google sign-in tapped (not implemented)");
      AppMessenger.showToast(
        message: t.authGoogleUnavailable,
        icon: Icons.error_outline,
        isError: true,
      );
    }, [context]);

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          AppLogger.e("[RedesignedSignUp] Error: ${state.errorMessage}");
          AppMessenger.showToast(
            message: state.errorMessage!,
            icon: Icons.error_outline,
            isError: true,
          );
        } else if (state.message != null && state.message!.isNotEmpty) {
          AppLogger.i("[RedesignedSignUp] Info: ${state.message}");
          AppMessenger.showToast(
            message: state.message!,
            icon: Icons.check_circle_outline,
            isError: false,
          );
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainerLowest,
        body: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final isLoading = state.isLoading;
              final isEmailLoading = state.isEmailLoading;
              final isGoogleLoading = state.isGoogleLoading;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Semantics(
                  container: true,
                  label: t.authSignUpFormLabel,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),

                        // Brand Logo
                        Center(
                          child: Semantics(
                            label: t.authLogoLabel,
                            image: true,
                            child: ExcludeSemantics(
                              child: Container(
                                width: 56,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(
                                  Icons.favorite_rounded,
                                  color: colorScheme.primary,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // Headline
                        Semantics(
                          header: true,
                          child: Text(
                            t.authCreateAccountTitle,
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Subtext
                        Semantics(
                          label: t.authJoinCommunitySubtitle,
                          child: ExcludeSemantics(
                            child: Text(
                              t.authJoinCommunitySubtitle,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Email Field
                        CustomTextField(
                          controller: emailController,
                          focusNode: emailFocusNode,
                          label: t.fieldEmailLabel,
                          hint: t.fieldEmailHint,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: FieldValidator.email,
                          prefixIcon: Icon(Icons.email_outlined, size: 20),
                          enabled: !isLoading,
                        ),

                        const SizedBox(height: 16),

                        // Password Field with Strength Indicator
                        PasswordField(
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                          validator: FieldValidator.password,
                          label: t.fieldPasswordLabel,
                          showStrengthIndicator: true,
                          showPasswordHints: true,
                          onEditingComplete: submitSignUp,
                        ),

                        const SizedBox(height: 20),

                        // Terms & Privacy Checkbox
                        Semantics(
                          container: true,
                          label: t.authAgreeTermsLabel,
                          toggled: agreedToTerms.value,
                          onTap: isLoading
                              ? null
                              : () =>
                                    agreedToTerms.value = !agreedToTerms.value,
                          child: ExcludeSemantics(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Checkbox(
                                    value: agreedToTerms.value,
                                    onChanged: isLoading
                                        ? null
                                        : (value) => agreedToTerms.value =
                                              value ?? false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () => agreedToTerms.value =
                                        !agreedToTerms.value,
                                    child: Text.rich(
                                      TextSpan(
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                              color:
                                                  colorScheme.onSurfaceVariant,
                                              height: 1.5,
                                            ),
                                        children: [
                                          TextSpan(
                                            text: t.authAgreeTermsPrefix,
                                          ),
                                          TextSpan(
                                            text: t.authTermsOfService,
                                            style: TextStyle(
                                              color: colorScheme.primary,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                          TextSpan(text: t.authAnd),
                                          TextSpan(
                                            text: t.authPrivacyPolicy,
                                            style: TextStyle(
                                              color: colorScheme.primary,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // Primary CTA
                        PrimaryButton(
                          text: t.authCreateAccountButton,
                          onPressed: isLoading ? null : submitSignUp,
                          isLoading: isEmailLoading,
                        ),

                        // Divider
                        AuthDivider(text: t.authDividerText),

                        // Social Login
                        SocialButton(
                          brand: 'Google',
                          iconAsset: 'assets/images/google.png',
                          onPressed: isLoading ? null : signInWithGoogle,
                          isLoading: isGoogleLoading,
                        ),

                        const SizedBox(height: 32),

                        // Footer: Switch to Sign In
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                t.authAlreadyHaveAccount,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () => context.goNamed(AppRouteName.signIn),
                                child: Text(
                                  t.authSignInLink,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: colorScheme.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
