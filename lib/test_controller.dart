import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/test_data.dart';
import 'package:get/get.dart';

import 'Core/Functions/handling_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late RequestStatus requestStatus;

  getData() async {
    requestStatus = RequestStatus.loading;
    var response = await testData.getData();
    requestStatus = handlingData(response);
    print(requestStatus);
    if (requestStatus == RequestStatus.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        requestStatus = RequestStatus.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
