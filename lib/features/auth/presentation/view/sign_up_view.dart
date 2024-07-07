import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widget/signup_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 152, bottom: 50),
              child: Text(
                'Welcome !',
                style: AppTextStyles.poppinsTextStyle600Size28,
              ),
            ),
            const SignUpBody(),
          ],
        ),
      ),
    );
  }
}

