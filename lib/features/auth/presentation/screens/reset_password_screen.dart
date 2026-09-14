import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_animated_background.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_brand_mark.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_feedback_banner.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_glass_card.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_impact_halo.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_primary_button.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';

class ResetPasswordScreen extends HookWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final feedbackMessage = useState<String?>(null);
    final isFeedbackError = useState(false);
    useListenable(emailController);

    final canSubmit = FieldValidator.email(emailController.text.trim()) == null;

    void setFeedback(String message, {required bool isError}) {
      feedbackMessage.value = message;
      isFeedbackError.value = isError;
    }

    void submitResetPassword() {
      FocusScope.of(context).unfocus();
      feedbackMessage.value = null;

      if (!canSubmit) {
        formKey.currentState?.validate();
        setFeedback(t.authInvalidFormMessage, isError: true);
        return;
      }

      if (formKey.currentState?.validate() != true) {
        return;
      }

      context.read<AuthBloc>().add(
        AuthEvent.resetPassword(email: emailController.text.trim()),
      );
    }

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.message != current.message ||
          previous.errorMessage != current.errorMessage,
      listener: (context, state) {
        final error = state.errorMessage;
        final message = state.message;

        if (error != null && error.isNotEmpty) {
          setFeedback(error, isError: true);
        } else if (message != null && message.isNotEmpty) {
          _showSuccessDialog(context, message);
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          final isLoading = state.isLoading;

          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                tooltip: t.commonGoBack,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: colorScheme.onSurface,
                ),
                onPressed: isLoading ? null : () => context.pop(),
              ),
            ),
            body: Stack(
              children: [
                const Positioned.fill(child: AuthAnimatedBackground()),
                SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 28,
                        ),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight - 56,
                          ),
                          child: Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 460),
                              child: Semantics(
                                container: true,
                                label: t.authResetPasswordFormLabel,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AuthGlassCard(
                                      child: Form(
                                        key: formKey,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            const Center(
                                              child: AuthImpactHalo(
                                                child: AuthBrandMark(
                                                  icon: Icons.mail_lock_rounded,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 26),
                                            Text(
                                              t.authResetPasswordTitle,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme
                                                  .headlineMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                            const SizedBox(height: 12),
                                            Text(
                                              t.authResetPasswordSubtitle,
                                              textAlign: TextAlign.center,
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                    color: colorScheme
                                                        .onSurfaceVariant,
                                                    height: 1.5,
                                                  ),
                                            ),
                                            const SizedBox(height: 24),
                                            AuthFeedbackBanner(
                                              message: feedbackMessage.value,
                                              isError: isFeedbackError.value,
                                            ),
                                            if (feedbackMessage.value != null &&
                                                feedbackMessage
                                                    .value!
                                                    .isNotEmpty)
                                              const SizedBox(height: 18),
                                            AuthTextField(
                                              controller: emailController,
                                              focusNode: emailFocusNode,
                                              label: t.fieldEmailLabel,
                                              hint: t.fieldEmailHint,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: FieldValidator.email,
                                              prefixIcon: Icons.email_outlined,
                                              enabled: !isLoading,
                                              onChanged: (_) {
                                                if (feedbackMessage.value ==
                                                    t.authInvalidFormMessage) {
                                                  feedbackMessage.value = null;
                                                }
                                              },
                                              onEditingComplete:
                                                  submitResetPassword,
                                            ),
                                            const SizedBox(height: 24),
                                            AuthPrimaryButton(
                                              label: t.authSendResetLink,
                                              loadingLabel:
                                                  t.authSendingResetLink,
                                              icon: Icons.arrow_forward_rounded,
                                              onPressed: isLoading
                                                  ? null
                                                  : canSubmit
                                                  ? submitResetPassword
                                                  : null,
                                              isLoading: isLoading,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 22),
                                    TextButton(
                                      onPressed: isLoading
                                          ? null
                                          : () => context.go('/auth/signin'),
                                      child: Text(t.authRememberPasswordAction),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
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
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: const EdgeInsets.all(24),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.mark_email_read_rounded,
                color: colorScheme.tertiary,
                size: 52,
              ),
              const SizedBox(height: 18),
              Text(
                t.authCheckEmailTitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                message,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 22),
              AuthPrimaryButton(
                label: t.authBackToSignIn,
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  context.go('/auth/signin');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
