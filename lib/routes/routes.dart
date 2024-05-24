// ignore_for_file: camel_case_types

import 'package:fitness_app/routes/name_routes.dart';
import 'package:fitness_app/view/homescreen/main_screen.dart';
import 'package:fitness_app/view/login_screen.dart';
import 'package:fitness_app/view/registration_screen.dart';
import 'package:fitness_app/view/signup_screen.dart';
import 'package:fitness_app/view/splash_screen.dart';
import 'package:flutter/material.dart';

class routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //splash screen
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const splashScreen());

      //login screen
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (_) => const loginScreen());

      //signup screen
      case RouteName.signupScreen:
        return MaterialPageRoute(builder: (_) => const signupScreen());

      //userRegistration
      case RouteName.userRegistration:
        return MaterialPageRoute(builder: (_) => const userRegistration());

      //home screen
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const mainpage());

      //
      //
      //
      //default
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("Something Went Wrong"),
              ),
            );
          },
        );
    }
  }
}
