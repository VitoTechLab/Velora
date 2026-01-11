import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Reset Password Screen
///
/// UX Goals:
/// - Clear instructions
/// - Single field focus
/// - Success confirmation before navigation
/// - Always-visible back button
class ResetPasswordScreen extends HookWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final emailController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final submitResetPassword = useCallback(() {
      if (formKey.currentState?.validate() ?? false) {
        context.read<AuthBloc>().add(
          AuthEvent.resetPassword(email: emailController.text.trim()),
        );
      }
    }, [emailController, formKey]);

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          _showInlineMessage(context, state.errorMessage!, isError: true);
        } else if (state.message != null && state.message!.isNotEmpty) {
          _showSuccessDialog(context, state.message!);
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: Scaffold(
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
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              final isLoading = state.isLoading;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Semantics(
                  container: true,
                  label: t.authResetPasswordFormLabel,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 40),

                        // Icon
                        Semantics(
                          label: t.authEmailIllustrationLabel,
                          image: true,
                          child: ExcludeSemantics(
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: colorScheme.primaryContainer.withValues(
                                  alpha: 0.3,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                color: colorScheme.primary,
                                size: 40,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // Headline
                        Semantics(
                          header: true,
                          child: Text(
                            t.authResetPasswordTitle,
                            style: theme.textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Instructions
                        Semantics(
                          label: t.authResetPasswordSubtitle,
                          child: ExcludeSemantics(
                            child: Text(
                              t.authResetPasswordSubtitle,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                                height: 1.6,
                              ),
                              textAlign: TextAlign.center,
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
                          textInputAction: TextInputAction.done,
                          validator: FieldValidator.email,
                          prefixIcon: Icon(Icons.email_outlined, size: 20),
                          enabled: !isLoading,
                          onEditingComplete: submitResetPassword,
                        ),

                        const SizedBox(height: 32),

                        // Primary CTA
                        PrimaryButton(
                          text: t.authSendResetLink,
                          onPressed: submitResetPassword,
                          isLoading: isLoading,
                        ),

                        const SizedBox(height: 24),

                        // Footer: Back to Sign In
                        Semantics(
                          button: true,
                          label: t.authRememberPasswordLabel,
                          child: ExcludeSemantics(
                            child: TextButton(
                              onPressed: isLoading
                                  ? null
                                  : () => context.go('/auth/signin'),
                              child: Text(
                                t.authRememberPasswordAction,
                                style: theme.textTheme.bodyMedium?.copyWith(
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
              );
            },
          ),
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, String message) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => Semantics(
        label: t.authResetEmailSentLabel,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.all(24),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: colorScheme.tertiary.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  color: colorScheme.tertiary,
                  size: 36,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                t.authCheckEmailTitle,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                message,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                    context.go('/auth/signin');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(t.authBackToSignIn),
                ),
              ),
            ],
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
      icon: isError ? Icons.error_outline : Icons.check_circle_outline,
      isError: isError,
      duration: const Duration(seconds: 3),
    );
  }
}
