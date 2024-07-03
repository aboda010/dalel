import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({
    super.key,
    required this.labelText,
    this.controller,
  });
  final String labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            labelText,
            style: AppTextStyles.poppinsTextStyle600Size12,
          ),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
          ),
        ),
      ),
    );
  }
}
