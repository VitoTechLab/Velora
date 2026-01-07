import 'package:flutter/material.dart';

/// Centralized navigator keys for bottom navigation branches.
class NavigationKeys {
  NavigationKeys._();

  static final GlobalKey<NavigatorState> homeBranch = GlobalKey<NavigatorState>(
    debugLabel: 'homeBranchNavigator',
  );

  static final GlobalKey<NavigatorState> searchBranch =
      GlobalKey<NavigatorState>(debugLabel: 'searchBranchNavigator');

  static final GlobalKey<NavigatorState> chatBranch = GlobalKey<NavigatorState>(
    debugLabel: 'chatBranchNavigator',
  );

  static final GlobalKey<NavigatorState> campaignBranch =
      GlobalKey<NavigatorState>(debugLabel: 'campaignBranchNavigator');

  static final GlobalKey<NavigatorState> profileBranch =
      GlobalKey<NavigatorState>(debugLabel: 'profileBranchNavigator');
}
