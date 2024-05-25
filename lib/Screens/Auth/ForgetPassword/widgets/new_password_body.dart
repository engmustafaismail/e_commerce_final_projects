import 'package:e_commerce_final_projects/Controller/auth/reset_password_controller.dart';
import 'package:e_commerce_final_projects/Core/Functions/validInput.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_descrip_auth.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_password_feild.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/gap.dart';
import '../../../../Core/Shared/global_button.dart';
import '../../../../generated/l10n.dart';

class NewPasswordBody extends StatelessWidget {
  const NewPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: controller.globalKey,
        child: ListView(
          children: [
            Gap.responsivGap(context, .05),
            CustomTitleAuth(title: S.of(context).changepassword),
            //
            Gap.responsivGap(context, .03),

            CustomDescripAuth(descrip: S.of(context).descripnewpassword),
            //
            Gap.responsivGap(context, .05),

            CustomPasswordFeild(
              label: S.of(context).password,
              icon: Icons.lock_outline,
              controller: controller.password,
              hidepassword: true,
              validator: (val) {
                return ValidInpute.passord(val!, 8, 16, context);
              },
               onTapIcon: () {  },
            ),

            Gap.responsivGap(context, .05),

            CustomPasswordFeild(
              label: S.of(context).confirmpassword,
              icon: Icons.confirmation_num_outlined,
              controller: controller.repassword,
              hidepassword: true,
               onTapIcon: () {  },
              validator: (val) {
                return ValidInpute.passord(val!, 8, 16, context);
              },
            ),
            //

            Gap.responsivGap(context, .03),

            GlobalButton(
                onPressed: () {
                  controller.checkEmail();
                },
                text: S.of(context).change),
          ],
        ),
      ),
    );
  }
}
