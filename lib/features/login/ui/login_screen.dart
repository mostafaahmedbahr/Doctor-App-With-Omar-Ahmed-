import 'package:doctor_app_with_omar_ahmed/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:   EdgeInsets.symmetric(vertical: 30.h , horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back",
              style: TextStyle(
                color: AppColors.mainBlue,
                fontWeight: FontWeight.bold,
                fontSize: 24.sp
              ),),
              horizontalSpace(8),
              Text("We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp
                ),),
            ],
          ),
        ),
      ),
    ));
  }
}
