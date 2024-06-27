import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Core/Services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getBool("OnpPri") == true) {
      return const RouteSettings(name: RoutesOfPages.login);
    }
    return null;
  }
}
