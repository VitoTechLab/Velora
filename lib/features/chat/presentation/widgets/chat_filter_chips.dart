import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatFilterChips extends StatelessWidget {
  final String selectedFilter;
  final ValueChanged<String> onFilterSelected;

  const ChatFilterChips({
    super.key,
    required this.selectedFilter,
    required this.onFilterSelected,
  });

  static const List<String> _filters = [
    'all',
    'unread',
    'favourites',
    'groups',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _filters.map((filter) {
          final isSelected = filter == selectedFilter;
          final label = _labelFor(filter, t);
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Semantics(
              button: true,
              label: t.chatFilterSemanticsLabel(label),
              hint: t.chatFilterSemanticsHint(label),
              selected: isSelected,
              child: FilterChip(
                label: Text(label),
                selected: isSelected,
                onSelected: (selected) {
                  if (selected) {
                    onFilterSelected(filter);
                  }
                },
                backgroundColor: colorScheme.surface,
                selectedColor: colorScheme.primaryContainer,
                checkmarkColor: colorScheme.onPrimaryContainer,
                labelStyle: textTheme.bodyMedium?.copyWith(
                  color: isSelected
                      ? colorScheme.onPrimaryContainer
                      : colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
                side: BorderSide(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.outlineVariant,
                  width: isSelected ? 1.5 : 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  String _labelFor(String filter, AppLocalizations t) {
    switch (filter) {
      case 'unread':
        return t.chatFilterUnread;
      case 'favourites':
        return t.chatFilterFavourites;
      case 'groups':
        return t.chatFilterGroups;
      case 'all':
      default:
        return t.chatFilterAll;
    }
  }
}
