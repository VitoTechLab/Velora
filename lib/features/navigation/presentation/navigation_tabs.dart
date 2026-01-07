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
      icon: Icons.home_outlined,
      activeIcon: Icons.home_rounded,
      cupertinoIcon: CupertinoIcons.house,
      cupertinoActiveIcon: CupertinoIcons.house_fill,
    ),
    NavigationTab(
      id: AppRouteName.search,
      label: 'Search',
      path: AppRoutePath.search,
      icon: Icons.search,
      activeIcon: Icons.search,
      cupertinoIcon: CupertinoIcons.search,
      cupertinoActiveIcon: CupertinoIcons.search,
    ),
    NavigationTab(
      id: AppRouteName.chat,
      label: 'Chat',
      path: AppRoutePath.chat,
      icon: Icons.mark_unread_chat_alt_outlined,
      activeIcon: Icons.mark_unread_chat_alt,
      cupertinoIcon: CupertinoIcons.chat_bubble,
      cupertinoActiveIcon: CupertinoIcons.chat_bubble_fill,
    ),
    NavigationTab(
      id: AppRouteName.campaign,
      label: 'Campaign',
      path: AppRoutePath.campaign,
      icon: Icons.volunteer_activism_outlined,
      activeIcon: Icons.volunteer_activism,
      cupertinoIcon: CupertinoIcons.heart_circle,
      cupertinoActiveIcon: CupertinoIcons.heart_circle_fill,
    ),
    NavigationTab(
      id: AppRouteName.profile,
      label: 'Profile',
      path: AppRoutePath.profile,
      icon: Icons.person_outline,
      activeIcon: Icons.person,
      cupertinoIcon: CupertinoIcons.person,
      cupertinoActiveIcon: CupertinoIcons.person_fill,
    ),
  ];
}
