import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widget/custem_forgot_paasword_forem.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 125)),
          SliverToBoxAdapter(
            child: Center(
                child: Text('Forgot Password',
                    style: AppTextStyles.poppinsTextStyle600Size28)),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 235,
              width: 235,
              child: Image.asset(Assets.imagesForgetPassword),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                maxLines: 2,
                textAlign: TextAlign.center,
                'Enter your registered email below to receive \npassword reset instruction',
                style: AppTextStyles.poppinsTextStyle400Size12),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 41)),
          const SliverToBoxAdapter(
            child: CustemForgotPasswordForm(),
          )
        ],
      ),
    );
  }
}
