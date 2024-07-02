import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/on_boarding/data/on_boarding_model.dart';
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
        itemCount: onBoardingDate.length,
        controller: _controller,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(onBoardingDate[index].image),
              CustemSmoothPageIndictor(controller: _controller),
              Text(
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                onBoardingDate[index].title,
                style: AppTextStyles.poppinsTextStyle500Size24,
              ),
              Text(
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                onBoardingDate[index].subTitle,
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
