import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Reusable single-field editor that mirrors the reference UI:
/// a focused text field with helper text and a sticky save button.
class ProfileFieldEditScreen extends HookWidget {
  const ProfileFieldEditScreen({
    super.key,
    required this.title,
    required this.label,
    this.initialValue = '',
    this.helperText,
    this.keyboardType,
    this.maxLines = 1,
    this.hintText,
    this.saveLabel,
  });

  final String title;
  final String label;
  final String initialValue;
  final String? helperText;
  final TextInputType? keyboardType;
  final int maxLines;
  final String? hintText;
  final String? saveLabel;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue);
    useListenable(controller);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final canSave =
        controller.text.trim().isNotEmpty &&
        controller.text.trim() != initialValue.trim();
    final resolvedSaveLabel = saveLabel ?? t.settingsProfileFieldSave;

    void submit() {
      if (!canSave) return;
      Navigator.of(context).pop(controller.text.trim());
    }

    return SettingsPageScaffold(
      title: title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            maxLines: maxLines,
            decoration: InputDecoration(
              labelText: label,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          if (helperText != null) ...[
            const SizedBox(height: 12),
            Text(
              helperText!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
          const Spacer(),
          SafeArea(
            top: false,
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: canSave ? submit : null,
                child: Text(resolvedSaveLabel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
