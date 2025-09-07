import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyle.dart';
import 'package:dalel/features/onborading/data/model/onboarding_model.dart';
import 'package:dalel/features/onborading/presentaion/widget/custom_smothpage.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({super.key});

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: onboardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 249,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onboardingData[index].imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(height: 24),
              Text(
                onboardingData[index].title,
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                onboardingData[index].subTitle,
                style: CustomTextStyles.poppins500style14,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
