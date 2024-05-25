import 'package:e_commerce_final_projects/Controller/auth/verificode_controller_resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/colors.dart';

class OtpFeild extends StatelessWidget {
  const OtpFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    VerificationControllerImp controller = Get.put(VerificationControllerImp());
    return OtpTextField(
      focusedBorderColor: AppColors.primary,
      cursorColor: AppColors.primary,
      borderRadius: BorderRadius.circular(25.5),
      fieldWidth: 55.0,
      fieldHeight: 65.0,
      numberOfFields: 5,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {
        print("$verificationCode***************************************");
        controller.gotoResetPassword();
      },
    );
  }
}
