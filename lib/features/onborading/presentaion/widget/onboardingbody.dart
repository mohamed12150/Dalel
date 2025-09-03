import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyle.dart';

import 'package:dalel/features/onborading/presentaion/widget/custom_smothpage.dart';
import 'package:flutter/material.dart';

class Onboardingwidget extends StatelessWidget {
  Onboardingwidget({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.assetsImages1),
              SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              SizedBox(height: 24),
              Text(
                AppStrings.explore,
                style: CustomTextStyles.poppins300style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
