import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_animated_background.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_brand_mark.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_feedback_banner.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_glass_card.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_impact_halo.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_primary_button.dart';
import 'package:velora/l10n/app_localizations.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  bool _isCheckingVerification = false;
  String? _feedbackMessage;
  bool _isFeedbackError = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatusEntity.authenticated && mounted) {
          context.go('/');
          return;
        }

        if (!_isCheckingVerification) {
          final error = state.errorMessage;
          final message = state.message;

          if (error != null && error.isNotEmpty) {
            _setFeedback(error, isError: true);
            context.read<AuthBloc>().clearMessages();
          } else if (message != null && message.isNotEmpty) {
            _setFeedback(t.authVerificationEmailResent, isError: false);
            context.read<AuthBloc>().clearMessages();
          }
          return;
        }

        final error = state.errorMessage;
        if (error != null && error.isNotEmpty) {
          _setFeedback(error, isError: true, stopChecking: true);
          return;
        }

        if (state.status == AuthStatusEntity.emailUnverified) {
          _setFeedback(
            t.authVerificationNotYet,
            isError: true,
            stopChecking: true,
          );
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final theme = Theme.of(context);
          final colorScheme = theme.colorScheme;
          final isLoading = state.isLoading || _isCheckingVerification;

          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                tooltip: t.commonGoBack,
                icon: Icon(Icons.arrow_back_rounded, color: colorScheme.onSurface),
                onPressed: isLoading ? null : () => _signOut(context),
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
                                label: t.authEmailVerificationLabel,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AuthGlassCard(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Center(
                                            child: AuthImpactHalo(
                                              child: AuthBrandMark(
                                                icon: Icons.mark_email_unread_rounded,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 26),
                                          Text(
                                            t.authCheckEmailTitle,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.headlineMedium
                                                ?.copyWith(
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          Text(
                                            t.authVerificationInstructions,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color:
                                                  colorScheme.onSurfaceVariant,
                                              height: 1.5,
                                            ),
                                          ),
                                          const SizedBox(height: 24),
                                          AuthFeedbackBanner(
                                            message: _feedbackMessage,
                                            isError: _isFeedbackError,
                                          ),
                                          if (_feedbackMessage != null &&
                                              _feedbackMessage!.isNotEmpty)
                                            const SizedBox(height: 18),
                                          AuthPrimaryButton(
                                            label: t.authVerifiedCta,
                                            icon: Icons.check_circle_outline_rounded,
                                            onPressed: isLoading
                                                ? null
                                                : () => _requestVerificationCheck(
                                                      context,
                                                      t,
                                                    ),
                                            isLoading: _isCheckingVerification,
                                            loadingLabel:
                                                t.authCheckingVerification,
                                          ),
                                          const SizedBox(height: 12),
                                          TextButton.icon(
                                            onPressed: isLoading
                                                ? null
                                                : () => _resendVerificationEmail(
                                                      context,
                                                    ),
                                            icon: const Icon(
                                              Icons.refresh_rounded,
                                              size: 18,
                                            ),
                                            label: Text(
                                              state.isVerificationEmailLoading
                                                  ? t.authResendingVerification
                                                  : t.authResendVerificationLabel,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 22),
                                    TextButton(
                                      onPressed:
                                          isLoading ? null : () => _signOut(context),
                                      child: Text(t.authWrongEmail),
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

  void _requestVerificationCheck(
    BuildContext context,
    AppLocalizations t,
  ) {
    setState(() {
      _isCheckingVerification = true;
      _feedbackMessage = null;
    });

    context.read<AuthBloc>().add(const AuthEvent.signOut());

    Future.delayed(const Duration(milliseconds: 500), () {
      if (!mounted) {
        return;
      }

      _setFeedback(
        t.authVerificationSignInAgain,
        isError: false,
      );
      context.go('/auth/signin');
    });
  }

  void _resendVerificationEmail(BuildContext context) {
    setState(() {
      _feedbackMessage = null;
    });

    context.read<AuthBloc>().add(const AuthEvent.resendEmailVerification());
  }

  void _signOut(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.signOut());
    context.go('/auth/signin');
  }

  void _setFeedback(
    String message, {
    required bool isError,
    bool stopChecking = false,
  }) {
    if (!mounted) {
      return;
    }

    setState(() {
      _feedbackMessage = message;
      _isFeedbackError = isError;
      if (stopChecking) {
        _isCheckingVerification = false;
      }
    });
  }
}
