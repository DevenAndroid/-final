import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/drawer_controller.dart';
import 'package:dinelah_vendor/screens/product/products.dart';
import '../home/home.dart';
import '../notification/notification.dart';
import '../order/orders.dart';
import '../settings/settings.dart';
import '../drawer/drawer.dart';
import 'widgets/nav_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final commonDrawer = Get.put(CommonDrawerController());
  int index = 2;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void onTapIndex(int currentIndex) {
    setState(() {
      index = currentIndex;
    });
  }

  final List<Widget> _screens = [
    ProductsScreen(),
    NotificationScreen(),
    HomeScreen(),
    OrderScreen(),
    SettingScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CommonDrawer(),
      ),
      body: IndexedStack(
        index: index,
        children: List.generate(_screens.length, (index) => _screens[index]),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.only(bottom: 10),
        height: kBottomNavigationBarHeight + 20,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavButtonWidget(
              onTap: () {
                onTapIndex(0);
              },
              icon: PhosphorIcons.package,
              text: 'Product',
              isSelected: index == 0,
            ),
            BottomNavButtonWidget(
              onTap: () {
                onTapIndex(1);
              },
              icon: Icons.notifications,
              text: 'Notification',
              isSelected: index == 1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: BottomNavCenterButtonWidget(
                  onTap: () {
                    onTapIndex(2);
                  },
                  icon: Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/app/app_icon.png"))),
                  )),
            ),
            BottomNavButtonWidget(
              onTap: () {
                onTapIndex(3);
              },
              icon: Icons.list_alt,
              text: 'Orders',
              isSelected: index == 3,
            ),
            BottomNavButtonWidget(
              onTap: () {
                onTapIndex(4);
              },
              icon: Icons.settings,
              text: 'Settings',
              isSelected: index == 4,
            ),
          ],
        ),
      ),
    );
  }
}
