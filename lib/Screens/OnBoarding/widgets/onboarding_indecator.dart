import 'package:e_commerce_final_projects/Controller/onboarding_controller.dart';
import 'package:e_commerce_final_projects/Data/DataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/colors.dart';

class Indecator extends GetView<OnBoardingControllerImplement> {
  const Indecator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImplement>(
        init: OnBoardingControllerImplement(),
        builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                 DataStatic.onboardingList(context).length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: controller.currentPage == index ? 21.0 : 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ))
            ],
          );
        });
  }
}
