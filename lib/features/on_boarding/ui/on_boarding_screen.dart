import 'package:doctor_app_with_omar_ahmed/features/on_boarding/ui/widgets/des_and_button_widget.dart';
import 'package:doctor_app_with_omar_ahmed/features/on_boarding/ui/widgets/doc_image_center_and_text_widget.dart';
import 'package:doctor_app_with_omar_ahmed/features/on_boarding/ui/widgets/logo_and_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/text_styles.dart';
import '../../../core/utils/app_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:   EdgeInsets.only(
              top: 30.h,
              bottom: 30.h
            ),
            child: Column(
              children: [
                const LogoAndNameWidget(),
                SizedBox(height: 30.h,),
                const DocImageInCenterAndTextWidget(),
                const DesAndButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
