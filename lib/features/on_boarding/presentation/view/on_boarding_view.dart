import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/on_boarding/presentation/view/widget/custem_nav_bar.dart';
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
            const CustemBottom(text: 'Next'),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
