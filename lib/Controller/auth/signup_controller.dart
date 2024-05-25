import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Screens/Auth/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class AuthControllerSignUp extends GetxController {
  signUp();
  gotovrificodeSignup();
  nextLogin();
}

class AuthControllerSignUpImp extends AuthControllerSignUp {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  signUp() {
    if (formkey.currentState!.validate()) {
      gotovrificodeSignup();
    }
  }

  @override
  nextLogin() {
    Get.off(() => const LogIn());
  }

  @override
  gotovrificodeSignup() {
    Get.offNamed(RoutesOfPages.veryfiycodesignup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}
