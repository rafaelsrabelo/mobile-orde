import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:the_king_of_delivery/src/routes/routes.dart';
import 'package:the_king_of_delivery/src/screens/onboarding/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: appKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      routes: Routes.routes,
    );
  }
}
