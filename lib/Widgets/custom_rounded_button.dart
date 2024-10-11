import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRoundedButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color background;
  final Color borderColor;
  final Color? shadowColor; // Make this nullable
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final double borderRadius; // New parameter for border radius

  const CustomRoundedButton({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.background,
    required this.borderColor,
    this.shadowColor, // Nullable shadow color
    required this.onPressed,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.w500,
    this.borderRadius = 24.0, // Default border radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)), // Use the customizable border radius
        border: Border.all(
          color: borderColor,
        ),
        boxShadow: shadowColor != null // Apply shadow only if not null
            ? [
          BoxShadow(
            color: shadowColor!,
            blurRadius: 4.0, // Adjust as needed
            offset: Offset(0, 2), // Shadow offset
          ),
        ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius.r)), // Use the customizable border radius
          highlightColor: Colors.transparent,
          onTap: onPressed,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
