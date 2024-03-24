import 'package:my_shoes/helper/image_helper.dart';
import 'package:my_shoes/models/onboarding_model.dart';

class OnboardingHelper {
  static List<OnboardingModel> item = [
    OnboardingModel(
        title: 'United Shoes.',
        description:
            'Proudly presenting a collection of real leather shoes Made in Nepal supporting local craftmanships...',
        image: ImageHelper.appIcon),
    OnboardingModel(
        title: 'United Shoes.',
        description:
            'UNITED REAL LEATHER brings to you 100% pure. Genuine Leather, made in Nepal with Nepali Raw Materials, handmade collection shoes crafted for comfort, style',
        image: ImageHelper.appIcon),
    OnboardingModel(
        title: 'United Shoes.',
        description:
            '100% pure Genuine Leather : Made in Nepal with Nepali Raw Materials; Snug Fit : The shoe is made just for you.',
        image: ImageHelper.appIcon),
  ];
}
