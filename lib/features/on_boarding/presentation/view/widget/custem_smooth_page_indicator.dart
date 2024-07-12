import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustemSmoothPageIndictor extends StatelessWidget {
  const CustemSmoothPageIndictor({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deebBrown,
        dotColor: AppColors.grey,
        dotHeight: 6,
        dotWidth: 10,
      ),
    );
  }
}
