import 'package:doctor_app_with_omar_ahmed/core/routing/app_router.dart';
import 'package:doctor_app_with_omar_ahmed/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';


//ignore: must_be_immutable
class DocApp extends StatelessWidget {
    DocApp({super.key , required this.appRouter});
  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
    // builder: (_ , child) {
    //     return MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       title: 'Doc App',
    //       theme: ThemeData(
    //         primarySwatch: Colors.blue,
    //         textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
    //       ),
    //       home: child,
    //     );
    // },

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
              title: 'Doc App',
              theme: ThemeData(
                primaryColor: AppColors.mainBlue,
                scaffoldBackgroundColor: Colors.white,
              ),
            onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );

  }
}
