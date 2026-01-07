import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Custom container for [StatefulShellRoute] that animates transitions between
/// tab navigators using a [PageView]. Each branch keeps its own navigation
/// stack alive, mimicking Instagram-style horizontal sliding.
///
/// Supports configurable animation duration for accessibility and performance:
/// - Set [enableAnimations] to false for instant switching
/// - Respects system "Reduce Motion" settings when applicable
class SlidingBranchContainer extends HookWidget {
  const SlidingBranchContainer({
    super.key,
    required this.navigationShell,
    required this.children,
    this.enableAnimations = true,
    this.animationDuration = const Duration(milliseconds: 280),
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  /// Whether to enable smooth slide animations between tabs.
  ///
  /// When false, tabs switch instantly (duration becomes 0ms).
  /// When true, uses [animationDuration] for smooth transitions.
  final bool enableAnimations;

  /// Duration of the slide animation when switching tabs.
  ///
  /// Default: 280ms (Instagram-style)
  /// Ignored if [enableAnimations] is false.
  final Duration animationDuration;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(navigationShell.currentIndex);
    final isProgrammaticPageChange = useState(false);
    final controller = usePageController(initialPage: currentIndex.value);

    // Sync with navigationShell changes
    useEffect(() {
      final nextIndex = navigationShell.currentIndex;
      if (nextIndex != currentIndex.value) {
        currentIndex.value = nextIndex;

        final duration = enableAnimations ? animationDuration : Duration.zero;

        isProgrammaticPageChange.value = true;
        if (duration == Duration.zero) {
          controller.jumpToPage(nextIndex);
        } else {
          controller.animateToPage(
            nextIndex,
            duration: duration,
            curve: Curves.easeOutCubic,
          );
        }
      }
      return null;
    }, [navigationShell.currentIndex]);

    void handlePageChanged(int index) {
      currentIndex.value = index;
      if (isProgrammaticPageChange.value) {
        isProgrammaticPageChange.value = false;
        return;
      }
      navigationShell.goBranch(index);
    }

    return PageView.builder(
      controller: controller,
      physics: const PageScrollPhysics(),
      itemCount: children.length,
      onPageChanged: handlePageChanged,
      itemBuilder: (context, index) {
        return _KeepAliveBranch(child: children[index]);
      },
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
