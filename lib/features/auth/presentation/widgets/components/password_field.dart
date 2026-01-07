import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/auth/presentation/widgets/components/custom_text_field.dart';
import 'package:velora/l10n/app_localizations.dart';

class PasswordField extends HookWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final String? label;
  final Widget? prefixIcon;
  final bool showStrengthIndicator;
  final bool showPasswordHints;
  final VoidCallback? onEditingComplete;

  const PasswordField({
    super.key,
    required this.controller,
    this.focusNode,
    this.validator,
    this.label,
    this.prefixIcon,
    this.showStrengthIndicator = false,
    this.showPasswordHints = false,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final effectiveLabel = label ?? t.fieldPasswordLabel;

    final isObscured = useState(true);
    final strengthValue = useState(0.0);
    final strengthColor = useState<Color?>(null);
    final strengthText = useState('');

    void updatePasswordStrength() {
      final password = controller.text;
      final hasUpperCase = RegExp(r'[A-Z]').hasMatch(password);
      final hasLowerCase = RegExp(r'[a-z]').hasMatch(password);
      final hasNumber = RegExp(r"\d").hasMatch(password);
      final hasSymbol = RegExp(
        r'[!@#\$%^&*()_+{}\[\]:;<>,.?/~\\-]',
      ).hasMatch(password);

      if (password.isEmpty) {
        strengthValue.value = 0.0;
        strengthText.value = '';
        strengthColor.value = colorScheme.outline;
      } else if (password.length < 8) {
        strengthValue.value = 0.25;
        strengthText.value = t.authPasswordStrengthWeak;
        strengthColor.value = colorScheme.error;
      } else if (hasUpperCase && hasLowerCase && hasNumber && hasSymbol) {
        strengthValue.value = 1.0;
        strengthText.value = t.authPasswordStrengthStrong;
        strengthColor.value = colorScheme.tertiary;
      } else if ((hasUpperCase || hasLowerCase) && hasNumber) {
        strengthValue.value = 0.65;
        strengthText.value = t.authPasswordStrengthMedium;
        strengthColor.value = colorScheme.secondary;
      } else {
        strengthValue.value = 0.4;
        strengthText.value = t.authPasswordStrengthFair;
        strengthColor.value = colorScheme.error;
      }
    }

    useEffect(() {
      if (!showStrengthIndicator) return null;
      controller.addListener(updatePasswordStrength);
      updatePasswordStrength();
      return () {
        controller.removeListener(updatePasswordStrength);
      };
    }, [controller, showStrengthIndicator, colorScheme, t]);

    void toggleVisibility() {
      isObscured.value = !isObscured.value;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: controller,
          focusNode: focusNode,
          label: effectiveLabel,
          validator: validator,
          prefixIcon: prefixIcon ?? const Icon(Icons.lock_outline),
          obscureText: isObscured.value,
          textInputAction: TextInputAction.done,
          onEditingComplete: onEditingComplete,
          showSuccessIcon: false,
          suffixIcon: IconButton(
            icon: Icon(
              isObscured.value
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              size: 20,
            ),
            onPressed: toggleVisibility,
            tooltip: isObscured.value ? t.authPasswordShow : t.authPasswordHide,
          ),
        ),

        // Password Strength Indicator
        if (showStrengthIndicator && controller.text.isNotEmpty) ...[
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: strengthValue.value,
                    minHeight: 4,
                    backgroundColor: colorScheme.outline.withValues(alpha: 0.2),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      strengthColor.value ?? colorScheme.outline,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                strengthText.value,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: strengthColor.value,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],

        // Password Hints
        if (showPasswordHints && focusNode?.hasFocus == true) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: colorScheme.outline.withValues(alpha: 0.3),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.authPasswordRequirementsTitle,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                _buildPasswordRequirement(
                  context,
                  t.authPasswordRequirementLength,
                  controller.text.length >= 8,
                ),
                _buildPasswordRequirement(
                  context,
                  t.authPasswordRequirementCase,
                  RegExp(r'[A-Z]').hasMatch(controller.text) &&
                      RegExp(r'[a-z]').hasMatch(controller.text),
                ),
                _buildPasswordRequirement(
                  context,
                  t.authPasswordRequirementNumber,
                  RegExp(r"\d").hasMatch(controller.text),
                ),
                _buildPasswordRequirement(
                  context,
                  t.authPasswordRequirementSpecial,
                  RegExp(
                    r'[!@#\$%^&*()_+{}\[\]:;<>,.?/~\\-]',
                  ).hasMatch(controller.text),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildPasswordRequirement(
    BuildContext context,
    String text,
    bool isMet,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Icon(
            isMet ? Icons.check_circle : Icons.circle_outlined,
            size: 16,
            color: isMet ? colorScheme.tertiary : colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isMet
                    ? colorScheme.tertiary
                    : colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
