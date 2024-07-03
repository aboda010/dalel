import 'package:dalel/core/functions/custem_navigate.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widget/custem_bottom.dart';
import 'package:dalel/features/auth/presentation/widget/custem_text_field.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController firstName = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const CustemTextField(
            labelText: 'First Name',
          ),
          const CustemTextField(
            labelText: 'Last Name',
          ),
          const CustemTextField(
            labelText: 'Email Address',
          ),
          const CustemTextField(
            labelText: 'Password',
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
              Text('I have agree to our Terms and Condition',
                  style: AppTextStyles.poppinsTextStyle400Size12),
            ],
          ),
          const SizedBox(height: 65),
          const CustemBottom(text: 'Sign Up'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: AppTextStyles.poppinsTextStyle400Size12),
              TextButton(
                  onPressed: () {
                    custemPushReplaceNavigate(context, loginView);
                  },
                  child: Text(
                    'Sign In',
                    style: AppTextStyles.poppinsTextStyle600Size12,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
