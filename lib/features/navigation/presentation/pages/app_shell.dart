import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/ui/connectivity_snackbar_listener.dart';
import 'package:velora/features/navigation/presentation/navigation_tabs.dart';
import 'package:velora/features/navigation/presentation/widgets/adaptive_navigation_scaffold.dart';

/// Shell widget that wraps StatefulNavigationShell with adaptive navigation controls.
class AppShell extends HookWidget {
  const AppShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(navigationShell.currentIndex);

    final connectivity = getIt<ConnectivityService>();

    useEffect(() {
      currentIndex.value = navigationShell.currentIndex;
      return null;
    }, [navigationShell.currentIndex]);

    void onDestinationSelected(int index) {
      if (index == currentIndex.value) {
        navigationShell.goBranch(index, initialLocation: true);
        return;
      }
      currentIndex.value = index;
      navigationShell.goBranch(index);
    }

    return AdaptiveNavigationScaffold(
      tabs: NavigationTabs.items,
      currentIndex: currentIndex.value,
      onDestinationSelected: onDestinationSelected,
      body: ConnectivitySnackbarListener(
        connectivityService: connectivity,
        child: navigationShell,
      ),
    );
  }
}
