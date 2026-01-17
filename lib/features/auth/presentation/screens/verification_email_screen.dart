import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/domain/entities/auth_status_entity.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/auth/presentation/bloc/auth_state.dart';
import 'package:velora/features/auth/presentation/widgets/components/primary_button.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Email Verification Screen
///
/// UX Goals:
/// - Guide user through verification
/// - Clear next action
/// - Visible resend option
/// - Escape hatch (sign out)
/// - Auto-navigate when verified
class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  bool _isCheckingVerification = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        // Auto-navigate when user becomes authenticated
        if (state.status == AuthStatusEntity.authenticated) {
          if (mounted) {
            context.go('/');
          }
        }
        
        // Show error if verification check fails
        if (state.errorMessage != null && _isCheckingVerification) {
          AppMessenger.showToast(
            message: state.errorMessage!,
            icon: Icons.error_outline,
            isError: true,
          );
          setState(() {
            _isCheckingVerification = false;
          });
        }

        // Still unverified after check
        if (state.status == AuthStatusEntity.emailUnverified && _isCheckingVerification) {
          AppMessenger.showToast(
            message: 'Email not yet verified. Please check your inbox.',
            icon: Icons.info_outline,
            isError: true,
          );
          setState(() {
            _isCheckingVerification = false;
          });
        }
      },
      child: Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          tooltip: t.commonGoBack,
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () {
            // Sign out before going back to prevent stuck state
            context.read<AuthBloc>().add(const AuthEvent.signOut());
            context.go('/auth/signin');
          },
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
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return PrimaryButton(
                      text: t.authVerifiedCta,
                      icon: Icons.check_circle_outline,
                      onPressed: _isCheckingVerification
                          ? null
                          : () {
                              // Reload current session to check if email is verified
                              setState(() {
                                _isCheckingVerification = true;
                              });
                              
                              // Sign out and sign in again to refresh session
                              // This will trigger authSnapshotChanged event
                              context.read<AuthBloc>().add(const AuthEvent.signOut());
                              
                              // Wait a bit then show message to sign in again
                              Future.delayed(const Duration(milliseconds: 500), () {
                                if (mounted) {
                                  AppMessenger.showToast(
                                    message: 'Please sign in again to check verification status.',
                                    icon: Icons.info_outline,
                                  );
                                  context.go('/auth/signin');
                                }
                              });
                            },
                      isLoading: _isCheckingVerification,
                    );
                  },
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
                        context.read<AuthBloc>().add(const AuthEvent.signOut());
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
