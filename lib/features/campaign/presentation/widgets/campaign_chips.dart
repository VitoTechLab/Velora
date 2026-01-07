import 'package:flutter/material.dart';
import '../../domain/entities/campaign_type.dart';
import '../../domain/entities/sort_option.dart';

class CampaignChips extends StatelessWidget {
  final CampaignType selectedType;
  final SortOption selectedSort;
  final ValueChanged<CampaignType> onTypeSelected;
  final ValueChanged<SortOption> onSortSelected;

  const CampaignChips({
    super.key,
    required this.selectedType,
    required this.selectedSort,
    required this.onTypeSelected,
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
          ...CampaignType.values.map(
            (type) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _ChipButton(
                label: _chipLabel(type),
                isSelected: selectedType == type,
                onTap: () => onTypeSelected(type),
              ),
            ),
          ),
          const SizedBox(width: 8),
          _SortButton(
            selectedSort: selectedSort,
            onSortSelected: onSortSelected,
          ),
        ],
      ),
    );
  }

  String _chipLabel(CampaignType type) {
    switch (type) {
      case CampaignType.all:
        return 'All';
      case CampaignType.donation:
        return 'Donation';
      case CampaignType.reward:
        return 'Reward';
      case CampaignType.debt:
        return 'Debt/Lending';
      case CampaignType.equity:
        return 'Equity';
      case CampaignType.emergency:
        return 'Emergency';
      case CampaignType.subscription:
        return 'Subscription';
      case CampaignType.nearby:
        return 'Nearby';
      case CampaignType.verified:
        return 'Verified';
    }
  }
}

class _ChipButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ChipButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
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
          child: Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: isSelected
                  ? colorScheme.onPrimaryContainer
                  : colorScheme.onSurface,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            ),
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
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
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
