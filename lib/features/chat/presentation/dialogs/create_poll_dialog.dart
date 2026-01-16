import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class CreatePollDialog extends StatefulWidget {
  const CreatePollDialog({super.key});

  static Future<Map<String, dynamic>?> show(BuildContext context) {
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const CreatePollDialog(),
    );
  }

  @override
  State<CreatePollDialog> createState() => _CreatePollDialogState();
}

class _CreatePollDialogState extends State<CreatePollDialog> {
  final _questionController = TextEditingController();
  final List<TextEditingController> _optionControllers = [
    TextEditingController(),
    TextEditingController(),
  ];
  bool _isMultipleChoice = false;

  @override
  void dispose() {
    _questionController.dispose();
    for (var controller in _optionControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addOption() {
    if (_optionControllers.length < 10) {
      setState(() {
        _optionControllers.add(TextEditingController());
      });
    }
  }

  void _removeOption(int index) {
    if (_optionControllers.length > 2) {
      setState(() {
        _optionControllers[index].dispose();
        _optionControllers.removeAt(index);
      });
    }
  }

  void _createPoll() {
    final question = _questionController.text.trim();
    final options = _optionControllers
        .map((c) => c.text.trim())
        .where((text) => text.isNotEmpty)
        .toList();
    final t = AppLocalizations.of(context)!;

    if (question.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.chatPollDialogQuestionError)));
      return;
    }

    if (options.length < 2) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.chatPollDialogOptionsError)));
      return;
    }

    Navigator.pop(context, {
      'question': question,
      'options': options,
      'multiple_choice': _isMultipleChoice,
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Dialog(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.poll_outlined,
                    color: colorScheme.onPrimaryContainer,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    t.chatPollDialogTitle,
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: colorScheme.onPrimaryContainer,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            // Content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Question field
                    TextField(
                      controller: _questionController,
                      decoration: InputDecoration(
                        labelText: t.chatPollDialogQuestionLabel,
                        hintText: t.chatPollDialogQuestionHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(Icons.help_outline),
                      ),
                      maxLines: 2,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                    const SizedBox(height: 20),
                    // Options
                    Text(
                      t.chatPollDialogOptionsLabel,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ..._optionControllers.asMap().entries.map((entry) {
                      final index = entry.key;
                      final controller = entry.value;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            labelText: t.chatPollDialogOptionLabel(index + 1),
                            hintText: t.chatPollDialogOptionHint,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: CircleAvatar(
                              radius: 12,
                              backgroundColor: colorScheme.primaryContainer,
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: colorScheme.onPrimaryContainer,
                                ),
                              ),
                            ),
                            suffixIcon: _optionControllers.length > 2
                                ? IconButton(
                                    icon: Icon(
                                      Icons.close,
                                      color: colorScheme.error,
                                    ),
                                    onPressed: () => _removeOption(index),
                                  )
                                : null,
                          ),
                          textCapitalization: TextCapitalization.sentences,
                        ),
                      );
                    }),
                    // Add option button
                    if (_optionControllers.length < 10)
                      OutlinedButton.icon(
                        onPressed: _addOption,
                        icon: const Icon(Icons.add),
                        label: Text(t.chatPollDialogAddOption),
                      ),
                    const SizedBox(height: 20),
                    // Multiple choice toggle
                    SwitchListTile(
                      value: _isMultipleChoice,
                      onChanged: (value) {
                        setState(() {
                          _isMultipleChoice = value;
                        });
                      },
                      title: Text(t.chatPollDialogMultipleChoiceLabel),
                      subtitle: Text(t.chatPollDialogMultipleChoiceHint),
                      secondary: const Icon(Icons.checklist_rtl),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
            ),
            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(28),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(t.commonCancel),
                  ),
                  const SizedBox(width: 12),
                  FilledButton.icon(
                    onPressed: _createPoll,
                    icon: const Icon(Icons.send),
                    label: Text(t.chatPollDialogSend),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
