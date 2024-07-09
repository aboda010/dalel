import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/on_boarding/data/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/functions/on_boarding.dart';
import 'package:dalel/features/on_boarding/presentation/view/widget/custem_nav_bar.dart';
import 'package:dalel/features/on_boarding/presentation/view/widget/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currnetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustemNavBar(),
            OnBoardingBody(
              onPageChanged: (index) {
                setState(() {});
                currnetIndex = index;
              },
              controller: _controller,
            ),
            currnetIndex == onBoardingDate.length - 1
                ? Column(
                    children: [
                      CustemBottom(
                        text: 'Create An Acount',
                        onTap: () {
                          IsOnBoardingVisited();
                          custemPushReplaceNavigate(context, signupView);
                        },
                      ),
                      const SizedBox(height: 17),
                      GestureDetector(
                          onTap: () {
                            IsOnBoardingVisited();

                            custemPushReplaceNavigate(context, signInView);
                          },
                          child: const Text('Login now'))
                    ],
                  )
                : CustemBottom(
                    color: AppColors.primaryColor,
                    text: 'Next',
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(microseconds: 200),
                          curve: Curves.bounceIn);
                    },
                  ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
