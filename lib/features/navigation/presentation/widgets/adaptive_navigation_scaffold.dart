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

  // Increased icon sizes for better visibility
  static const double _mobileIconSize = 30;
  static const double _railIconSize = 28;
  // Thicker stroke weight for icons
  static const double _iconStrokeWeight = 600;

  bool get _isIOS => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final useRail = size.width >= 1000;

    if (useRail) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(child: _buildNavigationRail(context)),
            const VerticalDivider(width: 1),
            Expanded(child: SafeArea(child: body)),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(child: body),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: _isIOS
            ? _buildCupertinoTabBar(context)
            : _buildMaterialNavigationBar(context),
      ),
    );
  }

  Widget _buildNavigationRail(BuildContext context) {
    return NavigationRail(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      labelType: NavigationRailLabelType.none,
      groupAlignment: 0,
      minWidth: 72,
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
            ),
          )
          .toList(),
    );
  }

  Widget _buildMaterialNavigationBar(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      height: 65,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: Colors.transparent,
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
        final avatarRenderSize = size - 4; // Slightly smaller for border

        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: selected ? colorScheme.onSurface : Colors.transparent,
              width: selected ? 2 : 0,
            ),
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

    return Icon(
      isCupertino
          ? (selected ? tab.cupertinoActiveIcon : tab.cupertinoIcon)
          : (selected ? tab.activeIcon : tab.icon),
      size: size,
      color: selected ? colorScheme.onSurface : colorScheme.onSurfaceVariant,
      weight: _iconStrokeWeight,
      fill: selected ? 1.0 : 0.0,
    );
  }
}
