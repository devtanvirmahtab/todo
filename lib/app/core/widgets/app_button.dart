import 'package:flutter/material.dart';
import 'package:todo/app/core/constants/app_colors.dart';

import '../constants/app_text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.backgroundColor = AppColor.primaryColor,
    this.textColor = AppColor.white,
    required this.text,
    required this.onTap,
    this.radius = 50,
    this.height = 45,
  });

  final Color backgroundColor,textColor;
  final String text;
  final VoidCallback onTap;
  final double radius,height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: text16Style(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
