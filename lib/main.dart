import 'package:flutter/material.dart';
import 'package:the_king_of_delivery/src/routes/routes.dart';
import 'package:the_king_of_delivery/src/screens/auth/sign_in_screen.dart';
import 'package:the_king_of_delivery/src/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      routes: Routes.routes,
    );
  }
}
