import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_descrip_auth.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Controller/auth/forget_password_controller.dart';
import '../../../../Core/Constant/gap.dart';
import '../../../../Core/Functions/validInput.dart';
import '../../../../Core/Shared/global_button.dart';
import '../../../../generated/l10n.dart';
import '../../widgets/custom_textformfeild.dart';

class ForgetBody extends StatelessWidget {
  const ForgetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: controller.globalKey,
        child: ListView(
          children: [
            Gap.responsivGap(context, .05),
            CustomTitleAuth(title: S.of(context).checkemail),
            //
            Gap.responsivGap(context, .03),

            CustomDescripAuth(descrip: S.of(context).descriptoenteryouremail),
            //
            Gap.responsivGap(context, .05),

            CustomTextFormAuth(
              controller: controller.email,
              label: S.of(context).email,
              icon: Icons.email_outlined,
              textInputType: TextInputType.emailAddress,
              validator: (val) {
                return ValidInpute.email(val!, context);
              },
            ),
            //

            Gap.responsivGap(context, .03),

            GlobalButton(
                onPressed: () {
                  controller.checkEmail();
                },
                text: S.of(context).check),
          ],
        ),
      ),
    );
  }
}
