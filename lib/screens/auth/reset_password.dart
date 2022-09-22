import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import '/constraints/colors.dart';
import '/constraints/styles.dart';
import '/controller/reset_password_controller.dart';
import '/screens/auth/otp_verification.dart';
import '/utils/snackbar.dart';

import '../../constraints/images.dart';

class ResetPasswordScreen extends GetView<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading,
        child: Scaffold(
          backgroundColor: colorPrimary,
          body: Form(
            key: controller.resetPasswordFormKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -15,
                          top: -5,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -15,
                          top: -15,
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                        ),
                        Image.asset(
                          iconLock,
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Enter your email address and we will send you a link to reset your password.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 40),
                    TextFormField(
                      controller: controller.resetPasswordEmailController,
                      cursorColor: Colors.white,
                      decoration: inputDecoration.copyWith(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        hintText: 'Enter your Email',
                        errorStyle: const TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Email address required"),
                        EmailValidator(errorText: "Enter valid email address")
                      ])
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _resetPassword,
                        child: const Text(
                          'SEND',
                          style: TextStyle(
                            color: colorPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
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

  _resetPassword() async {
    if (controller.resetPasswordFormKey.currentState?.validate() == true) {
      controller.resetPasswordFormKey.currentState?.save();
      controller.sendResetPasswordEmail().then((value) {
        if (value?.status == "success") {
          Get.to(() => const OTPVerification());
        } else {
          snack('Error', '${value?.message}', Icons.error);
        }
      });
    }
  }
}
