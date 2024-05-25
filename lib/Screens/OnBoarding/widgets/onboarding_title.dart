
import 'package:flutter/material.dart';

class OnBoardingTitle extends StatelessWidget {
  final String title;
  const OnBoardingTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}