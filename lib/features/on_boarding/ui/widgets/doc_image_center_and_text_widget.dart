import 'package:doctor_app_with_omar_ahmed/core/utils/app_strings.dart';
import 'package:doctor_app_with_omar_ahmed/core/utils/app_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/text_styles.dart';
import '../../../../core/utils/app_images.dart';

class DocImageInCenterAndTextWidget extends StatelessWidget {
  const DocImageInCenterAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppSvgs.bigLogo),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                /// هنا تدريج الاولوان حسب ما انت بدات
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14 , 0.4],
            ),
          ),
          child: Image.asset(AppImages.doctor),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(AppStrings.bestDoctorAppointmentApp,
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold.copyWith(
            height: 1.4.h
          ),),
        ),

      ],
    );
  }
}
