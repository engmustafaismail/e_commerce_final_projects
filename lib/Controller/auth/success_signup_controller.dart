import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  gotoHomepage();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  gotoHomepage() {
    Get.offAllNamed(RoutesOfPages.home);
  }
}
