import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/Controller/login_controller.dart';

class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final LoginController loginController = Get.put(LoginController());
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Listen for focus changes
    focusNode.addListener(() {
      loginController.setFocus(focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    focusNode.dispose(); // Dispose of the FocusNode
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        children: [
          SvgPicture.asset(
            "images/ic_call.svg",
            height: 20.w,
            width: 20.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(
              onChanged: (value) {
                loginController.updateMobileNumber(value);
              },
              focusNode: focusNode,
              maxLength: 11,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly, // Allow only digits
              ],
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                labelStyle: GoogleFonts.inter(
                  fontSize: 15.sp,
                  color: loginController.isFocused.value
                      ?    Colors.red : Color(0xFF969696)
                      ,
                  fontWeight: FontWeight.w500,
                ),
                contentPadding: EdgeInsets.only(top: 8.h),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.w,
                  ),
                ),
                counterText: '',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.w,
                  ),
                ),
              ),
              cursorWidth: 1.w,
              cursorHeight: 14.h,
              cursorColor: Colors.red,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
        ],
      );
    });
  }
}
