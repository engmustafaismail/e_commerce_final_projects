import 'package:e_commerce_final_projects/Controller/auth/login_controller.dart';
import 'package:e_commerce_final_projects/Core/Constant/gap.dart';
import 'package:e_commerce_final_projects/Core/Functions/alert_exist_app.dart';
import 'package:e_commerce_final_projects/Core/Functions/validInput.dart';
import 'package:e_commerce_final_projects/Core/Shared/global_button.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_descrip_auth.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_title_auth.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/valid_signinOrSignUp_text.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_password_feild.dart';
import '../../widgets/custom_textformfeild.dart';
import '../../widgets/logoauth.dart';
import 'forget_password_logintext.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    AuthControllerLoginImp controller = Get.put(AuthControllerLoginImp());
    return SafeArea(
        // ignore: deprecated_member_use
        child: WillPopScope(
      onWillPop: () {
        return Future(() => AlertExit.alerExit(context));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25.5),
        child: Center(
          child: Form(
            key: controller.formkey,
            child: ListView(
              children: [
                const LogoAuth(),
                //
                CustomTitleAuth(title: S.of(context).titlelogin),
                //
                Gap.responsivGap(context, .02),
                //
                CustomDescripAuth(descrip: S.of(context).descLogin),
                //
                Gap.responsivGap(context, .07),
                //email  <-----|

                CustomTextFormAuth(
                  validator: (val) {
                    return ValidInpute.email(val!, context);
                  },
                  controller: controller.email,
                  label: S.of(context).email,
                  icon: Icons.email_outlined,
                  textInputType: TextInputType.emailAddress,
                ),
                //
                Gap.responsivGap(context, .03),
                //password  <-----|

                CustomPasswordFeild(
                  validator: (val) {
                    return ValidInpute.passord(val!, 8, 15, context);
                  },
                   onTapIcon: () {  },
                  controller: controller.password,
                  label: S.of(context).password,
                  icon: Icons.lock_outline,
                  hidepassword: true,
                ),
                //
                const ForgetPasswordLogInText(),
                //
                Gap.responsivGap(context, .03),
                //
                GlobalButton(
                  onPressed: () {
                    controller.login();
                  },
                  text: S.of(context).login,
                ),
                //
                Gap.responsivGap(context, .03),
                //
                ValidSigninOrSignUpText(
                  text: S.of(context).nothaveaccount,
                  textbutton: S.of(context).signup,
                  onpressed: () {
                    controller.nextSignUp();
                  },
                ),
                //
                Gap.responsivGap(context, .03),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
