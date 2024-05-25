import 'package:flutter/material.dart';

class CustomTitleAuth extends StatelessWidget {
  final String title;
  const CustomTitleAuth({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}
