import 'package:e_commerce_final_projects/Core/Constant/routes_of_pages.dart';
import 'package:e_commerce_final_projects/Screens/Auth/ForgetPassword/new_password_screen.dart';
import 'package:e_commerce_final_projects/Screens/Auth/Login/login.dart';
import 'package:e_commerce_final_projects/Screens/Auth/SignUp/signup.dart';
import 'package:e_commerce_final_projects/Screens/Auth/SignUp/verificationSignUp/verificationcode_signup.dart';
import 'package:e_commerce_final_projects/Screens/Auth/SuccessAuth/saccess_reset_pass.dart';
import 'package:e_commerce_final_projects/Screens/Auth/SuccessAuth/success_signup.dart';
import 'package:e_commerce_final_projects/Screens/Language/language_page.dart';
import 'package:e_commerce_final_projects/Screens/OnBoarding/onboarding.dart';
import 'package:get/get.dart';

import 'Screens/Auth/ForgetPassword/forget_password_screen.dart';
import 'Screens/Auth/ForgetPassword/verification_code_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: RoutesOfPages.onboarding, page: () => const OnBoarding()),
  //
  GetPage(name: RoutesOfPages.login, page: () => const LogIn()),
  GetPage(name: RoutesOfPages.sinup, page: () => const SignUpScreen()),
  GetPage(
      name: RoutesOfPages.forgetPassword, page: () => const ForgetPassword()),
  GetPage(
      name: RoutesOfPages.veryfiycode, page: () => const VerificationCode()),
  GetPage(name: RoutesOfPages.resetPassword, page: () => const NewPassword()),
  GetPage(
      name: RoutesOfPages.successreset,
      page: () => const SuccessResetPassword()),
  GetPage(name: RoutesOfPages.successSignup, page: () => const SuccessSignUp()),
  GetPage(name: RoutesOfPages.veryfiycodesignup, page: () => const VerificationCodeSignUpScreen()),

  //
  GetPage(name: RoutesOfPages.languagePage, page: () => const LanguagePage()),
];
