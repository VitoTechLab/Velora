import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/features/navigation/presentation/navigation_tabs.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/routes/app_router.dart';

class AdaptiveNavigationScaffold extends StatelessWidget {
  const AdaptiveNavigationScaffold({
    super.key,
    required this.body,
    required this.tabs,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final List<NavigationTab> tabs;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;
  Widget _icon(NavigationTab tab, bool selected) {
    if (tab.id == AppRouteName.profile)
      return _ProfileNavigationAvatar(selected: selected, size: 24);
    final ios = defaultTargetPlatform == TargetPlatform.iOS;
    return Icon(
      ios
          ? (selected ? tab.cupertinoActiveIcon : tab.cupertinoIcon)
          : (selected ? tab.activeIcon : tab.icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    if (MediaQuery.sizeOf(context).width >= 1000) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: currentIndex,
              onDestinationSelected: onDestinationSelected,
              backgroundColor: colors.surface,
              indicatorColor: Colors.transparent,
              selectedIconTheme: IconThemeData(color: colors.primary),
              labelType: NavigationRailLabelType.all,
              destinations: tabs
                  .map(
                    (tab) => NavigationRailDestination(
                      icon: _icon(tab, false),
                      selectedIcon: _icon(tab, true),
                      label: Text(tab.label),
                    ),
                  )
                  .toList(),
            ),
            VerticalDivider(width: 1, color: colors.outlineVariant),
            Expanded(child: SafeArea(child: body)),
          ],
        ),
      );
    }
    return Scaffold(
      body: SafeArea(bottom: false, child: body),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: colors.outlineVariant, width: .75),
          ),
        ),
        child: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: onDestinationSelected,
          destinations: tabs
              .map(
                (tab) => NavigationDestination(
                  icon: _icon(tab, false),
                  selectedIcon: _icon(tab, true),
                  label: tab.label,
                  tooltip: tab.label,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _ProfileNavigationAvatar extends StatelessWidget {
  const _ProfileNavigationAvatar({required this.selected, required this.size});

  final bool selected;
  final double size;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) =>
          previous.profile?.avatarUrl != current.profile?.avatarUrl,
      builder: (context, state) {
        final avatarUrl = state.profile?.avatarUrl;
        final renderSize = selected ? size - 4 : size;

        return Container(
          width: size,
          height: size,
          padding: selected ? const EdgeInsets.all(2) : EdgeInsets.zero,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected ? colorScheme.primary : Colors.transparent,
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.28),
                      blurRadius: 12,
                    ),
                  ]
                : null,
          ),
          child: ClipOval(
            child: avatarUrl != null && avatarUrl.isNotEmpty
                ? CachedNetworkImage(
                    imageUrl: avatarUrl,
                    width: renderSize,
                    height: renderSize,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        _buildDefaultAvatar(colorScheme, renderSize),
                    errorWidget: (context, url, error) =>
                        _buildDefaultAvatar(colorScheme, renderSize),
                  )
                : _buildDefaultAvatar(colorScheme, renderSize),
          ),
        );
      },
    );
  }

  Widget _buildDefaultAvatar(ColorScheme colorScheme, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.person_rounded,
        size: size * 0.62,
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }
}
