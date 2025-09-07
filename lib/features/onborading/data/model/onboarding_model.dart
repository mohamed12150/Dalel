import 'package:dalel/core/utils/app_assets.dart' as app;

class OnboardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

// قائمة البيانات خارج الكلاس
final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    imagePath: app.Assets.assetsImagesPana,
    title: 'Explore',
    subTitle: 'Find the best places to eat, drink, and relax',
  ),
  OnboardingModel(
    imagePath: app.Assets.assetsImages2,
    title: 'Discover',
    subTitle: 'Discover new and exciting places around you',
  ),
  OnboardingModel(
    imagePath: app.Assets.assetsImages3,
    title: 'Enjoy',
    subTitle: 'Enjoy your time at the best places in town',
  ),
];
