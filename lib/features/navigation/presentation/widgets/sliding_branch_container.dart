import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

/// Custom container for StatefulShellRoute with animated PageView transitions between branches.
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
  final bool enableAnimations;

  /// Duration of the slide animation when switching tabs.
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
