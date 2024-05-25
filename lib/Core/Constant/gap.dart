import 'package:flutter/material.dart';

class Gap {
  static SizedBox responsivGap(BuildContext context, double num) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * num,
    );
  }
}
