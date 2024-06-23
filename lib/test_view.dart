import 'package:e_commerce_final_projects/Core/Classes/handling_data_view.dart';
import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  static const String test = "/test";
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("test"),
        centerTitle: true,
      ),
      body: GetBuilder<TestController>(
          init: TestController(),
          builder: (controller) {
            return HandlingDataView(
                requestStatus: controller.requestStatus,
                widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (_, i) => ListTile(
                    title:
                        Text("The name is ${controller.data[i]["user_name"]}"),
                    subtitle: Text(
                      "${controller.data[i]["user_email"]}",
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ));
          }),
    );
  }
}
