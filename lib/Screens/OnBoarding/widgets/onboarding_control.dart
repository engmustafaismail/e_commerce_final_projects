import 'package:e_commerce_final_projects/Controller/onboarding_controller.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:e_commerce_final_projects/Screens/OnBoarding/widgets/onboarding_indecator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';
// import 'package:get/get.dart';

class OnBoardingControl extends GetView<OnBoardingControllerImplement> {
  const OnBoardingControl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Indecator(),
        const Spacer(flex: 1),
        GlobalButton(
            onPressed: () {
              controller.next(context);
            },
            text:S.of(context).continu),
        const Spacer(flex: 1)
      ],
    );
  }
}
