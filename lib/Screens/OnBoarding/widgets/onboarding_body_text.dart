
import 'package:flutter/material.dart';


class OnBoardingBodyText extends StatelessWidget {
   final String text;
  const OnBoardingBodyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
