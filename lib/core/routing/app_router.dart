import 'package:doctor_app_with_omar_ahmed/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter
{

  Route generateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_)=>const Placeholder(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_)=>const Placeholder(),
        );
        default :
          return MaterialPageRoute(
            builder: (_)=>Scaffold(
              body: Center(
                child: Text("No Route Founded ${settings.name}"),
              ),
            ),
          );
    }

  }

}