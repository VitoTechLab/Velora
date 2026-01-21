import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/notification_preferences_service.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/navigation/services/navigation_service.dart';

/// Firebase Cloud Messaging service with notification preferences support
/// 
/// Notifications are filtered based on user preferences set in Settings > Notifications
/// FCM messages must include a "type" field in the data payload to be filtered correctly.
/// 
/// Supported types: like, comment, reply, mention, follow, post, story, live, campaign,
/// donation, milestone, campaign_update, withdrawal, message, message_request, group_invite
/// 
/// See docs/fcm_notification_types.md for complete documentation
class FirebaseMessagingService {
  FirebaseMessagingService()
    : _messaging = FirebaseMessaging.instance,
      _notifications = FlutterLocalNotificationsPlugin(),
      _preferencesService = NotificationPreferencesService();

  final FirebaseMessaging _messaging;
  final FlutterLocalNotificationsPlugin _notifications;
  final NotificationPreferencesService _preferencesService;

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

  void _showForegroundNotification(RemoteMessage message) async {
    final notification = message.notification;
    final android = notification?.android;

    if (notification == null || android == null) return;

    // Check if notification should be shown based on preferences
    final notificationType = _preferencesService.getNotificationTypeFromData(message.data);
    if (notificationType != null) {
      final shouldShow = await _preferencesService.shouldShowNotification(notificationType);
      if (!shouldShow) {
        logi('Notification blocked by preferences: ${notificationType.name}');
        return;
      }
    }

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
      payload: message.data.toString(),
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
  
  // Check notification preferences before showing
  final preferencesService = NotificationPreferencesService();
  final notificationType = preferencesService.getNotificationTypeFromData(message.data);
  
  if (notificationType != null) {
    final shouldShow = await preferencesService.shouldShowNotification(notificationType);
    if (!shouldShow) {
      print("BG notification blocked by preferences: ${notificationType.name}");
      return;
    }
  }
  
  print("BG message: ${message.messageId}");
}