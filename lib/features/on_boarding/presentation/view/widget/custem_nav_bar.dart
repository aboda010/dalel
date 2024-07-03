import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
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
      child: GestureDetector(
        onTap: () {
          CacheHelper().saveData(key: 'IsOnBoardingVisited', value: true);
          custemPushReplaceNavigate(context, signupView);
        },
        child: Text(
          'Skip',
          style: TextStyle(
              fontSize: 16, color: AppColors.blak, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
