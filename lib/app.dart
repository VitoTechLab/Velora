import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:velora/main.dart';
import 'package:upgrader/upgrader.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Language App',
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: UpgradeAlert(
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      FirebaseMessaging.instance
          .getToken(
            vapidKey:
                "BAbg6V8RmnB77Sz4_VMmzRUrhEyLcnDQ-WI2pXDDOspisMH_3LZ2eEtVLqLEv7_0g1UHQAs_8ydw26_7yFDtmvA", // lihat langkah selanjutnya
          )
          .then((value) {
            if (value != null) {
              print("🕸️ Web Token: $value");
            } else {
              print("⚠️ Gagal mendapatkan token (value null)");
            }
          })
          .catchError((e, stack) {
            print("🔥 Error saat getToken: $e");
          });
    } else {
      FirebaseMessaging.instance.getToken().then((value) {
        print("📱 Mobile Token: $value");
      });
    }

    // ✅ Saat aplikasi sedang dibuka (foreground)
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('🔔 [Foreground] Message received');

      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              'channel_id',
              'Default Channel',
              channelDescription: 'Channel untuk notifikasi',
              importance: Importance.max,
              priority: Priority.high,
              icon: '@mipmap/ic_launcher',
            ),
          ),
        );
      }
    });

    // ✅ Saat aplikasi dibuka dari background lewat notifikasi
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('🟢 Notif dibuka dari background: ${message.data}');
      // Arahkan ke halaman tertentu kalau mau
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('auth.title'.tr())),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('auth.login'.tr()),
            const SizedBox(height: 20),
            Text('auth.password'.tr()),
          ],
        ),
      ),
    );
  }
}
