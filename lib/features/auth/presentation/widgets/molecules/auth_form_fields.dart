import 'package:flutter/material.dart';
import 'package:velora/core/utils/validator_field.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_password_field.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_text_field.dart';
import 'package:velora/features/auth/presentation/widgets/auth_mode.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthFormFields extends StatelessWidget {
  const AuthFormFields({
    super.key,
    required this.mode,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.enabled,
    required this.onPasswordSubmitted,
    required this.onChanged,
  });

  final AuthMode mode;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final bool enabled;
  final VoidCallback onPasswordSubmitted;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Column(
      children: [
        AuthTextField(
          controller: emailController,
          focusNode: emailFocusNode,
          label: t.fieldEmailLabel,
          hint: t.fieldEmailHint,
          enabled: enabled,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          prefixIcon: Icons.email_outlined,
          validator: FieldValidator.email,
          onChanged: (_) => onChanged(),
          onFieldSubmitted: (_) => passwordFocusNode.requestFocus(),
        ),
        const SizedBox(height: 18),
        AuthPasswordField(
          controller: passwordController,
          focusNode: passwordFocusNode,
          label: t.fieldPasswordLabel,
          validator: FieldValidator.password,
          enabled: enabled,
          showStrength: mode.isSignUp,
          onEditingComplete: onPasswordSubmitted,
          onChanged: (_) => onChanged(),
        ),
      ],
    );
  }
}
