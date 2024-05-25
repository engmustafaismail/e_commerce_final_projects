import 'package:e_commerce_final_projects/Data/DataSource/static.dart';
import 'package:e_commerce_final_projects/Screens/Auth/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../generated/l10n.dart';

abstract class OnBoardingController extends GetxController {
  next(BuildContext context);
  onPageChanged(int index);
}

class OnBoardingControllerImplement extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;

  @override
  onPageChanged(index) {
    currentPage = index;
    update();
  }

  @override
  next(BuildContext context) {
    currentPage++;
    if (currentPage > DataStatic.onboardingList(context).length - 1) {
      Get.offAll(() => const LogIn());
    }

    pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  String changetitlecontrol(BuildContext context) {
    // currentPage++;
    if (currentPage == DataStatic.onboardingList(context).length - 1) {
      update();
      return S.of(context).start;
    } else {
      update();
      return S.of(context).continu;
    }
  }
}
