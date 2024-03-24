import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/on_boarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                maxRadius: 70,
                backgroundColor: Colors.transparent,
                child: Image.asset(ImageHelper.appIcon),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  Constants.appName,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Shoes Marketplace",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  Constants.appSlogon,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  '2:08',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  ImageHelper.microsoft,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: const Text(
          Constants.madeIn,
        ),
      ),
    );
  }
}
