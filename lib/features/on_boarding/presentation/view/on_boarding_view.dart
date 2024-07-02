import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/on_boarding/presentation/view/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustemNavBar(),
            OnBoardingBody(),
            const CustemBottom(),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}

class CustemNavBar extends StatelessWidget {
  const CustemNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 84, left: 326),
      child: Text(
        'Skip',
        style: TextStyle(
            fontSize: 16, color: AppColors.blak, fontWeight: FontWeight.bold),
      ),
    );
  }
}
