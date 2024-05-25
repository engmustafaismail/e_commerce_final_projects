import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import 'widgets/verifi_signup_body.dart';

class VerificationCodeSignUpScreen extends StatelessWidget {
  const VerificationCodeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAuth(title: S.of(context).verificcation),
        centerTitle: true,
      ),
      body: const VerificationSignupBody(),
    );
  }
}