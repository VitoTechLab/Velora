import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
  final bool isDarkTheme;

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
    this.isDarkTheme = false,
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
          color: isDarkTheme ? const Color(0xFF22D3EE) : colorScheme.tertiary,
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
      isDarkTheme
    ]);

    // Determine if we should use dark theme styling
    final brightness = Theme.of(context).brightness;
    final useDarkStyle = isDarkTheme || brightness == Brightness.dark;
    final isFocused = focusNode?.hasFocus ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (useDarkStyle)
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        if (useDarkStyle) const SizedBox(height: 8),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: useDarkStyle
              ? BoxDecoration(
                  color: Colors.white.withOpacity(isFocused ? 0.12 : 0.08),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: isFocused
                        ? const Color(0xFF818CF8).withOpacity(0.4)
                        : Colors.white.withOpacity(0.12),
                    width: 1.5,
                  ),
                  boxShadow: isFocused
                      ? [
                          BoxShadow(
                            color: const Color(0xFF818CF8).withOpacity(0.2),
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
            style: useDarkStyle
                ? const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  )
                : theme.textTheme.bodyLarge,
            decoration: InputDecoration(
              labelText: useDarkStyle ? null : label,
              hintText: hint,
              hintStyle: useDarkStyle
                  ? TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 15,
                    )
                  : null,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIconWidget,
              errorText: hasInteractedState.value ? errorTextState.value : null,
              errorMaxLines: 2,
              errorStyle: useDarkStyle
                  ? const TextStyle(
                      color: Color(0xFFF472B6),
                      fontSize: 12,
                    )
                  : null,
              filled: !useDarkStyle,
              fillColor:
                  useDarkStyle ? Colors.transparent : colorScheme.surface,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              border: useDarkStyle
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: colorScheme.outline),
                    ),
              enabledBorder: useDarkStyle
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.outline, width: 1),
                    ),
              focusedBorder: useDarkStyle
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.primary, width: 2),
                    ),
              errorBorder: useDarkStyle
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.error, width: 1),
                    ),
              focusedErrorBorder: useDarkStyle
                  ? InputBorder.none
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: colorScheme.error, width: 2),
                    ),
              disabledBorder: useDarkStyle
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
