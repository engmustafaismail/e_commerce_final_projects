import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAuth(
          title: S.of(context).signup,
        ),
        centerTitle: true,
      ),
      body: const SignUpBody(),
    );
  }
}
