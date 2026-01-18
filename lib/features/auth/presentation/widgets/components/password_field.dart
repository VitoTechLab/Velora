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

    final regexPatterns = useMemoized(
        () => (
              upperCase: RegExp(r'[A-Z]'),
              lowerCase: RegExp(r'[a-z]'),
              number: RegExp(r"\d"),
              symbol: RegExp(r'[!@#\$%^&*()_+{}\[\]:;<>,.?/~\\-]'),
            ),
        []);

    void updatePasswordStrength() {
      final password = controller.text;
      final hasUpperCase = regexPatterns.upperCase.hasMatch(password);
      final hasLowerCase = regexPatterns.lowerCase.hasMatch(password);
      final hasNumber = regexPatterns.number.hasMatch(password);
      final hasSymbol = regexPatterns.symbol.hasMatch(password);

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
          prefixIcon: prefixIcon ?? const Icon(Icons.lock_outline, size: 20),
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
              color: colorScheme.brightness == Brightness.dark
                  ? colorScheme.onSurface.withValues(alpha: 0.7)
                  : null,
            ),
            onPressed: toggleVisibility,
            tooltip: isObscured.value ? t.authPasswordShow : t.authPasswordHide,
          ),
        ),

        // Password Strength Indicator
        if (showStrengthIndicator && controller.text.isNotEmpty) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  (strengthColor.value ?? colorScheme.primary)
                      .withValues(alpha: 0.08),
                  (strengthColor.value ?? colorScheme.primary)
                      .withValues(alpha: 0.05),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: (strengthColor.value ?? colorScheme.primary)
                    .withValues(alpha: 0.2),
                width: 1.5,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.authPasswordStrengthLabel,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: strengthValue.value,
                          minHeight: 6,
                          backgroundColor:
                              colorScheme.outline.withValues(alpha: 0.2),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            strengthColor.value ?? colorScheme.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        strengthColor.value ?? colorScheme.primary,
                        (strengthColor.value ?? colorScheme.primary)
                            .withValues(alpha: 0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: (strengthColor.value ?? colorScheme.primary)
                            .withValues(alpha: 0.3),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    strengthText.value,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

        // Password Hints
        if (showPasswordHints && focusNode?.hasFocus == true) ...[
          const SizedBox(height: 12),
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Transform.scale(
                scale: 0.95 + (0.05 * value),
                child: Opacity(
                  opacity: value,
                  child: child,
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.primaryContainer.withValues(alpha: 0.4),
                    colorScheme.secondaryContainer.withValues(alpha: 0.3),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: colorScheme.outline.withValues(alpha: 0.2),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary,
                              colorScheme.secondary,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.primary.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.shield_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          t.authPasswordRequirementsTitle,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildPasswordRequirement(
                    context,
                    t.authPasswordRequirementLength,
                    controller.text.length >= 8,
                  ),
                  _buildPasswordRequirement(
                    context,
                    t.authPasswordRequirementCase,
                    regexPatterns.upperCase.hasMatch(controller.text) &&
                        regexPatterns.lowerCase.hasMatch(controller.text),
                  ),
                  _buildPasswordRequirement(
                    context,
                    t.authPasswordRequirementNumber,
                    regexPatterns.number.hasMatch(controller.text),
                  ),
                  _buildPasswordRequirement(
                    context,
                    t.authPasswordRequirementSpecial,
                    regexPatterns.symbol.hasMatch(controller.text),
                  ),
                ],
              ),
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
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              gradient: isMet
                  ? LinearGradient(
                      colors: [
                        colorScheme.tertiary,
                        colorScheme.tertiary.withValues(alpha: 0.8),
                      ],
                    )
                  : null,
              color: isMet ? null : colorScheme.surfaceContainerHighest,
              shape: BoxShape.circle,
              border: isMet
                  ? null
                  : Border.all(
                      color: colorScheme.outline.withValues(alpha: 0.5),
                      width: 2,
                    ),
              boxShadow: isMet
                  ? [
                      BoxShadow(
                        color: colorScheme.tertiary.withValues(alpha: 0.4),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: Icon(
              isMet ? Icons.check_rounded : Icons.circle_outlined,
              size: 14,
              color: isMet ? Colors.white : Colors.transparent,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: isMet
                    ? colorScheme.onSurface
                    : colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
                fontWeight: isMet ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
