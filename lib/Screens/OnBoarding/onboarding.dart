import 'package:e_commerce_final_projects/Controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_Slider.dart';
import 'widgets/onboarding_control.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => OnBoardingControllerImplement());
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: OnBoardingSlider(),
          ),
          Expanded(
            flex: 1,
            child: OnBoardingControl(),
          )
        ],
      )),
    );
  }
}
