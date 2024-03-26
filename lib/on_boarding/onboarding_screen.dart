import 'package:flutter/material.dart';
import 'package:my_shoes/bottom_nav/bottom_nav_bar.dart';
import 'package:my_shoes/constants/color_constants.dart';
import 'package:my_shoes/helper/onboarding_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: PageView.builder(
              itemCount: OnboardingHelper.item.length,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = OnboardingHelper.item.length - 1 == index;
                });
              },
              controller: pageController,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset(OnboardingHelper.item[index].image)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      OnboardingHelper.item[index].title,
                      style: const TextStyle(
                          fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Text(
                        OnboardingHelper.item[index].description,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.buttomColor),
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: isLastPage
                          ? getStarted(context)
                          : const Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ),
                        );
                      },
                      child: isLastPage
                          ? const SizedBox()
                          : const Text(
                              'Skip',
                              style: TextStyle(
                                  color: ColorConstants.buttomColor,
                                  fontWeight: FontWeight.w500),
                            ),
                    ),
                  ],
                );
              }),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: OnboardingHelper.item.length,
                onDotClicked: (index) => pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn),
                effect: const WormEffect(
                    activeDotColor: Colors.black, dotHeight: 12, dotWidth: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget getStarted(BuildContext context) {
  return TextButton(
      onPressed: () async {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavBar()));
      },
      child: const Text(
        "Home",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ));
}
