import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/constraints/colors.dart';
import 'package:dinelah_vendor/controller/auth_controller.dart';
import 'package:dinelah_vendor/screens/intro/widgets/intro_widget.dart';
import 'package:dinelah_vendor/screens/wrapper.dart';

import '../../data/repository/intro_repository.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  bool _gettingStarted = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );

    tabController.addListener(() {
      if (tabController.index == 2) {
        _gettingStarted = true;
      } else {
        _gettingStarted = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            controller: tabController,
            children: List.generate(
              introList.length,
              (index) => IntroItemWidget(intro: introList[index]),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Visibility(
              visible: _gettingStarted,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(() => const Wrapper());
                    },
                    child: const Text('Get Started!'),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: TabPageSelector(
                controller: tabController,
                selectedColor: colorPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
