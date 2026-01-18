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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: _filters.asMap().entries.map((entry) {
          final index = entry.key;
          final filter = entry.value;
          final isSelected = filter == selectedFilter;
          final label = _labelFor(filter, t);
          
          return TweenAnimationBuilder<double>(
            duration: Duration(milliseconds: 400 + (index * 50)),
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeOutBack,
            builder: (context, value, child) {
              return Transform.scale(
                scale: 0.8 + (0.2 * value),
                child: Opacity(opacity: value, child: child),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Semantics(
                button: true,
                label: t.chatFilterSemanticsLabel(label),
                hint: t.chatFilterSemanticsHint(label),
                selected: isSelected,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => onFilterSelected(filter),
                    borderRadius: BorderRadius.circular(24),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCubic,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        gradient: isSelected
                            ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  colorScheme.primaryContainer,
                                  colorScheme.primaryContainer.withValues(alpha: 0.8),
                                ],
                              )
                            : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
                                  colorScheme.surfaceContainerHighest.withValues(alpha: 0.4),
                                ],
                              ),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: isSelected
                              ? colorScheme.primary.withValues(alpha: 0.3)
                              : colorScheme.outline.withValues(alpha: 0.2),
                          width: 1.5,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: colorScheme.primary.withValues(alpha: 0.2),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                  spreadRadius: 0,
                                ),
                              ]
                            : [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 4,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (isSelected)
                            Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: Icon(
                                Icons.check_circle,
                                size: 16,
                                color: colorScheme.primary,
                              ),
                            ),
                          Text(
                            label,
                            style: textTheme.bodyMedium?.copyWith(
                              color: isSelected
                                  ? colorScheme.onPrimaryContainer
                                  : colorScheme.onSurface,
                              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
