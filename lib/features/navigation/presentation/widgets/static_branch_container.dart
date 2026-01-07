import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Container for [StatefulShellRoute] that provides instant tab switching
/// using [IndexedStack]. All branches are built immediately and kept alive.
///
/// This is the performance-optimized alternative to [SlidingBranchContainer]:
/// - No animations (instant switching)
/// - Lower CPU usage (no animation calculations)
/// - Better for accessibility (respects Reduce Motion)
/// - Ideal for low-end devices
///
/// Use cases:
/// - System "Reduce Motion" is enabled
/// - User manually disabled animations
/// - Low-end device detected
/// - Battery saving mode
class StaticBranchContainer extends HookWidget {
  const StaticBranchContainer({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(navigationShell.currentIndex);

    // Sync with navigationShell changes
    useEffect(() {
      currentIndex.value = navigationShell.currentIndex;
      return null;
    }, [navigationShell.currentIndex]);

    return IndexedStack(
      index: currentIndex.value,
      children: children
          .map((child) => _KeepAliveBranch(child: child))
          .toList(),
    );
  }
}

class _KeepAliveBranch extends HookWidget {
  const _KeepAliveBranch({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    useAutomaticKeepAlive(wantKeepAlive: true);
    return child;
  }
}
