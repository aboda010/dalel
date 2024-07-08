import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustemTextFormField extends StatelessWidget {
  const CustemTextFormField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.onFieldSubmitted,
      this.isPasswordField = false,
      this.suffixIcon});
  final String labelText;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool isPasswordField;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, top: 23),
      child: TextFormField(
        obscureText: isPasswordField,
        validator: (value) {
          if (value!.isEmpty) {
            return 'this field is required';
          }
          return null;
        },
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          label: Text(
            labelText,
            style: AppTextStyles.poppinsTextStyle600Size12,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
          ),
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
