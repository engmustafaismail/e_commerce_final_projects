import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  gotoVerFiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  checkEmail() {
    
    if (globalKey.currentState!.validate()) {
      gotoVerFiyCode();
    } 
  }

  @override
  gotoVerFiyCode() {
    Get.offNamed(RoutesOfPages.veryfiycode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
