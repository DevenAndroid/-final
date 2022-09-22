import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../main.dart';

class NotificationService {
  static final NotificationService _notificationService =
      NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings(
      'mipmap/ic_launcher',
    );

    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: selectNotification,
    );

    if (Platform.isAndroid) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    }
    if (Platform.isIOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
  }

  Future<void> showLocalNotification(
    RemoteMessage message,
  ) async {
    debugPrint(":::: [Notification Service] Showing Notification! ::::");

    RemoteNotification? notification = message.notification;
    AndroidNotification? android = notification?.android;

    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification?.title,
      notification?.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          priority: Priority.max,
          playSound: true,
          enableVibration: true,
          icon: android?.smallIcon,
          autoCancel: true,
          groupKey: 'com.eoxysit.dinelah_sellerseller',
        ),
        iOS: const IOSNotificationDetails(
          threadIdentifier: 'com.eoxysit.dinelah_sellerseller',
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: '${notification?.body}',
    );
  }

  Future<void> onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    debugPrint(":::: [Notification Service] Notification Received! ::::");
    debugPrint("title:$title, body:$body, payload:$payload");
  }

  Future selectNotification(String? payload) async {
    debugPrint(":::: [Notification Service] Payload: $payload ::::");
    //Handle notification tapped logic here
  }
}
