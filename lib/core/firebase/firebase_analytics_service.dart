import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticsService {
  FirebaseAnalyticsService() : _analytics = FirebaseAnalytics.instance;

  final FirebaseAnalytics _analytics;

  FirebaseAnalytics get instance => _analytics;

  Future<void> logAppOpen() => _analytics.logAppOpen();

  Future<void> logScreenView(String screenName) =>
      _analytics.logScreenView(screenName: screenName);

  Future<void> logCustomEvent(
    String name, {
    Map<String, Object>? parameters,
  }) => _analytics.logEvent(name: name, parameters: parameters);
}
