import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:dinelah_vendor/constraints/colors.dart';
import 'package:dinelah_vendor/controller/auth_controller.dart';
import 'package:dinelah_vendor/screens/auth/reset_password.dart';

import '../../constraints/images.dart';
import '../../constraints/styles.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading,
        child: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Form(
            key: controller.authFormKey,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/img_screen_bg.png'), fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      right: 10,
                      bottom: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -70,
                              right: 0,
                              left: 0,
                              child: Center(
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  padding: const EdgeInsets.all(4),
                                  child: ClipOval(
                                    child: Image.asset('assets/images/app_icon.png'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                const SizedBox(height: 50),
                                Text(
                                  'LOG IN',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: colorPrimary,
                                      ),
                                ),
                                const Text('Login to your account'),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.usernameController,
                                  decoration: inputDecoration.copyWith(
                                    filled: true,
                                    labelText: 'Email',
                                    prefixIcon: const Icon(Icons.email),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "This field is required!";
                                    } else if (!GetUtils.isEmail(value)) {
                                      return "Please enter a valid email";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.passwordController,
                                  decoration: inputDecoration.copyWith(
                                    filled: true,
                                    labelText: 'Password',
                                    prefixIcon: const Icon(Icons.lock),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        controller.setIsPasswordVisible();
                                      },
                                      icon: Icon(
                                        controller.isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                  ),
                                  obscureText: !controller.isPasswordVisible,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () => Get.to(
                                      () => const ResetPasswordScreen(),
                                    ),
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: colorPrimary.withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: _login,
                                    child: const Text('LOG IN'),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _login() async {
    if (controller.authFormKey.currentState?.validate() == true) {
      controller.authFormKey.currentState?.save();

      final _response = await controller.login(
        controller.usernameController.text.toString(),
        controller.passwordController.text.toString(),
      );
      debugPrint("Login Result: $_response");
    }
  }
}
