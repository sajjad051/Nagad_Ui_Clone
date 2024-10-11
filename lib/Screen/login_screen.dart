import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nagad_ui/Controller/login_controller.dart';
import 'package:nagad_ui/Widgets/custom_rounded_button.dart';
import 'package:nagad_ui/Widgets/custom_textField.dart';
import 'package:nagad_ui/Widgets/language_button_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 20.w, right: 20.w, top: 28.h, bottom: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LanguageToggleWidget(loginController: loginController),
                SizedBox(
                  height: 32.h,
                ),
                Center(
                    child: SvgPicture.asset(
                  "images/ic_nagad.svg",
                  height: 125.w,
                  width: 163.88.h,
                )),
                SizedBox(
                  height: 14.12.h,
                ),
                Center(
                    child: Text(
                  "Welcome",
                  style: GoogleFonts.inter(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000)),
                )),
                SizedBox(
                  height: 65.h,
                ),
          
                ///Mobile Number TextField
                CustomTextField(),
          
                SizedBox(
                  height: 14.12.h,
                ),
          
                ///custom Button
                Obx(() {
                  return Center(
                    child: CustomRoundedButton(
                      height: 40.0.h,
                      width: 240.0.w,
                      text: 'Next',
                      background: loginController.isNumberValid
                          ? Color(0xFFEC1C24)
                          : Colors.white,
                      borderColor: Colors.red,
                      // shadowColor: Colors.grey, // Optional shadow color
                      onPressed: () {
                        // Add your onPressed logic here
                        print('Button Pressed!');
                      },
                      textColor: loginController.isNumberValid
                          ? Colors.white
                          : Color(0xFF969696),
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w400,
                      borderRadius: 51.r, // Custom border radius
                    ),
                  );
                }),
          
                SizedBox(
                  height: 25.h,
                ),
          
                Center(
                    child: Text(
                  "Not registered yet?",
                  style: GoogleFonts.inter(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF969696)),
                )),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Center(
                      child: Text(
                    "Register Now",
                    style: GoogleFonts.inter(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFEC1C24)),
                  )),
                ),
          
                SizedBox(height: 184.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'images/ic_location.svg',
                            height: 30.h,
                            width: 30.h,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Store Locator',
                            style: GoogleFonts.inter(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF969696)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'images/ic_percentage.svg',
                            height: 30.h,
                            width: 30.h,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Offers',
                            style: GoogleFonts.inter(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF969696)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'images/ic_question.svg',
                            height: 30.h,
                            width: 30.h,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Help',
                            style: GoogleFonts.inter(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF969696)),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
