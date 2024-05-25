import 'package:e_commerce_final_projects/Controller/auth/success_reset_controller.dart';
import 'package:e_commerce_final_projects/Screens/Auth/SuccessAuth/widgets/custom_success_page.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      body: CustomSuccessPage(
          title: S.of(context).resetpassSuccess,
          descrip: S.of(context).dessuccessRessetPassword,
          onPressed: () {
            controller.gotologin();
          },
          buttonlabel: S.of(context).gotohomelogin),
    );
  }
}
