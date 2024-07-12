import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustemCategoryListViewItem extends StatelessWidget {
  const CustemCategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 9, left: 9),
      height: 133,
      width: 74,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Container(
            height: 96,
            width: 74,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              image: DecorationImage(
                image: AssetImage(Assets.imagesSalah),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Salah ElDin',
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.poppinsTextStyle500Size14,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
