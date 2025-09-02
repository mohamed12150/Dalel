import 'package:dalel/core/funcation/navegation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_textstyle.dart';

import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  void delay() {
    Future.delayed(const Duration(seconds: 3), () {
      CustomNavigate(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
