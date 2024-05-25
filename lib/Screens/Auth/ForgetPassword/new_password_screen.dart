import 'package:e_commerce_final_projects/Screens/Auth/widgets/title_auth.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'widgets/new_password_body.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAuth(title: S.of(context).newpasswordtitle),
        centerTitle: true,
      ),
      body: const NewPasswordBody(),
    );
  }
}
