import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  gotologin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  gotologin() {
    Get.offAllNamed(RoutesOfPages.login);
  }
}
