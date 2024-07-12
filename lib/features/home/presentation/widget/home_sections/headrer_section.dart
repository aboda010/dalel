

import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/widget/custem_header_text.dart';
import 'package:dalel/features/home/presentation/widget/historical_periods_item.dart';
import 'package:flutter/material.dart';

class CustemHeaderSection extends StatelessWidget {
  const CustemHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        CustemHeaderText(
          text: 'Historical periods',
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HistoricalPeriodsItem(
              title: 'Ancient\nEgypt',
              image: Assets.imagesAncient,
            ),
            HistoricalPeriodsItem(
                title: 'Islamic\nEra', image: Assets.imagesIslamic),
          ],
        ),
      ],
    );
  }
}