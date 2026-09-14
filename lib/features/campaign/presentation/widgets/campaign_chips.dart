import 'package:flutter/material.dart';
import '../../domain/entities/campaign_category_entity.dart';
import '../../domain/entities/sort_option.dart';

/// Unified campaign filter type:
/// - null = All
/// - 'mine' = My Campaigns
/// - categoryId = Filter by category
typedef CampaignFilter = String?;

class CampaignChips extends StatelessWidget {
  /// Currently selected filter (null = All, 'mine' = My Campaigns, otherwise categoryId)
  final CampaignFilter selectedFilter;

  /// List of categories fetched from backend
  final List<CampaignCategoryEntity> categories;

  /// Whether the categories are still loading
  final bool isLoadingCategories;

  /// Current sort option
  final SortOption selectedSort;

  /// Callback when a filter chip is selected
  final ValueChanged<CampaignFilter> onFilterSelected;

  /// Callback when sort option changes
  final ValueChanged<SortOption> onSortSelected;

  const CampaignChips({
    super.key,
    required this.selectedFilter,
    required this.categories,
    required this.isLoadingCategories,
    required this.selectedSort,
    required this.onFilterSelected,
    required this.onSortSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          // "All" chip
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: _ChipButton(
              label: 'All',
              isSelected: selectedFilter == null,
              onTap: () => onFilterSelected(null),
            ),
          ),
          // "My Campaigns" chip
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: _ChipButton(
              label: 'My Campaigns',
              isSelected: selectedFilter == 'mine',
              onTap: () => onFilterSelected('mine'),
              icon: Icons.person_outline,
            ),
          ),
          // Dynamic category chips from backend
          if (isLoadingCategories)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            )
          else
            ...categories.map(
              (cat) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _ChipButton(
                  label: cat.name,
                  isSelected: selectedFilter == cat.id,
                  onTap: () => onFilterSelected(cat.id),
                ),
              ),
            ),
          const SizedBox(width: 8),
          // Sort button
          _SortButton(
            selectedSort: selectedSort,
            onSortSelected: onSortSelected,
          ),
        ],
      ),
    );
  }
}

class _ChipButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final IconData? icon;

  const _ChipButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      button: true,
      selected: isSelected,
      label: '$label filter',
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected
                ? colorScheme.primaryContainer
                : Colors.transparent,
            border: Border.all(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.outline.withValues(alpha: 0.3),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 16,
                  color: isSelected
                      ? colorScheme.onPrimaryContainer
                      : colorScheme.onSurface,
                ),
                const SizedBox(width: 4),
              ],
              Text(
                label,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: isSelected
                      ? colorScheme.onPrimaryContainer
                      : colorScheme.onSurface,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SortButton extends StatelessWidget {
  final SortOption selectedSort;
  final ValueChanged<SortOption> onSortSelected;

  const _SortButton({required this.selectedSort, required this.onSortSelected});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: () => _showSortModal(context),
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: colorScheme.outline.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.sort, size: 16, color: colorScheme.onSurface),
            const SizedBox(width: 6),
            Text(
              selectedSort.label,
              style: theme.textTheme.labelLarge?.copyWith(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSortModal(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    showModalBottomSheet(
      context: context,
      backgroundColor: colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Sort by',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ...SortOption.values.map(
                (option) => ListTile(
                  leading: Radio<SortOption>(
                    value: option,
                    groupValue: selectedSort,
                    onChanged: (value) {
                      if (value != null) {
                        onSortSelected(value);
                        Navigator.pop(context);
                      }
                    },
                  ),
                  title: Text(option.label),
                  onTap: () {
                    onSortSelected(option);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
