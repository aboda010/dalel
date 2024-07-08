import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/auth/presentation/auth_cuibt/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9),
      child: Row(
        children: [
          Checkbox(
            side: const BorderSide(color: Colors.grey),
            value: isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                BlocProvider.of<AuthCubit>(context)
                    .updateTermsAndConditonsCheckBoxValue(newValue: newValue);

                isChecked = newValue!;
              });
            },
          ),
          RichText(
            text: TextSpan(
                text: 'I have agree to our ',
                style: AppTextStyles.poppinsTextStyle400Size12,
                children: [
                  TextSpan(
                    text: 'Terms and Condition',
                    style: AppTextStyles.poppinsTextStyle600Size12
                        .copyWith(decoration: TextDecoration.underline),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
