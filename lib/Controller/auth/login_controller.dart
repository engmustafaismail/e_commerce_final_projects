import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Core/Functions/check_internet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Screens/Auth/ForgetPassword/forget_password_screen.dart';

// ----> Log in <-----
abstract class AuthControllerLogIn extends GetxController {
  login();
  nextSignUp();
  gotoForgetPassword();
}

class AuthControllerLoginImp extends AuthControllerLogIn {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool hidePassword = true;

  showPassword() {
    hidePassword = !hidePassword;
    update();
  }

  @override
  login() {
    if (formkey.currentState!.validate()) {
    } else {}
  }

  @override
  nextSignUp() {
    Get.offNamed(RoutesOfPages.sinup);
    // Get.delete<AuthControllerLoginImp>();
  }

  @override
  void onInit() {
    email = TextEditingController();

    password = TextEditingController();

    super.onInit();
  }

  
  @override
  void dispose() {
    email.dispose();

    password.dispose();

    super.dispose();
  }

  @override
  gotoForgetPassword() {
    Get.off(() => const ForgetPassword());
  }
}
