import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Caption input field with no borders or visual effects
class CaptionInputSection extends StatelessWidget {
  const CaptionInputSection({
    super.key,
    required this.controller,
    required this.focusNode,
    this.maxLength = 2000,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: null,
        minLines: 3,
        maxLength: maxLength,
        style: theme.textTheme.bodyLarge?.copyWith(
          fontSize: 16,
          height: 1.5,
          color: colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintText: t.postCaptionHint,
          hintStyle: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.4),
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.zero,
          counterText: '', // Hide counter
        ),
      ),
    );
  }
}
