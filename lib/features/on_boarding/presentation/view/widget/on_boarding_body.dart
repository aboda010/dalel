import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/presentation/view/widget/custem_smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({
    super.key,
  });
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        controller: _controller,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(Assets.imagesOnBording1),
              CustemSmoothPageIndictor(controller: _controller),
              Text(
                'Explore The history with \n    Dalel in a smart way',
                style: AppTextStyles.poppinsTextStyle500Size24,
              ),
              Text(
                '    Using our app’s history libraries\nyou can find many historical periods ',
                style: AppTextStyles.poppinsTextStyle300Size16,
              ),
              const SizedBox(height: 25),
            ],
          );
        },
      ),
    );
  }
}
