
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(color: Colors.grey),
          value: isChecked,
          onChanged: (bool? newValue) {
            setState(() {
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
    );
  }
}
