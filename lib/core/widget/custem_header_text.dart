
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustemHeaderText extends StatelessWidget {
  const CustemHeaderText({
    super.key,required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      style: AppTextStyles.poppinsTextStyle400Size20,
    );
  }
}