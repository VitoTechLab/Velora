import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

class FaqScreen extends HookWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final faqItems = [
      (t.settingsHelpFaqQuestion1, t.settingsHelpFaqAnswer1),
      (t.settingsHelpFaqQuestion2, t.settingsHelpFaqAnswer2),
      (t.settingsHelpFaqQuestion3, t.settingsHelpFaqAnswer3),
      (t.settingsHelpFaqQuestion4, t.settingsHelpFaqAnswer4),
    ];
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final expandedIndex = useState<int?>(null);

    return SettingsPageScaffold(
      title: t.settingsHelpFaqTitle,
      subtitle: t.settingsHelpFaqSubtitle,
      padding: EdgeInsets.zero,
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 24),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const SizedBox(height: 12);
          }
          final item = faqItems[index - 1];
          final isExpanded = expandedIndex.value == index;
          return EdgeToEdgeSection(
            child: Theme(
              data: theme.copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                childrenPadding: const EdgeInsets.only(top: 8),
                onExpansionChanged: (value) =>
                    expandedIndex.value = value ? index : null,
                initiallyExpanded: isExpanded,
                trailing: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: colorScheme.onSurfaceVariant,
                ),
                title: Text(
                  item.$1,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                children: [
                  Text(
                    item.$2,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) =>
            index == 0 ? const SizedBox.shrink() : const SizedBox(height: 2),
        itemCount: faqItems.length + 1,
      ),
    );
  }
}
