import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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

  // Modern elegant icon sizes - smaller and refined
  static const double _mobileIconSize = 24;
  static const double _railIconSize = 24;
  // Optimal stroke weight for clarity
  static const double _iconStrokeWeight = 400;
  // Spacing and padding
  static const double _navBarHeight = 72;
  static const double _railWidth = 80;

  bool get _isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final useRail = size.width >= 1000;

    if (useRail) {
      return Scaffold(
        body: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.surface,
                    Theme.of(context)
                        .colorScheme
                        .surfaceContainerHighest
                        .withValues(alpha: 0.5),
                  ],
                ),
              ),
              child: SafeArea(child: _buildNavigationRail(context)),
            ),
            Container(
              width: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context)
                        .colorScheme
                        .outline
                        .withValues(alpha: 0.1),
                    Theme.of(context)
                        .colorScheme
                        .outline
                        .withValues(alpha: 0.05),
                  ],
                ),
              ),
            ),
            Expanded(child: SafeArea(child: body)),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(child: body),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 8, left: 12, right: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.surface.withValues(alpha: 0.95),
              Theme.of(context)
                  .colorScheme
                  .surfaceContainerHighest
                  .withValues(alpha: 0.9),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color:
                Theme.of(context).colorScheme.outline.withValues(alpha: 0.15),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color:
                  Theme.of(context).colorScheme.shadow.withValues(alpha: 0.1),
              blurRadius: 20,
              offset: const Offset(0, -2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: _isIOS
              ? _buildCupertinoTabBar(context)
              : _buildMaterialNavigationBar(context),
        ),
      ),
    );
  }

  Widget _buildNavigationRail(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return NavigationRail(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.none,
      groupAlignment: 0,
      minWidth: _railWidth,
      backgroundColor: Colors.transparent,
      indicatorColor: colorScheme.primaryContainer.withValues(alpha: 0.3),
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      destinations: tabs
          .asMap()
          .entries
          .map(
            (entry) => NavigationRailDestination(
              icon: _buildNavIcon(context, entry.value, entry.key, false,
                  size: _railIconSize),
              selectedIcon: _buildNavIcon(context, entry.value, entry.key, true,
                  size: _railIconSize),
              label: Text(entry.value.label),
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
          )
          .toList(),
    );
  }

  Widget _buildMaterialNavigationBar(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      height: _navBarHeight,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      backgroundColor: Colors.transparent,
      elevation: 0,
      indicatorColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      destinations: tabs
          .asMap()
          .entries
          .map(
            (entry) => NavigationDestination(
              icon: _buildNavIcon(context, entry.value, entry.key, false,
                  size: _mobileIconSize),
              selectedIcon: _buildNavIcon(context, entry.value, entry.key, true,
                  size: _mobileIconSize),
              label: entry.value.label,
            ),
          )
          .toList(),
    );
  }

  Widget _buildCupertinoTabBar(BuildContext context) {
    return CupertinoTabBar(
      currentIndex: currentIndex,
      onTap: onDestinationSelected,
      iconSize: _mobileIconSize,
      backgroundColor: Colors.transparent,
      border: null,
      height: _navBarHeight,
      items: tabs
          .asMap()
          .entries
          .map(
            (entry) => BottomNavigationBarItem(
              icon: _buildNavIcon(context, entry.value, entry.key, false),
              activeIcon: _buildNavIcon(context, entry.value, entry.key, true),
              label: '',
            ),
          )
          .toList(),
    );
  }

  /// Build navigation icon - shows avatar for profile tab, regular icon otherwise
  Widget _buildNavIcon(
    BuildContext context,
    NavigationTab tab,
    int index,
    bool selected, {
    double size = _mobileIconSize,
  }) {
    // Check if this is the profile tab
    if (tab.id == AppRouteName.profile) {
      return _buildProfileAvatar(context, selected, size: size);
    }

    // Regular icon for other tabs
    return _buildIconForTab(context, tab, selected, size: size);
  }

  /// Build profile avatar from ProfileBloc state
  Widget _buildProfileAvatar(BuildContext context, bool selected,
      {double size = _mobileIconSize}) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (previous, current) =>
          previous.profile?.avatarUrl != current.profile?.avatarUrl,
      builder: (context, state) {
        final avatarUrl = state.profile?.avatarUrl;
        final avatarRenderSize = size - 6; // Space for gradient border

        return Container(
          width: size,
          height: size,
          padding: selected ? const EdgeInsets.all(2) : null,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: selected
                ? LinearGradient(
                    colors: [
                      colorScheme.primary,
                      colorScheme.secondary,
                    ],
                  )
                : null,
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ]
                : null,
          ),
          child: ClipOval(
            child: avatarUrl != null && avatarUrl.isNotEmpty
                ? CachedNetworkImage(
                    imageUrl: avatarUrl,
                    width: avatarRenderSize,
                    height: avatarRenderSize,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => _buildDefaultAvatar(
                      colorScheme,
                      avatarRenderSize,
                    ),
                    errorWidget: (context, url, error) => _buildDefaultAvatar(
                      colorScheme,
                      avatarRenderSize,
                    ),
                  )
                : _buildDefaultAvatar(colorScheme, avatarRenderSize),
          ),
        );
      },
    );
  }

  /// Default avatar icon when no image available
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
        size: size * 0.6,
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }

  Widget _buildIconForTab(
    BuildContext context,
    NavigationTab tab,
    bool selected, {
    double size = _mobileIconSize,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final isCupertino = _isIOS;

    final icon = Icon(
      isCupertino
          ? (selected ? tab.cupertinoActiveIcon : tab.cupertinoIcon)
          : (selected ? tab.activeIcon : tab.icon),
      size: size,
      color: selected ? Colors.white : colorScheme.onSurfaceVariant,
      weight: _iconStrokeWeight,
      fill: selected ? 1.0 : 0.0,
    );

    if (selected) {
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorScheme.primary.withValues(alpha: 0.8),
              colorScheme.secondary.withValues(alpha: 0.7),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: icon,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(12),
      child: icon,
    );
  }
}
