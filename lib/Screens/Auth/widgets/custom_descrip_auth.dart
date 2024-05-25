import 'package:flutter/material.dart';

class CustomDescripAuth extends StatelessWidget {
  final String descrip;
  const CustomDescripAuth( {
    super.key,
    required this.descrip,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      descrip,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }
}
