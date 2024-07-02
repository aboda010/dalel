
import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
