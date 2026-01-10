import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/services/device_info.dart';
import 'package:velora/features/settings/domain/entities/user_preferences.dart';
import 'package:velora/features/navigation/presentation/widgets/sliding_branch_container.dart';
import 'package:velora/features/navigation/presentation/widgets/static_branch_container.dart';

/// Adaptive navigation that chooses between animated or instant tab switching based on device capabilities and user preferences.
class AdaptiveBranchContainer extends StatelessWidget {
  const AdaptiveBranchContainer({
    super.key,
    required this.navigationShell,
    required this.children,
    this.userPreferences,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  /// Optional user preferences for animation control.
  final UserPreferences? userPreferences;

  @override
  Widget build(BuildContext context) {
    // Check system-level "Reduce Motion" accessibility setting
    final systemReduceMotion = MediaQuery.of(context).disableAnimations;

    // Check device capabilities
    final deviceInfo = DeviceInfo.instance;
    final isLowEndDevice = deviceInfo.isLowEndDevice;

    // Determine if animations should be used
    final shouldUseAnimations = _shouldEnableAnimations(
      systemReduceMotion: systemReduceMotion,
      isLowEndDevice: isLowEndDevice,
    );

    // Choose the appropriate container
    if (shouldUseAnimations) {
      return SlidingBranchContainer(
        navigationShell: navigationShell,
        enableAnimations: true,
        children: children,
      );
    } else {
      // Use static container for instant switching
      return StaticBranchContainer(
        navigationShell: navigationShell,
        children: children,
      );
    }
  }

  bool _shouldEnableAnimations({
    required bool systemReduceMotion,
    required bool isLowEndDevice,
  }) {
    // If device is low-end, disable animations for performance
    if (isLowEndDevice) {
      return false;
    }

    // Check user preferences if available
    if (userPreferences != null) {
      return userPreferences!.shouldUseAnimations(systemReduceMotion);
    }

    // Default: respect system reduce motion, otherwise enable animations
    return !systemReduceMotion;
  }
}

/// Alternative implementation using SlidingBranchContainer with dynamic duration.
class AdaptiveBranchContainerV2 extends StatelessWidget {
  const AdaptiveBranchContainerV2({
    super.key,
    required this.navigationShell,
    required this.children,
    this.userPreferences,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;
  final UserPreferences? userPreferences;

  @override
  Widget build(BuildContext context) {
    final systemReduceMotion = MediaQuery.of(context).disableAnimations;
    final deviceInfo = DeviceInfo.instance;
    final isLowEndDevice = deviceInfo.isLowEndDevice;

    final shouldAnimate = _shouldEnableAnimations(
      systemReduceMotion: systemReduceMotion,
      isLowEndDevice: isLowEndDevice,
    );

    // Always use SlidingBranchContainer, but with conditional animation
    return SlidingBranchContainer(
      navigationShell: navigationShell,
      enableAnimations: shouldAnimate,
      animationDuration: shouldAnimate
          ? const Duration(milliseconds: 280)
          : Duration.zero,
      children: children,
    );
  }

  bool _shouldEnableAnimations({
    required bool systemReduceMotion,
    required bool isLowEndDevice,
  }) {
    if (isLowEndDevice) return false;
    if (userPreferences != null) {
      return userPreferences!.shouldUseAnimations(systemReduceMotion);
    }
    return !systemReduceMotion;
  }
}
