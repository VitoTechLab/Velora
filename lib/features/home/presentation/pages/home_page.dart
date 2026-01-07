import 'package:flutter/material.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/firebase/firebase_analytics_service.dart';
import 'package:velora/core/firebase/firebase_messaging_service.dart';

/// Temporary home tab that surfaces the bootstrap diagnostics that were
/// previously rendered by [AppShell].
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FirebaseAnalyticsService _analytics = getIt();
  late final FirebaseMessagingService _messaging = getIt();

  bool _permissionGranted = false;
  String? _token;
  bool _listenersAttached = false;

  @override
  void initState() {
    super.initState();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    await _analytics.logAppOpen();
    final granted = await _messaging.requestPermission();
    _attachListeners();
    final token = await _messaging.getToken();

    if (!mounted) return;
    setState(() {
      _permissionGranted = granted;
      _token = token;
    });
  }

  void _attachListeners() {
    if (_listenersAttached) return;
    _messaging.listenForegroundMessages();
    _listenersAttached = true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomScrollView(
      slivers: [
        const SliverPadding(padding: EdgeInsets.only(top: 12)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Velora Home', style: theme.textTheme.headlineMedium),
                const SizedBox(height: 8),
                Text(
                  'Integrasi inti (Firebase, Messaging, Analytics, get_it) sudah siap. '
                  'Repositori optimal untuk migrasi modul modern.',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                _StatusTile(
                  title: 'FCM Permission',
                  value: _permissionGranted ? 'Granted' : 'Requesting…',
                  icon: _permissionGranted
                      ? Icons.check_circle
                      : Icons.notifications_active,
                  color: _permissionGranted ? Colors.green : Colors.orange,
                ),
                const SizedBox(height: 12),
                _StatusTile(
                  title: 'Firebase Analytics',
                  value: 'logAppOpen() dipanggil',
                  icon: Icons.bar_chart,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 12),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('FCM Token', style: theme.textTheme.titleMedium),
                        const SizedBox(height: 8),
                        if (_token == null)
                          const Text('Sedang mengambil token...')
                        else
                          SelectableText(
                            _token!,
                            style: theme.textTheme.bodySmall,
                          ),
                        const SizedBox(height: 12),
                        FilledButton.tonal(
                          onPressed: _refreshToken,
                          child: const Text('Refresh Token'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _refreshToken() async {
    final newToken = await _messaging.getToken();
    if (!mounted) return;
    setState(() => _token = newToken);
  }
}

class _StatusTile extends StatelessWidget {
  const _StatusTile({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title, style: theme.textTheme.titleMedium),
        subtitle: Text(value),
      ),
    );
  }
}
