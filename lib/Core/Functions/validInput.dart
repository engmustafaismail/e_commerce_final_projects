import 'package:e_commerce_final_projects/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidInpute {
  static  passord(String val, int min, int max, BuildContext context) {
    if (val.isEmpty) {
      return " ${S.of(context).emptyvalidinput}${S.of(context).password}";
    } 
     if (val.length < min) {
      return "${S.of(context).morecountletteralsvalidinput} $min";
    } 
     if (val.length > max) {
      return "${S.of(context).lesscountletteralsvalidinput} $max";
    }
  }

  static  email(String val, BuildContext context) {
    if (val.isEmpty) {
      return " ${S.of(context).emptyvalidinput}${S.of(context).email}";
    }
    if (!GetUtils.isEmail(val)) {
      return S.of(context).emailvaildinput;
    }
  }

  static  phone(String val, BuildContext context) {
    if (val.isEmpty) {
      return " ${S.of(context).emptyvalidinput}${S.of(context).phone}";
    }
    if (!GetUtils.isPhoneNumber(val)) {
      return S.of(context).phonevalidinput;
    }
  }

  static  username(String val, BuildContext context) {
    if (val.isEmpty) {
      return " ${S.of(context).emptyvalidinput}${S.of(context).username}";
    }
    if (!GetUtils.isUsername(val)) {
      return S.of(context).usernamevalidinput;
    }
  }
}
