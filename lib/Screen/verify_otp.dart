import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nagad_ui/Widgets/custom_appBar.dart';
import 'package:nagad_ui/Widgets/custom_rounded_button.dart';

import '../Widgets/verify_textField.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: "Verify",
          backgroundColor: Colors.red,
          onIconPressed: () {
            Get.back();
          }),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 18.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 31.h,
              ),
              Text(
                'Please call to get OTP',
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 28.h,
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 75.h, // Set the container height
                      width: 75.w, // Set the container width
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Circular shape
                        border: Border.all(
                          color: Color(0xFF969696), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: SvgPicture.asset(
                        "images/ic_call_r.svg",
                        height: 42.h, // Image height
                        width: 42.w, // Image width
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                'After a successful request to call center, an OTP will be sent to below number. Please wait.',
                textAlign: TextAlign.center, // Center the text alignment
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF969696),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                '01786-241171',
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.red),
              ),
              SizedBox(
                height: 65.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return Container(
                    width: 40.w,
                    height: 2.h,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomRoundedButton(
                  height: 40.h,
                  width: 240.w,
                  text: "Verify",
                  background: Colors.transparent,
                  borderColor: Colors.red,
                  textColor: Color(0xFF969696),
                  onPressed: (){

                  }),
              SizedBox(height: 35.h,),
              Text(
                'PIN Reset from USSD',
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 35.h,),
              Padding(
                padding:  EdgeInsets.only(left: 4.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dial *167#",
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                  Text(
                    "2. Provide your NID/Photo ID-Number",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4B4B4B),
                    ),
                  ),
                      Text(
                        "3. Enter your last transaction information",
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      ),
                      Text(
                        "4. Set New 4-digit PIN after getting Confirmation SMS",
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF4B4B4B),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 14.sp,),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "For more details,",
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4B4B4B),
                      ),
                    ),
                    SizedBox(width: 8.w,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text(
                        "Click Here",
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEC1C24),
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFFEC1C24),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              ],
          ),
        ),
      ),
    );
  }
}
