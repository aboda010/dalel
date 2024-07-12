
import 'package:dalel/features/home/presentation/widget/custem_app_bar.dart';
import 'package:flutter/material.dart';

class CustemAppBarSection extends StatelessWidget {
  const CustemAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [SizedBox(height: 72), CustemAppBar()],
    );
  }
}