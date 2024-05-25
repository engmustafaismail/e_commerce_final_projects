import 'package:e_commerce_final_projects/Controller/auth/login_controller.dart';
import 'package:e_commerce_final_projects/Core/Constant/colors.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordLogInText extends StatelessWidget {
  const ForgetPasswordLogInText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ForgetTitle(),
        Spacer(),
        // Text(
        //   S.of(context).rememperme,
        //   style: buildTextStyleForget(),
        // ),
        // Checkbox(
        //   value: true,
        //   onChanged: (value) {},
        //   activeColor: AppColors.primary,
        // )
      ],
    );
  }
}

class ForgetTitle extends StatelessWidget {
  const ForgetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthControllerLoginImp controller = Get.put(AuthControllerLoginImp());
    return TextButton(
      onPressed: () {
        controller.gotoForgetPassword();
      },
      child: Text(
        S.of(context).forgetyourpassword,
        style: buildTextStyleForget(),
      ),
    );
  }
}

TextStyle buildTextStyleForget() {
  return const TextStyle(
    color: AppColors.primary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
