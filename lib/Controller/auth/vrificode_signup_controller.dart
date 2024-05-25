import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:get/get.dart';

abstract class VerificationSignUpController extends GetxController {
  checkCode();
  gotoSuccessSignup();
}

class VerificationSignUpControllerImp extends VerificationSignUpController {
  late String verificode;
  @override
  checkCode() {}

  @override
  gotoSuccessSignup() {
    Get.offNamed(RoutesOfPages.successSignup);
  }
}
