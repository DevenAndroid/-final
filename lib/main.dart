import 'dart:convert';

import 'package:dinelah_vendor/data/local/intro_db.dart';
import 'package:dinelah_vendor/model/model_order_details.dart';
import 'package:dinelah_vendor/screens/chat_screens/chat_Screen.dart';
import 'package:dinelah_vendor/screens/intro/intro.dart';
import 'package:dinelah_vendor/screens/notification/notification.dart';
import 'package:dinelah_vendor/screens/order/order_details.dart';
import 'package:dinelah_vendor/screens/wrapper.dart';
import 'package:dinelah_vendor/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dinelah_vendor/screens/splash.dart';
import 'constraints/strings.dart';
import 'constraints/themes.dart';
import 'globals/globals.dart';
import 'services/notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:get/get.dart';
//
// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   'high_importance_channel', // id
//   'High Importance Notifications', // title
//   description: 'This channel is used for important notifications.',
//   // description
//   importance: Importance.max,
//   enableLights: true,
//   showBadge: true,
// );

/// To verify things are working, check out the native platform logs.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCAjlemWzDiNsXUIwFV9TCqSV4ORBMpt-s',
      // apiKey: 'AIzaSyDe8CX9WYGxR_IK4J2zn0QiainTgAGAy0c',
      // appId: '1:580087456375:android:1e0eae7ae2ad95e6de9c72',
      appId: '1:962094105233:android:f3b11ccd1743d76fe93530',
      messagingSenderId: '962094105233',
      projectId: 'dinelah-fae97',
    ),
  );
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);
  print('Handling a background message ${message.data}');

  // runApp(MessagingExampleApp());
}

// void _firebaseMessagingForegroundHandler() {
//   FirebaseMessaging.onMessage.listen(
//     (RemoteMessage message) async {
//       NotificationService().showLocalNotification(message);
//     },
//     onDone: () => debugPrint(
//       "[Main][RemoteMessage] onDone: Notification Received!",
//     ),
//     cancelOnError: true,
//     onError: (error) => debugPrint(
//       "[Main][RemoteMessage] Error on receive notification: $error",
//     ),
//   );
// }
int _messageCount = 0;

/// The API endpoint here accepts a raw FCM payload for demonstration purposes.
String constructFCMPayload(String? token) {
  _messageCount++;
  return jsonEncode({
    'token': token,
    'data': {
      'via': 'FlutterFire Cloud Messaging!!!',
      'count': _messageCount.toString(),
    },
    'notification': {
      'title': 'Hello FlutterFire!',
      'body': 'This notification (#$_messageCount) was created via FCM!',
    },
  });
}


/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

// It is assumed that all messages contain a data field with the key 'type'
Future<void> setupInteractedMessage() async {
  // Get any messages which caused the application to open from
  // a terminated state.
  RemoteMessage? initialMessage =
  await FirebaseMessaging.instance.getInitialMessage();

  // If the message also contains a data property with a "type" of "chat",
  // navigate to a chat screen
  if (initialMessage != null) {
    _handleMessage(initialMessage);
  }

  // Also handle any interaction when the app is in the background via a
  // Stream listener
  FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
}

void _handleMessage(RemoteMessage message) {
  print('REMOTE MESSAGE :: ' + message.data.toString());
  // Get.toNamed(MyRouter.aboutUs);
  if (message.data['type'] == 'chat') {
    // Navigator.pushNamed(context, '/chat',
    //   arguments: ChatterScreen(),
    // );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCAjlemWzDiNsXUIwFV9TCqSV4ORBMpt-s',
      appId: '1:962094105233:android:f3b11ccd1743d76fe93530',
      messagingSenderId: '962094105233',
      projectId: 'dinelah-fae97',
    ),
  );

  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  await GetStorage.init(dbName);
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // await NotificationService().init();
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  var isChat = false;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
    print('FOREGROUND DAYA :: ' + message.toString());

    return;
  });

  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');
    SharedPreferences pref = await SharedPreferences.getInstance();
    isChat = pref.getBool('chat')??false;
    if (message.notification != null && !isChat) {
      showOverlayNotification((context) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: SafeArea(
                  child: ListTile(
                    onTap: (){
                      int _messageCount = 0;
                      RxBool screenType = false.obs;
                      RxString screenName = ''.obs;
                      DeliveryDetail receiverDetails;
                String? receiverType;
                String? orderId;
                // print('REMOTE MESSAGE :: ${message.data.toString()}');
                // print('REMOTE MESSAGE :: ${json.decode(message.data['payload'])['receiver_details']['id'].toString()}');
                screenType.value = true;
                receiverDetails = DeliveryDetail(
                  id: json.decode(message.data['payload'])['receiver_details']['id'].toString(),
                  name: json.decode(message.data['payload'])['receiver_details']['name'].toString(),
                  phone: json.decode(message.data['payload'])['receiver_details']['phone'].toString(),
                  address: json.decode(message.data['payload'])['receiver_details']['address'].toString(),
                );
                receiverType = json.decode(message.data['payload'])['receiver_type'].toString();
                orderId = json.decode(message.data['payload'])['order_id'].toString();
                screenName.value =
                    json.decode(message.data['payload'])['screen_type'].toString();

                // print('RECEIVER DETAILS :: '+jsonEncode(receiverDetails));
                // print('RECEIVER TYPE :: '+receiverType.toString());
                // print('RECEIVER ORDER ID :: '+orderId.toString());

                if (json.decode(message.data['payload'])['screen_type'].toString() ==
                    'chat') {
                  Get.to(const ChatterScreen(),
                      arguments: [receiverDetails, receiverType, orderId]);
                  // Navigator.pushNamed(context, '/chat',
                  //   arguments: ChatterScreen(),
                  // );
                } else if (json.decode(message.data['payload'])['screen_type'].toString() ==
                    'order_detail') {
                  final _screen =
                  IntroDb.isFirstTimeOpen() ? const IntroScreen() : const Wrapper();

                  Get.offAll(_screen);
                  Get.to(OrderDetailsScreen(orderId: int.parse(orderId)), arguments: [orderId]);
                } else {
                  Get.to(const NotificationScreen());
                }
              },
              leading: SizedBox.fromSize(
                  size: const Size(40, 40),
                  child: ClipOval(child: Image.asset('assets/icons/app_icon_seller.png'))),
              title: Text(message.notification!.title.toString()),
              subtitle: Text(message.notification!.body.toString()),
              trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    OverlaySupportEntry.of(context)!.dismiss();
                  }),
            ),
          ),
        );
      }, duration: Duration(milliseconds: 5000));

      // print('Message also contained a notification: ${message.notification}');
    }
  });

  print('User granted permission: ${settings.authorizationStatus}');

  if (!kIsWeb) {
    channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      // 'This channel is used for important notifications.', // description
      importance: Importance.high,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _firebaseMessagingForegroundHandler();
    return OverlaySupport.global(
      child: GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        initialBinding: GlobalBindings(),
        home: const Splash(),
        theme: theme(),
        builder: (context, widget) {
          EasyLoading.init();
         return ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(
                300,
                name: MOBILE,
                scaleFactor: .90,
              ),
              ResponsiveBreakpoint.resize(
                450,
                name: MOBILE,
              ),
              ResponsiveBreakpoint.autoScale(
                800,
                name: TABLET,
                scaleFactor: 1.10,
              ),
              ResponsiveBreakpoint.autoScale(
                1000,
                name: TABLET,
                scaleFactor: 1.25,
              ),
              ResponsiveBreakpoint.resize(
                1200,
                name: DESKTOP,
                scaleFactor: 1.40,
              ),
            ],
          );
        }),
    );
  }
}
