import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {


  var changeLanguage = false.obs;
  var isFocused = false.obs;
  var mobileNumber = ''.obs;

// Method to update focus state
  void setFocus(bool focus) {
    isFocused.value = focus;
  }

  void updateMobileNumber(String value) {
    mobileNumber.value = value; // Update the mobile number
  }
  bool get isNumberValid => mobileNumber.value.length == 11; // Check if length is 11


  login() {
    FormData body = FormData({

    });

  }
}