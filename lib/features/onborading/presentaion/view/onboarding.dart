import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/onborading/presentaion/widget/onboardingbody.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 18),
              Align(
                alignment: Alignment.centerRight,
                child: Text(AppStrings.skip),
              ),
              Onboardingwidget(),
              CustomButton(text: AppStrings.next),
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
