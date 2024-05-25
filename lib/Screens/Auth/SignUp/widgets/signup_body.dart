import 'package:e_commerce_final_projects/Controller/auth/signup_controller.dart';
import 'package:e_commerce_final_projects/Core/Functions/validInput.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_password_feild.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/valid_signinOrSignUp_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/gap.dart';
import '../../../../Core/Functions/alert_exist_app.dart';
import '../../../../generated/l10n.dart';
import '../../widgets/custom_textformfeild.dart';
import 'custom_create_account_text.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    AuthControllerSignUpImp controller = Get.put(AuthControllerSignUpImp());
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () {
          return Future(() => AlertExit.alerExit(context));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.5),
          child: Form(
            key: controller.formkey,
            child: ListView(
              children: [
                //
                Gap.responsivGap(context, .03),
                //
                const CreatacountText(),
                //
                Gap.responsivGap(context, .03),
                //
                CustomTextFormAuth(
                  controller: controller.userName,
                  label: S.of(context).username,
                  icon: Icons.person_add_alt,
                  textInputType: TextInputType.name,
                  validator: (val) {
                    return ValidInpute.username(val!, context);
                  },
                ),
                //
                Gap.responsivGap(context, .03),

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

                CustomTextFormAuth(
                  controller: controller.phone,
                  label: S.of(context).phone,
                  icon: Icons.phone_outlined,
                  textInputType: TextInputType.phone,
                  validator: (val) {
                    return ValidInpute.phone(val!, context);
                  },
                ),
                //
                Gap.responsivGap(context, .03),

                CustomPasswordFeild(
                  controller: controller.password,
                  onTapIcon: () {},
                  label: S.of(context).password,
                  icon: Icons.lock_outline,
                  hidepassword: true,
                  validator: (val) {
                    return ValidInpute.passord(val!, 8, 16, context);
                  },
                ),

                Gap.responsivGap(context, .03),

                GlobalButton(
                    onPressed: () {
                      controller.signUp();
                    },
                    text: S.of(context).signup),

                Gap.responsivGap(context, .03),

                ValidSigninOrSignUpText(
                  text: S.of(context).haveyouaccount,
                  onpressed: () {
                    controller.nextLogin();
                  },
                  textbutton: S.of(context).login,
                )
              ],
            ),
          ),
        ));
  }
}
