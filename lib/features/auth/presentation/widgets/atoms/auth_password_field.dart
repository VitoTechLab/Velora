import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/auth/presentation/widgets/atoms/auth_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';

class AuthPasswordField extends HookWidget {
  const AuthPasswordField({
    super.key,
    required this.controller,
    required this.label,
    this.focusNode,
    this.validator,
    this.showStrength = false,
    this.enabled = true,
    this.onEditingComplete,
    this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final String? Function(String?)? validator;
  final bool showStrength;
  final bool enabled;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;
    final isObscured = useState(true);
    final password = useListenable(controller).text;
    final strength = _PasswordStrength.from(password);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthTextField(
          controller: controller,
          focusNode: focusNode,
          label: label,
          validator: validator,
          prefixIcon: Icons.lock_outline_rounded,
          enabled: enabled,
          obscureText: isObscured.value,
          textInputAction: TextInputAction.done,
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
          suffixIcon: IconButton(
            tooltip: isObscured.value ? t.authPasswordShow : t.authPasswordHide,
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 160),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: Icon(
                isObscured.value
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                key: ValueKey(isObscured.value),
                size: 20,
              ),
            ),
            onPressed:
                enabled ? () => isObscured.value = !isObscured.value : null,
          ),
        ),
        if (showStrength && password.isNotEmpty) ...[
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(99),
            child: LinearProgressIndicator(
              value: strength.value,
              minHeight: 6,
              backgroundColor: colorScheme.outline.withValues(alpha: 0.18),
              valueColor: AlwaysStoppedAnimation(strength.color(colorScheme)),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            strength.label(t),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: strength.color(colorScheme),
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ],
    );
  }
}

enum _PasswordStrength {
  empty(0),
  weak(0.28),
  fair(0.48),
  medium(0.72),
  strong(1);

  const _PasswordStrength(this.value);

  final double value;

  static _PasswordStrength from(String password) {
    if (password.isEmpty) return empty;
    final hasUpper = RegExp(r'[A-Z]').hasMatch(password);
    final hasLower = RegExp(r'[a-z]').hasMatch(password);
    final hasNumber = RegExp(r'\d').hasMatch(password);
    final hasSymbol = RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?/~\\-]').hasMatch(password);

    if (password.length < 8) return weak;
    if (hasUpper && hasLower && hasNumber && hasSymbol) return strong;
    if ((hasUpper || hasLower) && hasNumber) return medium;
    return fair;
  }

  Color color(ColorScheme colorScheme) {
    return switch (this) {
      empty => colorScheme.outline,
      weak => colorScheme.error,
      fair => colorScheme.secondary,
      medium => colorScheme.primary,
      strong => colorScheme.tertiary,
    };
  }

  String label(AppLocalizations t) {
    return switch (this) {
      empty => '',
      weak => t.authPasswordStrengthWeak,
      fair => t.authPasswordStrengthFair,
      medium => t.authPasswordStrengthMedium,
      strong => t.authPasswordStrengthStrong,
    };
  }
}
