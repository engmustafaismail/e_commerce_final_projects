import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import 'widgets/custom_success_page.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSuccessPage(
          title: S.of(context).signupsuccess,
          descrip: S.of(context).dessuccessSignUp,
          onPressed: () {},
          buttonlabel: S.of(context).gotohomepage),
    );
  }
}
