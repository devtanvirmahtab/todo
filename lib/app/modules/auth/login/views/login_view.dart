import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo/app/core/constants/app_text_style.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/widgets/app_form_field.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: text16Style(),
            ),
            AppFormField(
              controller: controller.emailController,
              hintText: "Enter Email",
            ),
            AppFormField(
              controller: controller.passwordController,
              hintText: "Enter Password",
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: mainPaddingAll,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () => controller.loginUser(
                  controller.emailController.text,
                  controller.passwordController.text,
                ),
                child: Obx(() {
                  return Center(
                    child: controller.isLoading.value
                        ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                        : Text(
                      "Login",
                      style: text16Style(),
                    ),
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: text14Style(),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: Text(
                    "Register",
                    style: text14Style(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
