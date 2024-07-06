import 'package:e_commerce_final_projects/Core/Classes/crud.dart';
import 'package:e_commerce_final_projects/Core/Classes/request_status.dart';
import 'package:e_commerce_final_projects/Core/Constant/linkes.dart';
import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Data/DataSource/Remote/signup.dart';
import 'package:e_commerce_final_projects/Screens/Auth/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Core/Functions/handling_data.dart';

abstract class AuthControllerSignUp extends GetxController {
  signUp();
  gotovrificodeSignup();
  nextLogin();
}

class AuthControllerSignUpImp extends AuthControllerSignUp {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool hidePassword = true;

  showPassword() {
    hidePassword = !hidePassword;
    update();
  }

  
  SignupData signupData = SignupData(Get.find());
  late RequestStatus requestStatus;
  List data = [];

  @override
  signUp() async {
    if (formkey.currentState!.validate()) {
      try {
        requestStatus = RequestStatus.loading;
        var response = await signupData.post(
          userName.text,
          password.text,
          email.text,
          phone.text,
        );
        requestStatus = handlingData(response);
        if (requestStatus == RequestStatus.success) {
          if (response['status'] == "success") {
            // data.addAll(response['data']);
            gotovrificodeSignup();
          } else {
            requestStatus = RequestStatus.failure;
            Get.dialog(Text("Error : ${response['message']}"));
          }
        }
      } catch (e) {
        requestStatus = RequestStatus.serverFailure;
        Get.dialog(Text("Error : $e"));
      }
      update();
    }
  }
  // @override
  // signUp() async {
  //   if (formkey.currentState!.validate()) {
  //     try {
  //       var response = await http.post(
  //         Uri.parse(AppLinkes.signUp),
  //         body: {
  //           "username": userName.text,
  //           "password": password.text,
  //           "email": email.text,
  //           "phone": phone.text,
  //         },
  //       );
  //       if (response.statusCode == 200) {
  //         try {
  //           print("------------------------------------>>>>${response.body}");
  //           Map responseBody = jsonDecode(response.body);
  //           print(responseBody['status']);
  //           if (responseBody['status'] == "success") {
  //             gotovrificodeSignup();
  //           } else {
  //             Get.dialog(const Text("Error"));
  //           }
  //         } catch (e) {
  //           print(e);
  //         }
  //       }
  //     } catch (e) {}

  //     //   requestStatus = RequestStatus.loading;
  //     //   update();

  //     //   var response = await signupData.post(
  //     //     userName.text,
  //     //     password.text,
  //     //     email.text,
  //     //     phone.text,
  //     //   );

  //     //   response.fold(
  //     //     (error) {
  //     //       requestStatus = RequestStatus.failure;
  //     //       Get.dialog(const Text("Error"));
  //     //     },
  //     //     (data) {
  //     //       requestStatus = handlingData(data);
  //     //       if (requestStatus == RequestStatus.success) {
  //     //         if (data['status'] == "success") {
  //     //           gotovrificodeSignup();
  //     //         } else {
  //     //           Get.dialog(const Text("Error: "));
  //     //         }
  //     //       }
  //     //     },
  //     //   );

  //     //   update();
  //   }
  // }

  @override
  nextLogin() {
    Get.off(() => const LogIn());
  }

  @override
  gotovrificodeSignup() {
    Get.offNamed(RoutesOfPages.veryfiycodesignup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}
