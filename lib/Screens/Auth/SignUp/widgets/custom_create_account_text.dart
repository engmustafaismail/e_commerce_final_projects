
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CreatacountText extends StatelessWidget {
  const CreatacountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).createaccount,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
