import 'package:doctor_app_with_omar_ahmed/core/utils/app_strings.dart';
import 'package:doctor_app_with_omar_ahmed/core/utils/app_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/text_styles.dart';


class LogoAndNameWidget extends StatelessWidget {
  const LogoAndNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppSvgs.logo),
        SizedBox(width: 8.w,),
        Text(AppStrings.docDoc,
        style: TextStyles.font24BlackW700,),
      ],
    );
  }
}
