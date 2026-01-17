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
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
            colorScheme.surfaceContainer.withValues(alpha: 0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outline.withValues(alpha: 0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        maxLines: null,
        minLines: 3,
        maxLength: maxLength,
        style: theme.textTheme.bodyLarge?.copyWith(
          fontSize: 16,
          height: 1.6,
          color: colorScheme.onSurface,
          letterSpacing: 0.2,
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
            color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
            fontSize: 16,
            letterSpacing: 0.2,
          ),
          contentPadding: EdgeInsets.zero,
          counterText: '', // Hide counter
        ),
      ),
    );
  }
}
