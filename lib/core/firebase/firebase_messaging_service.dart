import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';

class FirebaseMessagingService {
  FirebaseMessagingService()
    : _messaging = FirebaseMessaging.instance,
      _notifications = FlutterLocalNotificationsPlugin();

  final FirebaseMessaging _messaging;
  final FlutterLocalNotificationsPlugin _notifications;

  Future<void> initialize() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const initSettings = InitializationSettings(android: androidSettings);
    await _notifications.initialize(initSettings);

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  }

  Future<bool> requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    final granted =
        settings.authorizationStatus == AuthorizationStatus.authorized;
    logi('FCM permission granted: $granted');
    return granted;
  }

  void listenForegroundMessages() {
    FirebaseMessaging.onMessage.listen(_showForegroundNotification);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpened);
  }

  Future<String?> getToken() async {
    if (kIsWeb) {
      return _messaging.getToken(
        vapidKey:
            'BAbg6V8RmnB77Sz4_VMmzRUrhEyLcnDQ-WI2pXDDOspisMH_3LZ2eEtVLqLEv7_0g1UHQAs_8ydw26_7yFDtmvA',
      );
    }
    return _messaging.getToken();
  }

  void _showForegroundNotification(RemoteMessage message) {
    final notification = message.notification;
    final android = notification?.android;

    if (notification == null || android == null) return;

    _notifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'default_channel',
          'Default Channel',
          channelDescription: 'Default notification channel',
          importance: Importance.max,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
      ),
    );
  }

  void _handleMessageOpened(RemoteMessage message) {
    logi('Notification opened: ${message.messageId}');
    final navigation = getIt<NavigationService>();
    final context = navigation.context;
    if (context == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opened message ${message.messageId ?? ''}')),
    );
  }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("BG message: ${message.messageId}");
}