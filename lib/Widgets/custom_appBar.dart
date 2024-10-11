import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Function onIconPressed;

  CustomAppBar({
    required this.title,
    required this.backgroundColor,
    required this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor, // Custom background color
      leading: IconButton(
        icon: SvgPicture.asset("images/ic_back.svg"), // Leading icon can now be any widget
        onPressed: () => onIconPressed(),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white, // Text color for title
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
      ),
      centerTitle: true, // Center the title
      elevation: 0, // Remove shadow
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h); // Default height
}


