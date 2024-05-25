import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:get/get.dart';

abstract class VerificationController extends GetxController {
  checkCode();
  gotoResetPassword();
}

class VerificationControllerImp extends VerificationController {
  late String verificode;
  @override
  checkCode() {}

  @override
  gotoResetPassword() {
    Get.offNamed(RoutesOfPages.resetPassword);
  }
}
