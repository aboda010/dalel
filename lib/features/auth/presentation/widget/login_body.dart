import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/auth/presentation/widget/custem_text_field.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const CustemTextFormField(
            labelText: 'Email Address',
          ),
          const CustemTextFormField(
            labelText: 'Password',
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: Text('Forgot Password ?',
                  style: AppTextStyles.poppinsTextStyle600Size12
                      .copyWith(color: Colors.black)),
            ),
          ),
          const SizedBox(height: 55),
          const CustemBottom(text: 'SignIn'),
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
      ),
    );
  }
}
