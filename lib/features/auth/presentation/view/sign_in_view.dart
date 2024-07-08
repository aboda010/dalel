import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widget/login_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 290,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 50),
            child: Text(
              'Welcome Back!',
              style: AppTextStyles.poppinsTextStyle600Size28,
            ),
          ),
          const LoginBody(),
        ],
      ),
    );
  }
}
