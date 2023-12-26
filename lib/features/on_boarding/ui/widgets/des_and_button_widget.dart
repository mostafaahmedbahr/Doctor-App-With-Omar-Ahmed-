import 'package:doctor_app_with_omar_ahmed/core/helpers/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/shared_widgets/custom_button.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../login/ui/login_screen.dart';

class DesAndButtonWidget extends StatelessWidget {
  const DesAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        children: [
          Text(AppStrings.onBoardingDes,
              textAlign: TextAlign.center,
              style: TextStyles.font10GreyW400),
          SizedBox(height: 40.h,),
          CustomButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginScreen();
              }));
            //  context.pushNamed(Routes.loginScreen);
            },
            btnText: Text(AppStrings.getStarted,
            style: TextStyles.font16WhiteW600,),
          ),

        ],
      ),
    );
  }
}
