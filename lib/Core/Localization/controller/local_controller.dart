import 'package:e_commerce_final_projects/Core/Constant/theme.dart';
import 'package:e_commerce_final_projects/Core/Services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  late Locale language;

  MyServices myServices = Get.find();

 late ThemeData themeData ;

  changLanguage(String langaugeCode) {
    Locale locale = Locale(langaugeCode);

    myServices.sharedPreferences.setString("lang", langaugeCode);
    themeData = (langaugeCode == "ar") ? arabicTheme : englishTheme;
    Get.changeTheme(themeData);
    Get.updateLocale(locale);
  }

  // late TextDirection textDirection;

  @override
  void onInit() {
    // if (languageSharedPreference == "arabic") {
    //   language = const Locale("arabic");
    // } else if (languageSharedPreference == "english") {
    //   language = const Locale("english");
    // } else {
    //   language = Locale(Get.deviceLocale!.languageCode);
    // }

    String? languageSharedPreference =
        myServices.sharedPreferences.getString("lang");

    switch (languageSharedPreference) {
      case "ar":
        language = const Locale("ar");
        themeData = arabicTheme;
        // textDirection = TextDirection.rtl;
        break;
      case "en":
        language = const Locale("en");
        themeData = englishTheme;
        // textDirection = TextDirection.ltr;
        break;
      default:
        language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
