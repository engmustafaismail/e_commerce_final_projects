import 'package:e_commerce_final_projects/Core/Localization/controller/local_controller.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageController controller = Get.put(LanguageController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleAuth(title: S.of(context).chooselan),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            GlobalButton(
              onPressed: () {
                controller.arabicLang();
              },
              text: "عربي",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            GlobalButton(
              onPressed: () {
                controller.englishLang();
              },
              text: "English",
            ),
          ],
        ),
      ),
    );
  }
}
