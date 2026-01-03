import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';


/// Connectivity service (UI-agnostic):
/// - Detects network interface changes via connectivity_plus.
/// - Confirms real internet access via internet_connection_checker_plus.
/// - Exposes broadcast stream<bool> for online/offline.
class ConnectivityService {
  ConnectivityService({
    Connectivity? connectivity,
    InternetConnection? internet,
  }) : _connectivity =connectivity ?? Connectivity(),
       _internet = internet ?? InternetConnection();

  final Connectivity _connectivity;
  final InternetConnection _internet;

  final _controller = StreamController<bool>.broadcast();

  Stream<bool> get connectionChange => _controller.stream;

  bool _hasInternet = true;
  bool get hasInternet => _hasInternet;

  StreamSubscription<dynamic>? _connectivitySub;
  StreamSubscription<InternetStatus>? _internetSub;

  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;

    // 1) Emit initial status (best-effort)
    _hasInternet = await _evaluateInternet();
    _controller.add(_hasInternet);

    // 2) Listen network interface changes.
    // NOTE: connectivity_plus may emit ConnectivityResult OR List<ConnectivityResult> depending on version.
    _connectivitySub = _connectivity.onConnectivityChanged.listen((_) async {
      await _recheckAndEmitIfChanged();
    });

    // 3) Listen real internet status changes.
    _internetSub = _internet.onStatusChange.listen((_) async {
      await _recheckAndEmitIfChanged();
    });
  }

  Future<void> _recheckAndEmitIfChanged() async {
    final previous = _hasInternet;
    final now = await _evaluateInternet();

    if (now == previous) return;

    _hasInternet = now;
    _controller.add(_hasInternet);
  }

  Future<bool> _evaluateInternet() async {
    // First check: do we have any network interface?
    final conn = await _connectivity.checkConnectivity();

    // conn can be ConnectivityResult or List<ConnectivityResult> (newer versions)
    final hasNetwork = conn.isNotEmpty && !conn.contains(ConnectivityResult.none);

    if (!hasNetwork) return false;

    // Second check: real internet reachability
    // This checks external connectivity, not just Wi-Fi/mobile presence.
    return _internet.hasInternetAccess;
  }

  Future<void> dispose() async {
    await _connectivitySub?.cancel();
    await _internetSub?.cancel();
    await _controller.close();
    _initialized = false;
  }
}
