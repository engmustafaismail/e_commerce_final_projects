import 'package:e_commerce_final_projects/Core/Localization/controller/local_controller.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:e_commerce_final_projects/Screens/OnBoarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagePage extends GetView<LanguageController> {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  string.tr : is from get and it for (Dynamic Language)
            
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.07,
            // ),
            GlobalButton(
                onPressed: () {
                  controller.changLanguage("ar");

                  Get.offAll(() => const OnBoarding());
                },
                text: "عربي"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            GlobalButton(
                onPressed: () {
                  controller.changLanguage("en");
                  Get.offAll(() => const OnBoarding());
                },
                text: "English"),
          ],
        ),
      ),
    );
  }
}
