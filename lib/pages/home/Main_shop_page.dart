import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/pages/cart_screen.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/profile/profile_screan.dart';

import '../../routes/routes_helper.dart';
import '../../utils/colors.dart';
import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';

class MainShopPage extends StatefulWidget {
  const MainShopPage({super.key});

  @override
  State<MainShopPage> createState() => _MainShopPageState();
}

class _MainShopPageState extends State<MainShopPage> {
  List<Widget> screens = [
    CartScreen(),
    HomeScreen(),
    HomeScreen(),
   const ProfileScreen(),
    CartScreen()
  ];

  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: screens[_page],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        index: 0,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.category,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.local_offer,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: AppColors.primary,
          ),
        ],
        backgroundColor: AppColors.primary,
        color: AppColors.secondry,
        animationDuration:const Duration(milliseconds: 600),
      ),
    );
  }
}
