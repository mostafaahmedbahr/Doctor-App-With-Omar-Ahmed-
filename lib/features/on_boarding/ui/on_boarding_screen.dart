import 'package:doctor_app_with_omar_ahmed/features/on_boarding/ui/widgets/logo_and_name_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Column(
         children: [
           LogoAndNameWidget(),
         ],
       ),
      ),
    );
  }
}
