import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static final pacifico400Style = TextStyle(
    fontSize: 64,
    color: AppColors.deebBrow,
    fontFamily: 'pacifico',
    fontWeight: FontWeight.w400,
  );
  static final poppinsTextStyle500Size24 = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'poppins',
  );
  static final poppinsTextStyle300Size16 = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w300,
  );
  static final poppinsTextStyle500Size18 = const TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w500,
  );
  static final poppinsTextStyle600Size12 = TextStyle(
    fontSize: 12,
    color: Colors.grey,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w600,
  );
  static final poppinsTextStyle600Size28 = TextStyle(
    fontSize: 28,
    color: Colors.black,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w600,
  );
  static final poppinsTextStyle400Size12 = TextStyle(
    fontSize: 12,
    color: AppColors.deebgrey,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}
