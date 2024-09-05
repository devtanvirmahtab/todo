import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo/app/core/constants/app_colors.dart';
import 'package:todo/app/core/constants/app_constants.dart';
import 'package:todo/app/core/constants/app_text_style.dart';

import '../../../../core/utils/helpers.dart';
import '../../../../core/widgets/app_form_field.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
                    style: text16Style(),
                  ),
                  Stack(
                    children: [
                      Obx(() {
                        return CircleAvatar(
                          radius: 55,
                          backgroundImage:
                          getProfileImage(controller.imagePath.value, ""),
                        );
                      }),
                      Positioned(
                        bottom: 10,
                        right: 0,
                        child: GestureDetector(
                            onTap: () {
                              controller.pickImage();
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              padding: mainPaddingAll * 0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColor.white,
                              ),
                              child: const Icon(
                                size: 20,
                                Icons.camera_alt,
                                color: AppColor.grey,
                              ),
                            )),
                      )
                    ],
                  ),
                  AppFormField(
                    controller: controller.userNameController,
                    hintText: "Enter Name",
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
                      onTap: () {
                        controller.registerUser(
                          controller.userNameController.text,
                          controller.emailController.text,
                          controller.passwordController.text,
                          File(controller.imagePath.value),
                        );
                      },
                      child: Center(
                        child: Obx(() {
                          return controller.isLoading.value
                              ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                              : Text(
                            "Register",
                            style: text16Style(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: text14Style(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Login",
                          style: text14Style(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
