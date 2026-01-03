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

/// Login Screen
///
/// UX Goals:
/// - Fast entry for returning users
/// - Minimal friction
/// - Clear visual hierarchy
/// - Thumb-friendly layout
class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

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

    final clearForm = useCallback(() {
      FocusScope.of(context).unfocus();
      emailController.clear();
      passwordController.clear();
    }, [emailController, passwordController]);

    final submitLogin = useCallback(() {
      if (formKey.currentState?.validate() ?? false) {
        context.read<AuthBloc>().add(
          AuthSignInRequested(
            email: emailController.text.trim(),
            password: passwordController.text,
          ),
        );
        clearForm();
      }
    }, [emailController, passwordController, formKey, clearForm]);

    final signInWithGoogle = useCallback(() {
      AppLogger.i("[RedesignedLogin] Google sign-in tapped");
      context.read<AuthBloc>().add(const AuthSignInWithGoogleRequested());
    }, [context]);

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          AppLogger.e("[RedesignedLogin] Error: ${state.errorMessage}");
          _showInlineMessage(context, state.errorMessage!, isError: true);
        } else if (state.message != null && state.message!.isNotEmpty) {
          AppLogger.i("[RedesignedLogin] Info: ${state.message}");
          _showInlineMessage(context, state.message!, isError: false);
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: Scaffold(
        backgroundColor: colorScheme.surfaceContainerLowest,
        body: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final isLoading = state.isLoading;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Semantics(
                  container: true,
                  label: t.authSignInFormLabel,
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
                            t.authWelcomeBackTitle,
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Subtext
                        Semantics(
                          label: t.authSignInSubtitle,
                          child: ExcludeSemantics(
                            child: Text(
                              t.authSignInSubtitle,
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

                        // Password Field
                        PasswordField(
                          controller: passwordController,
                          focusNode: passwordFocusNode,
                          validator: FieldValidator.password,
                          label: t.fieldPasswordLabel,
                          onEditingComplete: submitLogin,
                        ),

                        // Forgot Password Link
                        Align(
                          alignment: Alignment.centerRight,
                          child: Semantics(
                            button: true,
                            label: t.authForgotPasswordHint,
                            child: ExcludeSemantics(
                              child: TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () =>
                                          context.push('/auth/reset-password'),
                                child: Text(
                                  t.authForgotPassword,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: colorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Primary CTA
                        PrimaryButton(
                          text: t.authSignInButton,
                          onPressed: submitLogin,
                          isLoading: isLoading,
                        ),

                        // Divider
                        AuthDivider(text: t.authDividerText),

                        // Social Login
                        SocialButton(
                          brand: 'Google',
                          iconAsset: 'assets/images/google.png',
                          onPressed: signInWithGoogle,
                          isLoading: isLoading,
                        ),

                        const SizedBox(height: 32),

                        // Footer: Switch to Sign Up
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ExcludeSemantics(
                                child: Text(
                                  t.authNoAccount,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: isLoading
                                    ? null
                                    : () => context.go('/auth/signup'),
                                child: Text(
                                  t.authSignUpLink,
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

  void _showInlineMessage(
    BuildContext context,
    String message, {
    required bool isError,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    AppMessenger.showToast(
      message: message,
      icon: isError ? Icons.error_outline : Icons.check_circle_outline,
      isError: isError,
      duration: const Duration(seconds: 3),
    );
  }
}
