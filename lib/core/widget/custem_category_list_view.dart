

import 'package:dalel/features/home/presentation/widget/historical_char_item.dart';
import 'package:flutter/material.dart';

class CustemCategoryListView extends StatelessWidget {
  const CustemCategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustemCategoryListViewItem();
        },
      ),
    );
  }
}
