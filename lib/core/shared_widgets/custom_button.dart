import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.height,
      this.width,
      this.btnColor,
      required this.btnText,
      required this.onPressed,
      this.borderColor,
      this.radius})
      : super(key: key);
  final double? height;
  final double? width;

  final Color? btnColor;
  final Color? borderColor;
  final double? radius;
  final Widget btnText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 52,
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
              side: BorderSide(
                width: 1.0,
                color: borderColor ?? AppColors.mainBlue,
              )),
          backgroundColor: btnColor ?? AppColors.mainBlue,
        ),
        child: btnText,
      ),
    );
  }
}
