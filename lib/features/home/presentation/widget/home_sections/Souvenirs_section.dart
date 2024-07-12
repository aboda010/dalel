import 'package:dalel/core/widget/custem_category_list_view.dart';
import 'package:dalel/core/widget/custem_header_text.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        CustemHeaderText(text: 'Historical Souvenirs'),
        SizedBox(height: 16),
        CustemCategoryListView(),
      ],
    );
  }
}
