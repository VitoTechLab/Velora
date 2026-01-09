import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velora/routes/app_router.dart';

class NavigationTab {
  const NavigationTab({
    required this.id,
    required this.label,
    required this.path,
    required this.icon,
    required this.activeIcon,
    required this.cupertinoIcon,
    required this.cupertinoActiveIcon,
  });

  final String id;
  final String label;
  final String path;
  final IconData icon;
  final IconData activeIcon;
  final IconData cupertinoIcon;
  final IconData cupertinoActiveIcon;
}

class NavigationTabs {
  static const items = <NavigationTab>[
    NavigationTab(
      id: AppRouteName.home,
      label: 'Home',
      path: AppRoutePath.home,
      // Rounded home icon - more organic shape
      icon: Icons.home_rounded,
      activeIcon: Icons.home_rounded,
      cupertinoIcon: CupertinoIcons.house,
      cupertinoActiveIcon: CupertinoIcons.house_fill,
    ),
    NavigationTab(
      id: AppRouteName.campaign,
      label: 'Campaign',
      path: AppRoutePath.campaign,
      // Funding/donation style icon - hands with heart
      icon: Icons.volunteer_activism_outlined,
      activeIcon: Icons.volunteer_activism,
      cupertinoIcon: CupertinoIcons.heart_circle,
      cupertinoActiveIcon: CupertinoIcons.heart_circle_fill,
    ),
    NavigationTab(
      id: AppRouteName.chat,
      label: 'Chat',
      path: AppRoutePath.chat,
      // Paper plane / send style icon
      icon: Icons.send_rounded,
      activeIcon: Icons.send_rounded,
      cupertinoIcon: CupertinoIcons.paperplane,
      cupertinoActiveIcon: CupertinoIcons.paperplane_fill,
    ),
    NavigationTab(
      id: AppRouteName.search,
      label: 'Search',
      path: AppRoutePath.search,
      // Rounded search icon
      icon: Icons.search_rounded,
      activeIcon: Icons.search_rounded,
      cupertinoIcon: CupertinoIcons.search,
      cupertinoActiveIcon: CupertinoIcons.search,
    ),
    NavigationTab(
      id: AppRouteName.profile,
      label: 'Profile',
      path: AppRoutePath.profile,
      // Rounded person icon - more circular feel
      icon: Icons.account_circle_outlined,
      activeIcon: Icons.account_circle,
      cupertinoIcon: CupertinoIcons.person_circle,
      cupertinoActiveIcon: CupertinoIcons.person_circle_fill,
    ),
  ];
}
