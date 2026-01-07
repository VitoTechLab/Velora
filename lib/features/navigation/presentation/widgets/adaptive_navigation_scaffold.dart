import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:velora/features/navigation/presentation/navigation_tabs.dart';

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

  static const double _mobileIconSize = 22;
  static const double _railIconSize = 24;

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
          .map(
            (tab) => NavigationRailDestination(
              icon: _buildIconForTab(tab, false, size: _railIconSize),
              selectedIcon: _buildIconForTab(tab, true, size: _railIconSize),
              label: Text(tab.label),
            ),
          )
          .toList(),
    );
  }

  Widget _buildMaterialNavigationBar(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      height: 60,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: tabs
          .map(
            (tab) => NavigationDestination(
              icon: _buildIconForTab(tab, false, size: _mobileIconSize),
              selectedIcon: _buildIconForTab(tab, true, size: _mobileIconSize),
              label: tab.label,
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
          .map(
            (tab) => BottomNavigationBarItem(
              icon: _buildCupertinoIcon(tab, false),
              activeIcon: _buildCupertinoIcon(tab, true),
              label: '',
            ),
          )
          .toList(),
    );
  }

  Widget _buildCupertinoIcon(NavigationTab tab, bool selected) {
    return Icon(
      selected ? tab.cupertinoActiveIcon : tab.cupertinoIcon,
      size: _mobileIconSize,
    );
  }

  Widget _buildIconForTab(
    NavigationTab tab,
    bool selected, {
    double size = _mobileIconSize,
  }) {
    return Icon(selected ? tab.activeIcon : tab.icon, size: size);
  }
}
