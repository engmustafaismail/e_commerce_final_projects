import 'package:e_commerce_final_projects/Core/Constant/images_assets.dart';
import 'package:e_commerce_final_projects/Data/Models/onboarding_model.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';

class DataStatic {
  static List<OnBoardingModel> onboardingList(BuildContext context) {
    return [
      OnBoardingModel(
        title: S.of(context).onboardOneTitle,
        image: AppImageAssets.onBoardingImageOne,
        body: S.of(context).onboardingbody1,
      ),
      OnBoardingModel(
        title: S.of(context).onboardTowTitle,
        image: AppImageAssets.onBoardingImageTow,
        body: S.of(context).onboardingbody2,
      ),
      OnBoardingModel(
        title: S.of(context).onboardThreeTitle,
        image: AppImageAssets.onBoardingImageThree,
        body: S.of(context).onboardingbody3,
      ),
      // OnBoardingModel(
      //   title: "Fast Delivery",
      //   image: AppImageAssets.onBoardingImageFoure,
      //   body:
      //       "Reliable And Fast Delivery. We\nDelivery your product the fastest\nway possible.",
      // )
    ];
  }
}
