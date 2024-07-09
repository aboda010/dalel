import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/widget/custem_sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 28),
          child: Text(
            'Welcome Back !',
            style: AppTextStyles.poppinsTextStyle600Size28,
          ),
        ),
       const  CustemSignInForm(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account ?',
                style: AppTextStyles.poppinsTextStyle400Size12),
            TextButton(
                onPressed: () {
                  custemPushReplaceNavigate(context, signupView);
                },
                child: Text(
                  'Sign Up',
                  style: AppTextStyles.poppinsTextStyle600Size12,
                )),
          ],
        )
      ],
    );
  }
}
