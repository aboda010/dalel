import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustemBottom extends StatelessWidget {
  const CustemBottom({
    super.key, required this.text,this.onTap,this.color
  });
  final String text;
  final void Function()? onTap;
  final Color ?color ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
        child: Text(text, style: AppTextStyles.poppinsTextStyle500Size18 ),
      ),
    );
  }
}
