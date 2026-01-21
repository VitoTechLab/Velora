import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/themes/color_material.dart';

class CustomTextField extends HookWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final bool showSuccessIcon;
  final bool validateOnChange;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.focusNode,
    this.hint,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.onEditingComplete,
    this.showSuccessIcon = true,
    this.validateOnChange = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final errorTextState = useState<String?>(null);
    final isValidState = useState(false);
    final hasInteractedState = useState(false);

    void validate() {
      if (validator == null) {
        errorTextState.value = null;
        isValidState.value = false;
        return;
      }
      final error = validator!(controller.text);
      errorTextState.value = error;
      isValidState.value = error == null && controller.text.isNotEmpty;
    }

    void onTextChanged() {
      if (validateOnChange && hasInteractedState.value) {
        validate();
      }
    }

    void onFocusChanged() {
      if (focusNode?.hasFocus == false) {
        hasInteractedState.value = true;
        validate();
      }
    }

    useEffect(() {
      controller.addListener(onTextChanged);
      focusNode?.addListener(onFocusChanged);
      return () {
        controller.removeListener(onTextChanged);
        focusNode?.removeListener(onFocusChanged);
      };
    }, [controller, focusNode, validateOnChange, validator]);

    final suffixIconWidget = useMemoized(() {
      if (suffixIcon != null) return suffixIcon;
      if (hasInteractedState.value && isValidState.value && showSuccessIcon) {
        return Icon(
          Icons.check_circle,
          color: colorScheme.brightness == Brightness.dark
              ? MaterialColorsCustom.neonTeal
              : colorScheme.tertiary,
          size: 20,
        );
      }
      return null;
    }, [
      suffixIcon,
      hasInteractedState.value,
      isValidState.value,
      showSuccessIcon,
      colorScheme,
    ]);

    final isDark = colorScheme.brightness == Brightness.dark;
    final isFocused = focusNode?.hasFocus ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isDark)
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface.withValues(alpha: 0.8),
            ),
          ),
        if (isDark) const SizedBox(height: 8),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: isDark
              ? BoxDecoration(
                  color: colorScheme.onSurface.withValues(
                    alpha: isFocused ? 0.12 : 0.08,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: isFocused
                        ? MaterialColorsCustom.neonIndigo.withValues(alpha: 0.4)
                        : colorScheme.onSurface.withValues(alpha: 0.12),
                    width: 1.5,
                  ),
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: MaterialColorsCustom.neonIndigo
                                .withValues(alpha: 0.2),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ]
                      : null,
                )
              : null,
          child: TextFormField(
            controller: controller,
            focusNode: focusNode,
            enabled: enabled,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            obscureText: obscureText,
            maxLines: maxLines,
            maxLength: maxLength,
            inputFormatters: inputFormatters,
            onChanged: (value) {
              onChanged?.call(value);
            },
            onEditingComplete: onEditingComplete,
            style: isDark
                ? TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onSurface,
                  )
                : theme.textTheme.bodyLarge,
            decoration: InputDecoration(
              labelText: isDark ? null : label,
              hintText: hint,
              hintStyle: isDark
                  ? TextStyle(
                      color: colorScheme.onSurface.withValues(alpha: 0.4),
                      fontSize: 15,
                    )
                  : null,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              floatingLabelStyle: WidgetStateTextStyle.resolveWith(
                (Set<WidgetState> states) {
                  final color = states.contains(WidgetState.focused)
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant;
                  return TextStyle(
                    color: color,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    backgroundColor: colorScheme.surface,
                    // Add padding to label background
                  );
                },
              ),
              labelStyle: TextStyle(
                color: colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIconWidget,
              errorText: hasInteractedState.value ? errorTextState.value : null,
              errorMaxLines: 2,
              errorStyle: isDark
                  ? TextStyle(
                      color: MaterialColorsCustom.neonPink,
                      fontSize: 12,
                    )
                  : null,
              filled: true,
              fillColor: isDark ? Colors.transparent : colorScheme.surface,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              border: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: colorScheme.outline),
                    ),
              enabledBorder: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.outline, width: 1),
                    ),
              focusedBorder: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.primary, width: 2),
                    ),
              errorBorder: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.error, width: 1),
                    ),
              focusedErrorBorder: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.error, width: 2),
                    ),
              disabledBorder: isDark
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: colorScheme.outline.withValues(alpha: 0.5),
                        width: 1,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
