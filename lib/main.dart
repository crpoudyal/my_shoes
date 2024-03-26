import 'package:flutter/material.dart';
import 'package:my_shoes/bottom_nav/bottom_nav_bar.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding") ?? false;
  runApp(MyApp(onboarding: onboarding));
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Comfortaa',
        useMaterial3: true,
      ),
      home: onboarding ? const BottomNavBar() : const SplashScreen(),
    );
  }
}
