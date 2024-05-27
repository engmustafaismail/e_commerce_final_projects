import 'package:e_commerce_final_projects/Screens/Auth/SuccessAuth/saccess_reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  gotoSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool hidePassword = true;

  showPassword() {
    hidePassword = !hidePassword;
    update();
  }

  @override
  checkEmail() {
    var formdata = globalKey.currentState;
    if (formdata!.validate()) {
      gotoSuccessResetPassword();
    }
  }

  @override
  gotoSuccessResetPassword() {
    Get.off(
      () => const SuccessResetPassword(),
      transition: Transition.fade,
    );
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }
}
