import 'package:flutter/material.dart';

class AppColor {
  static const int _primaryColorValue = 0xFF228BC8;
  static const MaterialColor colorPrimarySwatch = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFE9F3FA),
      100: Color(0xFFBADBEE),
      200: Color(0xFF99CAE6),
      300: Color(0xFF6BB1DA),
      400: Color(0xFF4EA2D3),
      500: Color(_primaryColorValue),
      600: Color(0xFF1F7EB6),
      700: Color(0xFF18638E),
      800: Color(0xFF134C6E),
      900: Color(0xFF0E3A54),
    },
  );

  static const backgroundColor = Color(0xFFFFFFFF);
  static const bannerColor = Color(0xFFFFE5E5);

  // static const primaryColor = Color(0xFFF6576D);
  static const primaryColor = Color(0xFF009245);
  static const profileStepBackgroundColor = Color(0xffFCFDFC);
  static const greenDarkColor = Color(0xFF003D1D);
  static const greenLiteColor = Color(0xFFE6F4EC);
  static const secondaryColor = Color(0xFF5ACDFF);
  static const secondaryColor2 = Color(0xFFD8EEFF);
  static const purpleColor = Color(0xFF90278E);
  static const transparent = Color(0x00bd4efe);
  static const booksDetailsBackground = Color(0xffEFF4F9);
  static const appDefaultBackground = Color(0xffF4F5FC);
  static const circleBackgroundColor = Color(0xffDDBCDC);
  static const circleValueColor = Color(0xff90278E);
  static const richTextColor = Color(0xff33B9C0);
  static const comicBackgroundColor = Color(0xFFD1D5DB);
  static const textGrey = Color(0xff878787);
  static const yogurtColor = Color(0xffFAD9D9);
  static const tabBorderColor = Color(0xffEBEBEB);

  //aurnab
  static const darkPurple = Color(0xFF12101F);

  static const purple = Color(0xFF5C3BFF);
  static const dotIndicatorColor = Color(0xFF0042E0);
  static const black = Color(0xFF091C32);
  static const blackPure = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const gray = Color(0xFF52596E);
  static const liteGray = Color(0xFFA1A2A3);
  static const liteGrayStepLine = Color(0xFF8FAABB);
  static const liteStepLine = Color(0xFFE2F0FD);
  static const inputColor = Color(0x8052596E); //alpha 50%
  static const wrong = Color(0xFFC20707);
  static const green = Color(0xFF34A853);
  static const liteGreen = Color(0xFF56C674);
  static const red = Color(0xFFFF1F00);
  static const darkRed = Color(0xFF4A154B);
  static const drawerBackground = Color(0xffb0d2ac);
  static const orangeLite = Color(0xFFFE914E);
  static const activeSwitch = Color(0xFF08ABB3);

  static const headerTextColor = Color(0xFF172B4D);
  static const appBarTextColor = Color(0xFF000000);
  static const underlineColor = Color(0xFFCCCCCC);
  static const textColorBlue = Color(0xFF2E38B6);
  static const fieldColor = Color(0xFF846AE3);
  static const textColor = Color(0xFF8C8385);
  static const questionListBackgroundColor = Color(0xFFF2F7F6);
  static const textColors = Color(0XFF595959);

  static const listBackgroundColor = Color(0xFFF7F7F7);
  static const listStrokeColor = Color(0xFFDDDDDD);

  /// [pie chart] color
  static const problemSolvingColor = Color(0xff9779FF);
  static const analyticalThinkingColor = Color(0xff7B60FF);
  static const cardBackgroundColor2 = Color(0xffE9F3FA);
  static const communicationSkillsColor = Color(0xff5C3BFF);

  static const shimmerBaseColor = Color(0xFFD9D9D9);
  static const shimmerHighlightColor = Color(0xFFF6F6F6);

  static const buttonBlack = Color(0xff353237);
  static const likeWhite = Color(0xffEEEEEE);
  static const grey = Color(0xFF52596E);

  static const infoColor = Color(0xFF33b5e5);
  static const successColor = Color(0xFF00C851);
  static const errorColor = Color(0xFFff4444);

  static const borderGrayColor = Color(0xFFBCBCBC);
  static const cardBackgroundColor = Color(0xFFFFFFFF);
  static const shadowColor = Color(0xFFBCBCBC);

  static const disableColor = Color(0xFFEEEEEE);

  static const gradientLeftColor = secondaryColor2;
  static const gradientRightColor = Color(0xFFFFFFFF);

  //tridip
  static const regScreenBackgroundColor = Color(0xffEFF2FF);
  static const teacherRegScreenBackgroundColor = Color(0xffF9F1F7);
  static const parentRegScreenBackgroundColor = Color(0xffFFF7E2);
  static const profileClassBackColor = Color(0xff003EB7);
  static const profileSchoolBackColor = Color(0xff9F580A);
  static const profileBloodBackColor = Color(0xffED1942);
  static const profileParentBackColor = Color(0xff9747FF);
  static const userprofileOptionBackColor = Color(0xffF4F5FC);

  //tanvir
  static const chatBorderColor = Color(0xffE3E5E5);
  static const goldenPurpleColor = Color(0xffEFDBFF);
  static const skyBlueColor = Color(0xffCCE6FF);
  static const deepBlueColor = Color(0xff1D3999);
  static const greenLiteColor2 = Color(0xff08BD80);

  // Gradient
  static const bookGradientStart = Color(0xFFC7E3FF);
  static const bookGradientEnd = Color(0xFFFEFFDC);
  static final backgroundGradient = LinearGradient(
    colors: [
      const Color(0xffFFFFFF),
      // ignore: prefer_const_constructors
      Color(0xffB0DDC5).withOpacity(0.6),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const baseGradient = LinearGradient(
    colors: [
      gradientLeftColor,
      gradientRightColor,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const drawerBackgroundGradientLeftColor = secondaryColor2;
  static const drawerBackgroundGradientRightColor = Color(0xFFFFFFFF);

  static const drawerBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColor.drawerBackgroundGradientLeftColor,
      AppColor.drawerBackgroundGradientRightColor,
    ],
    stops: [0.3, 0.8],
  );

  // Added by Reza
  static const boiBinimoyBGColor = Color(0xFFE8ECF5);
  static const gray500Color = Color(0xFF6B7280);
  static const profileVerifiedBG = Color(0xFFDEF7EC);
  static const profileVerifiedCheckColor = Color(0xFF0E9F6E);
  static const neutralColor = Color(0xFFE9ECEF);
  static const baseColor = Color(0xFF389E0D);
  static const primary700 = Color(0xFF1A56DB);
  static const blueBackground = Color(0xFF004CFF);
  static const orangeBackground = Color(0xFFF2A602);
}
