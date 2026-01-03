import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/services/connectivity_service.dart';
import 'package:velora/core/ui/app_messenger.dart';

class ConnectivitySnackbarListener extends HookWidget {
  const ConnectivitySnackbarListener({
    super.key,
    required this.child,
    required this.connectivityService,
  });

  final Widget child;
  final ConnectivityService connectivityService;

  @override
  Widget build(BuildContext context) {
    final last = useRef<bool?>(connectivityService.hasInternet);

    useEffect(() {
      final StreamSubscription<bool> sub = connectivityService.connectionChange
          .listen((hasInternet) {
        // Guard to avoid duplicate snackbars
        if (last.value == hasInternet) return;
        last.value = hasInternet;

        if (!hasInternet) {
          AppMessenger.showSnackBar(
            const SnackBar(
              content: Text('Tidak ada koneksi internet.'),
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 3),
            ),
          );
        } else {
          AppMessenger.showSnackBar(
            const SnackBar(
              content: Text('Koneksi internet kembali.'),
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 2),
            ),
          );
        }
      });

      return sub.cancel; // cleanup on unmount
    }, [connectivityService]);

    return child;
  }
}
