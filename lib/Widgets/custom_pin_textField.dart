import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:nagad_ui/Controller/login_controller.dart';

import '../Controller/pin_controller.dart';

class CustomPinTextField extends StatefulWidget {
  final String imagePath;
  final String labelText;

  // Constructor to accept imagePath and labelText
  CustomPinTextField({
    required this.imagePath,
    required this.labelText,
  });

  @override
  _CustomPinTextFieldState createState() => _CustomPinTextFieldState();
}

class _CustomPinTextFieldState extends State<CustomPinTextField> {
  final PinController pinController = Get.put( PinController());
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Listen for focus changes
    focusNode.addListener(() {
      pinController.setFocus(focusNode.hasFocus);
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
            widget.imagePath, // Use imagePath from constructor
            height: 20.w,
            width: 20.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(
              onChanged: (value) {
                pinController.updateMobileNumber(value);
              },
              obscureText: true,
              focusNode: focusNode,
              obscuringCharacter: '●'.toString(),

              maxLength: 4,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly, // Allow only digits
              ],
              decoration: InputDecoration(
                labelText: widget.labelText, // Use labelText from constructor
                labelStyle: GoogleFonts.inter(
                  fontSize: 15.sp,
                  color: pinController.isFocused.value
                      ? Colors.red
                      : Color(0xFF969696),
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
