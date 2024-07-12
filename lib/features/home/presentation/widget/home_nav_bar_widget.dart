import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/view/cart_view..dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/view/profile_view.dart';
import 'package:dalel/features/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      backgroundColor: AppColors.primaryColor,
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const CartView(),
    const SearchView(),
    const ProfileView()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      inactiveIcon: const Icon(Icons.home_outlined),
      activeColorPrimary: AppColors.deebBrown,
      inactiveColorPrimary: AppColors.deebBrown,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_cart),
      inactiveIcon: const Icon(Icons.shopping_cart_outlined),
      activeColorPrimary: AppColors.deebBrown,
      inactiveColorPrimary: AppColors.deebBrown,
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: AppColors.deebBrown,
      inactiveIcon: const Icon(Icons.search_outlined),
      inactiveColorPrimary: AppColors.deebBrown,
      icon: const Icon(Icons.search),
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: AppColors.deebBrown,
      inactiveIcon: const Icon(Icons.person_outline),
      inactiveColorPrimary: AppColors.deebBrown,
      icon: const Icon(Icons.person),
    ),
  ];
}
