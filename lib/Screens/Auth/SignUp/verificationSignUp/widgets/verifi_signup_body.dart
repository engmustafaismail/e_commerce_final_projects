
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_descrip_auth.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/custom_title_auth.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Constant/gap.dart';
import '../../../../../generated/l10n.dart';
import 'otp_signup.dart';


class VerificationSignupBody extends StatelessWidget {
  const VerificationSignupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Gap.responsivGap(context, .03),

              CustomTitleAuth(title: S.of(context).checkcode),
              // //
              Gap.responsivGap(context, .02),

              CustomDescripAuth(descrip: S.of(context).descripverificcation),

              Gap.responsivGap(context, .06),
              //
              const OtpFeildSignup(),
            ],
          ),
        ),
      ),
    );
  }
}
