import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'widgets/forget_body.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAuth(title: S.of(context).forgetpagetitle),
        centerTitle: true,
      ),
      body: const ForgetBody(),
    );
  }
}