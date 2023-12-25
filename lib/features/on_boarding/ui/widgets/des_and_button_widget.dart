import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/custom_button.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/utils/app_strings.dart';

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
            onPressed: (){},
            btnText: Text(AppStrings.getStarted,
            style: TextStyles.font16WhiteW600,),
          ),

        ],
      ),
    );
  }
}
