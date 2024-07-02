import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.ofWihte,
        body:const Center(
      child: Text('Splash View'),
    ));
  }
}
