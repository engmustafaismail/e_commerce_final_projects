import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "warningtitle": "تنبيه !",
          "alerexistqusetion": "هل تريد الخروج من التطبيق ؟",
          "yes": "نعم",
          "no": "لا"
        },
        "en": {
          "warningtitle": "Warning",
          "alerexistqusetion": "Do you want to exiting from app ?",
          "yes": "Yes",
          "no": "No"
        },
      };
}
