import 'package:dalel/features/home/presentation/widget/home_sections/Souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widget/home_sections/characters_section.dart';
import 'package:dalel/features/home/presentation/widget/home_sections/headrer_section.dart';
import 'package:dalel/features/home/presentation/widget/home_sections/custem_app_bar_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustemAppBarSection()),
            SliverToBoxAdapter(child: CustemHeaderSection()),
            SliverToBoxAdapter(child: HistoricalCharactersSection()),
            SliverToBoxAdapter(child: HistoricalSouvenirsSection()),
          ],
        ),
      )),
    );
  }
}
