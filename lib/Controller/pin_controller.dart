import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PinController extends GetxController {



  var isFocused = false.obs;
  var mobileNumber = ''.obs;

// Method to update focus state
  void setFocus(bool focus) {
    isFocused.value = focus;
  }

  void updateMobileNumber(String value) {
    mobileNumber.value = value;
  }
  bool get isNumberValid => mobileNumber.value.length == 4; // Check if length is 4


  login() {
    FormData body = FormData({

    });

  }
}