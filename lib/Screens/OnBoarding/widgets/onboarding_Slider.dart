// ignore_for_file: file_names

import 'package:e_commerce_final_projects/Controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Data/DataSource/static/static.dart';
import 'onboarding_body_text.dart';
import 'onboarding_image_style.dart';
import 'onboarding_title.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImplement> {
  const OnBoardingSlider({super.key});

  @override
  Widget build(BuildContext context) {return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: DataStatic.onboardingList(context).length,
      itemBuilder: (context, index) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex:2),
          OnBordingImageStyle(
            image: _buildImageStyle("${DataStatic.onboardingList(context)[index].image}"),
          ),
          OnBoardingTitle(
            title: "${DataStatic.onboardingList(context)[index].title}",
          ),
          const Spacer(flex:1),
          OnBoardingBodyText(
            text: "${DataStatic.onboardingList(context)[index].body}",
          ),
          const Spacer(flex:4)
        ],
      ),
    );
  }

  Image _buildImageStyle(String imagePath) {
    return Image.asset(
      imagePath,
      height: 281.0,
      width: 285.5,
      fit: BoxFit.fill,
    );
  }
}
