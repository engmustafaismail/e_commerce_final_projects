import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertExit {
  static  alerExit(BuildContext context) {
    return Get.defaultDialog(
      title: "warningtitle".tr,
      titleStyle: Theme.of(context).textTheme.titleMedium,
      middleText: "alerexistqusetion".tr,
      middleTextStyle: Theme.of(context).textTheme.bodySmall,
      actions: [
        TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text(
            "yes".tr,
          ),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "no".tr,
          ),
        ),
      ],
    );
  }



  
}
