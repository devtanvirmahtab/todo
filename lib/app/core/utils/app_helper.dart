import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../constants/app_constants.dart';

class AppHelper {
  final storage = const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    try {
      await storage.write(key: "token", value: token).whenComplete(() {
        logger.d('saveToken:  Saved');
      });
    } catch (e) {
      logger.i("Exception: ");
    }
  }

  Future<void> saveIsShowOnboarding(String onboarding) async {
    try {
      await storage
          .write(key: "onboarding", value: onboarding)
          .whenComplete(() {
        logger.d('saveOnboarding:  Saved');
      });
    } catch (e) {
      logger.i("Exception: ");
    }
  }

  Future<String?> getIsShowOnboarding() async {
    try {
      final getOnboarding = await storage.read(key: "onboarding");
      return getOnboarding;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  Future<void> saveTokenTime(String token) async {
    try {
      await storage.write(key: "tokenTime", value: token).whenComplete(() {
        logger.d('tokenTime:  Saved');
      });
    } catch (e) {
      logger.i("Exception: ");
    }
  }

  Future<String?> getToken() async {
    try {
      final accessToken = await storage.read(key: "token");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  Future<String?> getTokenTime() async {
    try {
      final accessToken = await storage.read(key: "tokenTime");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  //All Token:

  //After Login

  Future<void> saveLogInAccessToken(String token) async {
    await storage
        .write(key: "logInAccessToken", value: token)
        .whenComplete(() => logger.d('saveToken:  logInAccessToken'));
  }

  Future<void> saveLogInAccessTokenTime(String tokenTime) async {
    await storage
        .write(key: "logInAccessTokenTime", value: tokenTime)
        .whenComplete(() => logger.d('saveToken:  logInAccessTokenTime'));
  }

  Future<void> saveRefreshToken(String token) async {
    await storage
        .write(key: "refreshToken", value: token)
        .whenComplete(() => logger.d('refreshToken:  refreshToken'));
  }

  //

  Future<void> saveIdToken(String token) async {
    await storage
        .write(key: "idToken", value: token)
        .whenComplete(() => logger.d('saveIdToken:  Saved'));
  }

  Future<String?> getIdToken() async {
    try {
      final accessToken = await storage.read(key: "idToken");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  Future<String?> getLogInAccessToken() async {
    try {
      final accessToken = await storage.read(key: "logInAccessToken");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  Future<String?> getLogInAccessTokenTime() async {
    try {
      final accessToken = await storage.read(key: "logInAccessTokenTime");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  Future<String?> getRefreshToken() async {
    try {
      final accessToken = await storage.read(key: "refreshToken");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  saveInitialAppAccess(String token) async {
    await storage
        .write(key: "initial_app_access", value: token)
        .whenComplete(() => logger.d('saveInitialAppAccess:  Saved'));
  }

  Future<String?> getInitialAppAccess() async {
    try {
      final accessToken = await storage.read(key: "initial_app_access");
      return accessToken;
    } on PlatformException {
      await storage.deleteAll();
    }
    return null;
  }

  saveLocale(String locale) async {
    await storage
        .write(key: "locale", value: locale)
        .whenComplete(() => debugPrint('saveLocale:  Locale Saved'));
  }

  saveTotalQuizTime(String quizTime) async {
    await storage
        .write(key: "quiz_time", value: quizTime)
        .whenComplete(() => debugPrint('quiz_time:  quiz_time Saved'));
  }

  Future<String?> getTotalQuizTime() async {
    return await storage.read(key: "quiz_time");
  }

  Future<String?> getLocale() async {
    return await storage.read(key: "locale");
  }

  deleteToken() async {
    logger.i("Deleted");
    await storage.delete(key: "token");
  }

  deleteTokenTime() async {
    logger.i("Deleted");
    await storage.delete(key: "tokenTime");
  }

  deleteLogInAccessToken() async {
    logger.i("Deleted");
    await storage.delete(key: "logInAccessToken");
  }

  deleteLogInAccessTokenTime() async {
    logger.i("Deleted");
    await storage.delete(key: "logInAccessTokenTime");
  }

  deleteIdToken() async {
    logger.i("idToken Delete");
    await storage.delete(key: "idToken");
  }

  deleteUserToken() async {
    logger.i("Deleted");
    await storage.delete(key: "userToken");
  }

  hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.focusedChild?.unfocus();
    }
  }

  unFocus() {
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  String getOrdinal(int number) {
    if (number % 100 >= 11 && number % 100 <= 13) {
      return '${number}th';
    } else {
      switch (number % 10) {
        case 1:
          return '${number}st';
        case 2:
          return '${number}nd';
        case 3:
          return '${number}rd';
        default:
          return '${number}th';
      }
    }
  }

  String replaceNumber(String input) {
    try {
      String locale = Get.locale?.languageCode ?? "en";
      const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      if (locale == "bn") {
        const bangla = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];
        for (int i = 0; i < english.length; i++) {
          input = input.replaceAll(english[i], bangla[i]);
        }
      }
      /*else if (locale == "hi") {
        const hindi = ['०', '१', '२', '३', '४', '५', '६', '७', '८', '९'];
        for (int i = 0; i < english.length; i++) {
          input = input.replaceAll(english[i], hindi[i]);
        }
      }*/
      return input;
    } catch (e) {
      logger.d('convertTransactionDateFormat:  $e');
      return input;
    }
  }

  String replaceString(String input) {
    try {
      String locale = Get.locale?.languageCode ?? "en";
      const english = [
        'Fail',
        'Pass',
        'Didn\'t Get',
        'Received',
        'You have already taken this quiz! your results',
        'Has the book already been donated?',
      ];
      if (locale == "bn") {
        const bangla = [
          'ফেইল',
          'পাস',
          "পাইনি",
          'গৃহীত',
          'আপনি ইতিমধ্যে এই কুইজে অংশ গ্রহণ করেছেন ! আপনার ফলাফল',
          'বইটি কি ইতিমধ্যে ডোনেট করা হয়েছে?',
        ];
        for (int i = 0; i < english.length; i++) {
          input = input.replaceAll(english[i], bangla[i]);
        }
      }
      return input;
    } catch (e) {
      logger.d('convertTransactionDateFormat:  $e');
      return input;
    }
  }
}
