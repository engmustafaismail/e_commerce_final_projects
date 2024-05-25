import 'dart:io';

import 'package:e_commerce_final_projects/Core/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertExit {
  static alerExit(BuildContext context) {
    return Get.defaultDialog(
      title: "warningtitle".tr,
      titleStyle: Theme.of(context).textTheme.titleMedium,
      middleText: "alerexistqusetion".tr,
      middleTextStyle: Theme.of(context).textTheme.bodySmall,
      actions: [
        CustomButtonDialog(
          text: "no".tr,
          onPressed: () {
            Get.back();
          },
        ),
        CustomButtonDialog(
            text: "yes".tr,
            onPressed: () {
              exit(0);
            })
      ],
    );
  }
}

class CustomButtonDialog extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonDialog({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: _buildTextButtonStyle(),
      ),
    );
  }

  static TextStyle _buildTextButtonStyle() {
    return const TextStyle(
      color: AppColors.primary,
      fontSize: 20.5,
      fontWeight: FontWeight.bold,
    );
  }
}
