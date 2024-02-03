import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/base/base_screen.dart';
import 'package:the_king_of_delivery/src/screens/auth/sign_in_screen.dart';
import 'package:the_king_of_delivery/src/screens/auth/sign_up_screen.dart';
import 'package:the_king_of_delivery/src/screens/onboarding/onboarding_screen.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/onboarding': (context) => const OnBoardingScreen(),
    '/signin': (context) => const SignInScreen(),
    '/signup': (context) => SignUpScreen(),
    '/base': (context) => BaseScreen()
  };

  static GlobalKey<NavigatorState>? navigatorKey;
}
