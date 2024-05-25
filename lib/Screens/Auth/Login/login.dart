import 'package:e_commerce_final_projects/Controller/auth/login_controller.dart';
import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import 'widgets/login_body.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(AuthControllerLogIn);

    return Scaffold(
      appBar: AppBar(
        title: TitleAuth(title: S.of(context).login),
        centerTitle: true,
      ),
      body: const LogInBody(),
    );
  }
}
