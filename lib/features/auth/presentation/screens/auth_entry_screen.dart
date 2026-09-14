import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_animated_background.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';
import 'package:velora/features/auth/presentation/widgets/molecules/auth_footer_switch.dart';
import 'package:velora/features/auth/presentation/widgets/organisms/auth_form_panel.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class AuthEntryScreen extends HookWidget {
  const AuthEntryScreen({
    super.key,
    required this.mode,
  });

  final AuthMode mode;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final emailFocusNode = useFocusNode();
    final passwordFocusNode = useFocusNode();
    final agreedToTerms = useState(false);
    final rememberMe = useState(true);
    final feedbackMessage = useState<String?>(null);
    final isFeedbackError = useState(false);
    useListenable(emailController);
    useListenable(passwordController);

    final isEmailValid =
        FieldValidator.email(emailController.text.trim()) == null;
    final isPasswordValid =
        FieldValidator.password(passwordController.text) == null;
    final canSubmit = isEmailValid &&
        isPasswordValid &&
        (mode.isSignIn || agreedToTerms.value);

    void setFeedback(String message, {required bool isError}) {
      feedbackMessage.value = message;
      isFeedbackError.value = isError;
    }

    void submit() {
      FocusScope.of(context).unfocus();
      feedbackMessage.value = null;

      if (!canSubmit) {
        formKey.currentState?.validate();
        setFeedback(t.authInvalidFormMessage, isError: true);
        return;
      }

      if (mode.isSignUp && !agreedToTerms.value) {
        setFeedback(t.authAgreeTermsError, isError: true);
        return;
      }

      if (formKey.currentState?.validate() != true) {
        return;
      }

      final bloc = context.read<AuthBloc>();
      final email = emailController.text.trim();
      final password = passwordController.text;

      if (mode.isSignIn) {
        bloc.add(AuthEvent.signIn(email: email, password: password));
      } else {
        bloc.add(AuthEvent.signUp(email: email, password: password));
      }
    }

    void handleGoogleAuth() {
      if (mode.isSignUp) {
        setFeedback(t.authGoogleUnavailable, isError: true);
        return;
      }

      context.read<AuthBloc>().add(const AuthEvent.signInWithGoogle());
    }

    void switchMode() {
      final route = mode.isSignIn ? AppRouteName.signUp : AppRouteName.signIn;
      context.goNamed(route);
    }

    void openResetPassword() {
      context.pushNamed(AppRouteName.resetPassword);
    }

    void handleFormChanged() {
      if (feedbackMessage.value == t.authInvalidFormMessage) {
        feedbackMessage.value = null;
      }
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
          setFeedback(message, isError: false);
        }

        context.read<AuthBloc>().clearMessages();
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final isLoading = state.isLoading;

          return Scaffold(
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
                                label: mode.isSignUp
                                    ? t.authSignUpFormLabel
                                    : t.authWelcomeBackTitle,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _AuthEntranceMotion(
                                      child: AuthFormPanel(
                                        mode: mode,
                                        formKey: formKey,
                                        emailController: emailController,
                                        passwordController: passwordController,
                                        emailFocusNode: emailFocusNode,
                                        passwordFocusNode: passwordFocusNode,
                                        isLoading: isLoading,
                                        isEmailLoading: state.isEmailLoading,
                                        isGoogleLoading: state.isGoogleLoading,
                                        agreedToTerms: agreedToTerms.value,
                                        rememberMe: rememberMe.value,
                                        canSubmit: canSubmit,
                                        feedbackMessage:
                                            feedbackMessage.value,
                                        isFeedbackError:
                                            isFeedbackError.value,
                                        onTermsChanged: (value) {
                                          agreedToTerms.value = value;
                                          if (value &&
                                              feedbackMessage.value ==
                                                  t.authAgreeTermsError) {
                                            feedbackMessage.value = null;
                                          }
                                        },
                                        onRememberMeChanged: (value) {
                                          rememberMe.value = value;
                                        },
                                        onFormChanged: handleFormChanged,
                                        onSubmit: submit,
                                        onGooglePressed: handleGoogleAuth,
                                        onForgotPassword: openResetPassword,
                                      ),
                                    ),
                                    const SizedBox(height: 22),
                                    AuthFooterSwitch(
                                      mode: mode,
                                      enabled: !isLoading,
                                      onPressed: switchMode,
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
}

class _AuthEntranceMotion extends StatelessWidget {
  const _AuthEntranceMotion({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: const Duration(milliseconds: 520),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 18 * (1 - value)),
            child: Transform.scale(
              scale: 0.98 + (0.02 * value),
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
