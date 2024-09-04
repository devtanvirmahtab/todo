import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/core/constants/app_constants.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';
import '../utils/app_helper.dart';

class AppWidgets {
  Widget gapH(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget gapW(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget gapW4() {
    return const SizedBox(
      width: 4,
    );
  }

  Widget gapW8() {
    return const SizedBox(
      width: 8,
    );
  }

  Widget gapH8() {
    return const SizedBox(
      height: 8,
    );
  }

  Widget gapH16() {
    return const SizedBox(
      height: 16,
    );
  }

  Widget gapH20() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget gapW16() {
    return const SizedBox(
      width: 16,
    );
  }

  Widget gapW12() {
    return const SizedBox(
      width: 12,
    );
  }

  Widget gapH12() {
    return const SizedBox(
      height: 12,
    );
  }

  Widget gapW24() {
    return const SizedBox(
      width: 24,
    );
  }

  Widget gapH24() {
    return const SizedBox(
      height: 24,
    );
  }

  Widget changeLanguage({
    bool fullName = false,
  }) {
    String locale = Get.locale?.languageCode ?? "en";
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.updateLocale(const Locale("en"));
            locale = "en";
            AppHelper().saveLocale("en");
          },
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: locale == "en" ? AppColor.primaryColor : null,
              border: Border.all(
                color: AppColor.primaryColor,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Center(
                child: Text(
                  fullName ? "English" : "EN",
                  style: locale == "en"
                      ? text14Style(isWhiteColor: true)
                      : text14Style(isPrimaryColor: true),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.updateLocale(const Locale("bn"));
            locale = "bn";
            AppHelper().saveLocale("bn");
          },
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: locale == "bn" ? AppColor.primaryColor : null,
              border: Border.all(
                color: AppColor.primaryColor,
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 12),
              child: Center(
                child: Text(
                  fullName ? "বাংলা" : "বাং",
                  style: locale == "bn"
                      ? text14Style(isWhiteColor: true)
                      : text14Style(isPrimaryColor: true),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  SnackbarController getSnackBar(
      {title = "Title",
        message = " Some message",
        int waitingTime = 2,
        int animationDuration = 500,
        snackPosition = SnackPosition.TOP,
        Color backgroundColor = AppColor.primaryColor,
        double backgroundColorOpacity = .7,
        colorText = AppColor.white}) {
    return Get.snackbar(title, message,
        snackPosition: snackPosition,
        duration: Duration(seconds: waitingTime),
        animationDuration: Duration(milliseconds: animationDuration),
        backgroundColor: backgroundColor.withOpacity(backgroundColorOpacity),
        colorText: colorText);
  }



  Widget noData({color = Colors.redAccent}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: mainPaddingH,
          horizontal: mainPaddingW,
        ),
        child: Text(
          'No Data Found',
          style: text20Style(
            fontWeight: FontWeight.w600,
            color: color,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }



  // readMoreText(text, {trimLines = 3}) {
  //   return ReadMoreText(
  //     text,
  //     trimLines: trimLines,
  //     colorClickableText: AppColor.blackPure,
  //     trimMode: TrimMode.ClipWordEllipse,
  //     trimCollapsedText: seeMore.tr,
  //     trimExpandedText: showLess.tr,
  //     moreStyle: textHeaderStyle(
  //       fontSize: fontSize14,
  //       lineHeight: 1.2,
  //       // fontWeight: FontWeight.w600,
  //     ),
  //     lessStyle: textHeaderStyle(
  //       fontSize: fontSize14,
  //       lineHeight: 1.2,
  //       // fontWeight: FontWeight.w600,
  //     ),
  //     preDataTextStyle: textRegularStyle(
  //       fontSize: fontSize14,
  //     ),
  //     style: textRegularStyle(
  //       fontSize: fontSize14,
  //       lineHeight: 1.2,
  //     ),
  //     callback: (val) {},
  //   );
  // }


  //Todo Bottom Sheet will change next:
  myBottomSheet(context, child,
      {double heightRatio = 0.55, bool isDismissible = false}) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isDismissible: isDismissible,

      // scrollControlDisabledMaxHeightRatio: heightRatio,
      // constraints: BoxConstraints(
      //   minHeight: 200,
      //   maxHeight: height
      // ),
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              // padding: EdgeInsets.all(12),
              padding: const EdgeInsets.only(
                top: 12,
                left: 16,
                right: 16,
              ),
              height: Get.height * heightRatio,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: child,
            ),
          ),
        );
      },
    );
  }

  appDivider(
      {color = AppColor.white,
        isColorBlack = false,
        double thickness = 1,
        double height = 20}) {
    return Divider(
      height: height,
      thickness: thickness,
      color: isColorBlack ? AppColor.black.withOpacity(0.5) : color,
    );
  }

  // Future<void> downloadPdf(Uri uri) async {
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri, mode: LaunchMode.externalApplication);
  //   } else {
  //     throw "Could not launch $uri";
  //   }
  // }

  // showStatusDialog({
  //   required headTitle,
  //   barrierDismissible = true,
  //   required VoidCallback yesTap,
  //   required VoidCallback noTap,
  // }) {
  //   if (Get.context == null) {
  //     return null;
  //   }
  //   return showDialog(
  //     context: Get.context!,
  //     barrierDismissible: barrierDismissible,
  //     builder: (context) => AlertDialog(
  //       backgroundColor: AppColor.white,
  //       surfaceTintColor: AppColor.white,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(15),
  //       ),
  //       title: null,
  //       content: Container(
  //         padding: const EdgeInsets.symmetric(
  //           vertical: 20,
  //           horizontal: 20,
  //         ),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             myWidgets.gapH24(),
  //             Text(
  //               headTitle,
  //               textAlign: TextAlign.center,
  //               style: textRegularStyle(
  //                 fontSize: 24,
  //                 isColorPrimary: true,
  //               ),
  //             ),
  //             myWidgets.gapH12(),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 AppButton(
  //                   text: yesText.tr,
  //                   onPressed: yesTap,
  //                   backgroundColor: AppColor.green,
  //                 ),
  //                 myWidgets.gapW8(),
  //                 AppButton(
  //                   text: noText.tr,
  //                   onPressed: noTap,
  //                   backgroundColor: AppColor.red,
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  String naming(String name, String nameEn) {
    if (Get.locale?.languageCode == "bn") {
      if (name != "") {
        return name;
      } else {
        return name;
      }
    } else {
      if (nameEn != "") {
        return nameEn;
      } else {
        return name;
      }
    }
  }

  // void launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // noInternetDialog() {
  //   return showDialog(
  //       context: Get.context!,
  //       barrierDismissible: false,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text(
  //             noInternetMsg.tr,
  //             textAlign: TextAlign.center,
  //             style: text18Style(fontSize: 24),
  //           ),
  //           content: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Lottie.asset(
  //                 'assets/lottie/no_internet.json',
  //                 // Replace with your Lottie animation file path
  //                 width: 200,
  //                 height: 200,
  //               ),
  //               const SizedBox(height: 16),
  //               Text(
  //                 checkInternetConnectionMsg.tr,
  //                 textAlign: TextAlign.center,
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }
}