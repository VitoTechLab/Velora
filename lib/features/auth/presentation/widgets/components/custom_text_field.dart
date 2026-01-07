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

    Widget? buildSuffixIcon() {
      if (suffixIcon != null) {
        return suffixIcon;
      }
      if (hasInteractedState.value && isValidState.value && showSuccessIcon) {
        return Icon(
          Icons.check_circle,
          color: Theme.of(context).colorScheme.tertiary,
          size: 20,
        );
      }
      return null;
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
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
            if (!hasInteractedState.value) {
              hasInteractedState.value = true;
            }
            onChanged?.call(value);
          },
          onEditingComplete: onEditingComplete,
          style: theme.textTheme.bodyLarge,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            prefixIcon: prefixIcon,
            suffixIcon: buildSuffixIcon(),
            errorText: hasInteractedState.value ? errorTextState.value : null,
            errorMaxLines: 2,
            filled: true,
            fillColor: colorScheme.surface,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.outline),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.outline, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.primary, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.error, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.error, width: 2),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: colorScheme.outline.withValues(alpha: 0.5),
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
