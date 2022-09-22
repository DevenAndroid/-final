import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import '/constraints/colors.dart';
import '/constraints/styles.dart';
import '/controller/reset_password_controller.dart';
import '/screens/wrapper.dart';
import '/utils/snackbar.dart';

class OTPVerification extends GetView<ResetPasswordController> {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Verification'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: controller.otpFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Enter Your OTP Code',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: controller.code1,
                          decoration: inputDecorationFilled.copyWith(
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFFe9f0fe),
                            counter: const SizedBox(),
                          ),
                          focusNode: controller.focusNode1,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          onChanged: (number) {
                            if (number.length == 1) {
                              controller.focusNode1.unfocus();
                              controller.focusNode2.requestFocus();
                            }
                          },
                          validator: (number) {
                            if (number?.isNotEmpty == false) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          controller: controller.code2,
                          decoration: inputDecorationFilled.copyWith(
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFFe9f0fe),
                            counter: const SizedBox(),
                          ),
                          focusNode: controller.focusNode2,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          onChanged: (number) {
                            if (number.length == 1) {
                              controller.focusNode2.unfocus();
                              controller.focusNode3.requestFocus();
                            }
                          },
                          validator: (number) {
                            if (number?.isNotEmpty == false) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          controller: controller.code3,
                          decoration: inputDecorationFilled.copyWith(
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFFe9f0fe),
                            counter: const SizedBox(),
                          ),
                          focusNode: controller.focusNode3,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          onChanged: (number) {
                            if (number.length == 1) {
                              controller.focusNode3.unfocus();
                              controller.focusNode4.requestFocus();
                            }
                          },
                          validator: (number) {
                            if (number?.isNotEmpty == false) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          controller: controller.code4,
                          decoration: inputDecorationFilled.copyWith(
                            isDense: true,
                            filled: true,
                            fillColor: const Color(0xFFe9f0fe),
                            counter: const SizedBox(),
                          ),
                          focusNode: controller.focusNode4,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          onChanged: (number) {
                            if (number.length == 1) {
                              controller.focusNode4.unfocus();
                            }
                          },
                          validator: (number) {
                            if (number?.isNotEmpty == false) {
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: InkWell(
                          onTap: _verifyOTPCode,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: colorPrimary,
                            ),
                            padding:
                                const EdgeInsets.only(bottom: 1.5, top: 1.5),
                            child: const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () async {
                      try {
                        snack('Please wait.', 'Resending OTP code...',
                            Icons.error);
                        final response =
                            await controller.sendResetPasswordEmail();
                        if (response?.status == "success") {
                          snack('Message', '${response?.message}',
                              Icons.message);
                        } else {
                          snack('Error', '${response?.message}', Icons.error);
                        }
                      } catch (e) {
                        snack('Error', e.toString().substring(0,200), Icons.error);
                      }
                    },
                    child: const Text('Resend OTP'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Create New Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.passwordController,
                    focusNode: controller.newPassword,
                    decoration: inputDecoration.copyWith(
                      filled: true,
                      labelText: 'New Password',
                      fillColor: const Color(0xFFe9f0fe),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: controller.confirmPasswordController,
                    focusNode: controller.confirmPassword,
                    decoration: inputDecoration.copyWith(
                      filled: true,
                      labelText: 'Confirm New Password',
                      fillColor: const Color(0xFFe9f0fe),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required!";
                      } else if (value != controller.passwordController.text) {
                        return "Password does not match!";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _verifyOTPCode,
                      style: ElevatedButton.styleFrom(
                        primary: colorPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'UPDATE',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _verifyOTPCode() {
    if (controller.otpFormKey.currentState?.validate() == true) {
      controller.otpFormKey.currentState?.save();
      controller.resetPassword().then((value) {
        if (value?.status == 'success') {
          controller.code1.text = "0";
          controller.code2.text = "0";
          controller.code3.text = "0";
          controller.code4.text = "0";
          controller.newPasswordController.text = "0";
          controller.confirmPasswordController.text = "0";
          Get.offAll(() => const Wrapper());
        } else {
          snack('Failed!', '${value?.message}', Icons.error);
        }
      });
    }
    // controller.verifyOTPCode();
  }
}
