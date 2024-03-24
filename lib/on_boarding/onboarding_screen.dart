import 'package:flutter/material.dart';
import 'package:my_shoes/bottom_nav/bottom_nav_bar.dart';
import 'package:my_shoes/helper/onboarding_helper.dart';
import 'package:my_shoes/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: PageView.builder(
            itemCount: OnboardingHelper.item.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(OnboardingHelper.item[index].image),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    OnboardingHelper.item[index].title,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    OnboardingHelper.item[index].description,
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            }),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar()));
                  },
                  child: const Text('Skip')),
              SmoothPageIndicator(
                controller: pageController,
                count: OnboardingHelper.item.length,
                onDotClicked: (index) => pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                effect: const WormEffect(
                    activeDotColor: Colors.deepPurple,
                    dotHeight: 12,
                    dotWidth: 12),
              ),
              TextButton(
                  onPressed: () {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: const Text('Next')),
            ],
          ),
        ),
      ),
    );
  }
}
