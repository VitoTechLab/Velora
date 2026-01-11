import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/l10n/app_localizations.dart';

enum SearchScope { campaigns, posts, people }

extension _SearchScopeLocalization on SearchScope {
  String label(AppLocalizations t) {
    switch (this) {
      case SearchScope.campaigns:
        return t.chatSearchScopeCampaigns;
      case SearchScope.posts:
        return t.chatSearchScopePosts;
      case SearchScope.people:
        return t.chatSearchScopePeople;
    }
  }
}

class ChatSearchScreen extends HookWidget {
  final SearchScope? initialScope;

  const ChatSearchScreen({super.key, this.initialScope});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final searchController = useTextEditingController();
    final focusNode = useFocusNode();
    final selectedScope = useState(initialScope ?? SearchScope.campaigns);
    final recentSearches = useState<List<String>>([
      'Team meeting notes',
      'Project deadline',
      'Design resources',
    ]);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 400),
    );
    final fadeAnimation = useMemoized(
      () =>
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
      [animationController],
    );

    useEffect(() {
      animationController.forward();
      focusNode.requestFocus();
      return null;
    }, [animationController, focusNode]);

    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: () => Navigator.pop(context),
          tooltip: t.commonGoBack,
        ),
        title: Text(
          t.chatSearchScreenTitle,
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface,
          ),
        ),
      ),
      body: SafeArea(
        child: FadeTransition(
          opacity: fadeAnimation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
                child: _SearchBar(
                  controller: searchController,
                  focusNode: focusNode,
                  selectedScope: selectedScope.value,
                  onScopeChanged: (scope) {
                    selectedScope.value = scope;
                  },
                  onSearch: (query) {
                    // Handle search
                    if (query.isNotEmpty &&
                        !recentSearches.value.contains(query)) {
                      recentSearches.value = [
                        query,
                        ...recentSearches.value,
                      ].take(5).toList();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  t.chatSearchScreenRecent,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: 12,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: [
                    ...recentSearches.value.map(
                      (search) => _RecentSearchItem(
                        search: search,
                        onTap: () {
                          searchController.text = search;
                          // Handle search
                        },
                        onDelete: () {
                          recentSearches.value = recentSearches.value
                              .where((s) => s != search)
                              .toList();
                        },
                      ),
                    ),
                    if (recentSearches.value.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
                        child: TextButton(
                          onPressed: () {
                            recentSearches.value = [];
                          },
                          child: Text(
                            t.chatSearchScreenClearAll,
                            style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.error,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final SearchScope selectedScope;
  final ValueChanged<SearchScope> onScopeChanged;
  final ValueChanged<String> onSearch;

  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.selectedScope,
    required this.onScopeChanged,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final isDark = theme.brightness == Brightness.dark;

    return Semantics(
      label: t.chatSearchGlobalLabel,
      hint: t.chatSearchGlobalHint,
      textField: true,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: isDark
              ? colorScheme.surfaceContainerHighest
              : colorScheme.surface,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isDark
                ? colorScheme.outlineVariant.withValues(alpha: 0.3)
                : Colors.transparent,
            width: 1,
          ),
          boxShadow: isDark
              ? null
              : [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.06),
                    blurRadius: 12,
                    offset: const Offset(0, 2),
                  ),
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 12),
              child: Icon(
                Icons.search,
                size: 20,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onSurface,
                  fontSize: 16,
                  letterSpacing: -0.2,
                ),
                decoration: InputDecoration(
                  hintText: t.chatSearchPlaceholder,
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                    fontSize: 16,
                    letterSpacing: -0.2,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
                onSubmitted: onSearch,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 6),
              height: 36,
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: _ScopeSegmentedControl(
                selectedScope: selectedScope,
                onChanged: onScopeChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScopeSegmentedControl extends StatelessWidget {
  final SearchScope selectedScope;
  final ValueChanged<SearchScope> onChanged;

  const _ScopeSegmentedControl({
    required this.selectedScope,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: SearchScope.values.map((scope) {
        final isSelected = scope == selectedScope;
        final label = scope.label(t);
        return Semantics(
          button: true,
          selected: isSelected,
          label: t.chatSearchScopeSemantics(label),
          child: InkWell(
            onTap: () => onChanged(scope),
            borderRadius: BorderRadius.circular(10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? colorScheme.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                label,
                style: textTheme.labelMedium?.copyWith(
                  color: isSelected
                      ? colorScheme.onPrimary
                      : colorScheme.onSurfaceVariant,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  fontSize: 11,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _RecentSearchItem extends StatelessWidget {
  final String search;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _RecentSearchItem({
    required this.search,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Semantics(
      button: true,
      label: t.chatSearchRecentItemLabel(search),
      hint: t.chatSearchRecentItemHint,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest.withValues(
                    alpha: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.history,
                  size: 18,
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  search,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface,
                    letterSpacing: -0.1,
                  ),
                ),
              ),
              Semantics(
                button: true,
                label: t.chatSearchRecentDeleteLabel,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 18,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  onPressed: onDelete,
                  tooltip: t.chatSearchRecentDeleteTooltip,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
