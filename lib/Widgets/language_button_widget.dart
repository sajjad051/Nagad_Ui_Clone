import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nagad_ui/Controller/login_controller.dart';

class LanguageToggleWidget extends StatelessWidget {
  final LoginController loginController;

  LanguageToggleWidget({required this.loginController});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Obx(() {
        return Container(
          height: 25.h,
          width: 70.w,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(63.r),
            border: Border.all(
              color: Colors.red,
              width: .5,
            ),
          ),
          child: Row(
            children: [
              // Bengali button
              GestureDetector(
                onTap: () {
                  loginController.changeLanguage.value = false;
                },
                child: Container(
                  width: 34.w, // width adjusted for each button
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63.r),
                      bottomLeft: Radius.circular(63.r),
                    ),
                    color: loginController.changeLanguage.value == false
                        ? Colors.red
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "বাং",
                      style: GoogleFonts.inter(
                        fontSize: 9.sp,
                        color: loginController.changeLanguage.value == false
                            ? Colors.white
                            : Color(0xFFAFAFAF),
                      ),
                    ),
                  ),
                ),
              ),
              // English button
              GestureDetector(
                onTap: () {
                  loginController.changeLanguage.value = true;
                },
                child: Container(
                  width: 35.w, // width adjusted for each button
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(63.r),
                      bottomRight: Radius.circular(63.r),
                    ),
                    color: loginController.changeLanguage.value == true
                        ? Colors.red
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      "ENG",
                      style: GoogleFonts.inter(
                        fontSize: 9.sp,
                        color: loginController.changeLanguage.value == true
                            ? Colors.white
                            : Color(0xFFAFAFAF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
