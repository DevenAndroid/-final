import 'dart:convert';

import 'package:dinelah_vendor/data/local/intro_db.dart';
import 'package:dinelah_vendor/model/model_order_details.dart';
import 'package:dinelah_vendor/screens/chat_screens/chat_Screen.dart';
import 'package:dinelah_vendor/screens/notification/notification.dart';
import 'package:dinelah_vendor/screens/order/order_details.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/screens/intro/intro.dart';
import '../screens/wrapper.dart';

// Define a top-level named handler which background/terminated messages will
/// call.
///
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

// Crude counter to make messages unique
int _messageCount = 0;
RxBool screenType = false.obs;
RxString screenName = ''.obs;
late DeliveryDetail receiverDetails;
String? receiverType;
String? orderId;

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
//
// /// Renders the example application.
// class Application extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _Application();
// }

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
  print('REMOTE MESSAGE :: ${message.data.toString()}');
  print('REMOTE MESSAGE :: DEVEN Testing');
  screenType.value = true;
  receiverDetails = DeliveryDetail(
    id: json
        .decode(message.data['payload'])['receiver_details']['id']
        .toString(),
    name: json
        .decode(message.data['payload'])['receiver_details']['name']
        .toString(),
    phone: json
        .decode(message.data['payload'])['receiver_details']['phone']
        .toString(),
    address: json
        .decode(message.data['payload'])['receiver_details']['address']
        .toString(),
  );
  receiverType =
      json.decode(message.data['payload'])['receiver_type'].toString();
  orderId = json.decode(message.data['payload'])['order_id'].toString();
  screenName.value =
      json.decode(message.data['payload'])['screen_type'].toString();

  // print('RECEIVER DETAILS :: '+jsonEncode(receiverDetails));
  // print('RECEIVER TYPE :: '+receiverType.toString());
  // print('RECEIVER ORDER ID :: '+orderId.toString());

  final _screen =
      IntroDb.isFirstTimeOpen() ? const IntroScreen() : const Wrapper();
  if (json.decode(message.data['payload'])['screen_type'].toString() ==
      'chat') {
    Get.offAll(_screen);
    Get.to(ChatterScreen(),
        arguments: [receiverDetails, receiverType, orderId]);
    // Navigator.pushNamed(context, '/chat',
    //   arguments: ChatterScreen(),
    // );
  } else if (json.decode(message.data['payload'])['screen_type'].toString() ==
      'order_detail') {
    Get.offAll(_screen);
    Get.to(OrderDetailsScreen(orderId: int.parse(orderId!)), arguments: [orderId]);

    // print('ORDER DETAILS OF BACKGROUND :: '+jsonEncode(receiverDetails));
    // print('ORDER DETAILS OF BACKGROUND 11:: '+receiverType.toString());
    // print('ORDER DETAILS OF BACKGROUND 11:: '+orderId.toString());

  } else if (json.decode(message.data['payload'])['screen_type'].toString() ==
      'dashboard') {
    Get.offAll(_screen);
  } else {
    Get.offAll(_screen);
    Get.to(NotificationScreen());
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<void> setIsChat(isChat) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('chat', isChat);
  }

  @override
  void initState() {
    super.initState();
    setupInteractedMessage();
    noti();
    setIsChat(false);

    if (SchedulerBinding.instance != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        debugPrint("First Time? :${IntroDb.isFirstTimeOpen()}");
        final _screen =
            IntroDb.isFirstTimeOpen() ? const IntroScreen() : const Wrapper();

        if (timeStamp.inSeconds < 3) {
          Future.delayed(Duration(seconds: 3 - timeStamp.inSeconds)).then((_) {
            if (!screenType.value) {
              if (screenName.value != 'chat') {
                Get.off(() => _screen);
              }
            }
          });
        } else {
          if (!screenType.value) {
            if (screenName.value != 'chat') {
              Get.off(() => _screen);
            }
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Image.asset(
                'assets/images/img_welcome.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.78,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/appLogo.png",
                  width: MediaQuery.of(context).size.width * 0.040,
                  height: MediaQuery.of(context).size.height*0.080,
                  //fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          // addHeight(screenSize.width*.20)
        ],
      ),
    );
  }

  Future<void> noti() async {
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
    // Set the background messaging handler early on, as a named top-level function
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      print('FOREGROUND DAYA :: ' + message.toString());

      return;
    });

    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print('Got a message whilst in the foreground!');
    //   print('Message data: ${message.data}');
    //
    //   if (message.notification != null) {
    //     // showOverlayNotification((context) {
    //     //   return Card(
    //     //     shape: RoundedRectangleBorder(
    //     //       borderRadius: BorderRadius.circular(10.0),
    //     //     ),
    //     //     margin: const EdgeInsets.symmetric(horizontal: 4),
    //     //     child: SafeArea(
    //     //       child: ListTile(
    //     //         leading: SizedBox.fromSize(
    //     //             size: const Size(40, 40),
    //     //             child: ClipOval(child: Image.asset(AppAssets.logInLogo))),
    //     //         title: Text(message.notification!.title.toString()),
    //     //         subtitle: Text(message.notification!.body.toString()),
    //     //         trailing: IconButton(
    //     //             icon: Icon(Icons.close),
    //     //             onPressed: () {
    //     //               OverlaySupportEntry.of(context)!.dismiss();
    //     //             }),
    //     //       ),
    //     //     ),
    //     //   );
    //     // }, duration: Duration(milliseconds: 4000));
    //
    //     print('Message also contained a notification: ${message.notification}');
    //   }
    // });

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
  }
}
