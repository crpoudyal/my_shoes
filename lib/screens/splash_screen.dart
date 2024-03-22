import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_shoes/bottom_nav/bottom_nav_bar.dart';
import 'package:my_shoes/helper/Image_helper.dart';

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
          MaterialPageRoute(builder: (context) => const BottomNavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                maxRadius: 70,
                child: Image.network(ImageHelper.appIcon),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "My Shoes.",
                style: TextStyle(
                  fontSize: 50,
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
                "100k+ Downloads",
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
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text('Made in Biratnagar'),
            ),
          ],
        ),
      ),
    );
  }
}
