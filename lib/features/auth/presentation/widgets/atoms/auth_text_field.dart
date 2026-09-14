import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/services.dart';

class AuthTextField extends HookWidget {
  const AuthTextField({
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
    this.inputFormatters,
    this.onEditingComplete,
    this.onChanged,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String label;
  final String? hint;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool enabled;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final internalFocusNode = useFocusNode();
    final activeFocusNode = focusNode ?? internalFocusNode;
    final isFocused = useState(activeFocusNode.hasFocus);

    useEffect(() {
      void updateFocus() {
        isFocused.value = activeFocusNode.hasFocus;
      }

      activeFocusNode.addListener(updateFocus);
      return () => activeFocusNode.removeListener(updateFocus);
    }, [activeFocusNode]);

    final focusColor = colorScheme.primary;
    final borderColor = isFocused.value
        ? focusColor
        : colorScheme.outline.withValues(alpha: 0.24);
    final fillColor = isFocused.value
        ? colorScheme.surfaceContainerLowest.withValues(alpha: 0.92)
        : colorScheme.surface.withValues(alpha: 0.72);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.labelLarge?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            controller: controller,
            focusNode: activeFocusNode,
            enabled: enabled,
            validator: validator,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            obscureText: obscureText,
            inputFormatters: inputFormatters,
            onEditingComplete: onEditingComplete,
            onChanged: onChanged,
            onFieldSubmitted: onFieldSubmitted,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              hintText: hint,
              prefixIcon: prefixIcon == null
                  ? null
                  : AnimatedSwitcher(
                      duration: const Duration(milliseconds: 160),
                      child: Icon(
                        prefixIcon,
                        key: ValueKey(isFocused.value),
                        color: colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                    ),
              suffixIcon: suffixIcon,
              filled: true,
              fillColor: fillColor,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              border: _border(colorScheme.outline.withValues(alpha: 0.42)),
              enabledBorder: _border(borderColor),
              focusedBorder: _border(focusColor),
              errorBorder: _border(colorScheme.error),
              focusedErrorBorder: _border(colorScheme.error, width: 1.6),
              disabledBorder: _border(
                colorScheme.outline.withValues(alpha: 0.18),
              ),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _border(Color color, {double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
