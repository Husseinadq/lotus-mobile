// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/wishlist_controller.dart';

import 'package:lotus/pages/cart/cart_screen.dart';
import 'package:lotus/pages/home/home_screen.dart';
import 'package:lotus/pages/profile/profile_screan.dart';
import 'package:lotus/utils/app_constants.dart';
import 'package:lotus/utils/dimensions.dart';

import '../../routes/routes_helper.dart';
import '../../utils/colors.dart';
import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';
import '../../widgets/app_bar/buttom_nav_bar.dart';

class MainShopPage extends StatefulWidget {
  MainShopPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainShopPage> createState() => _MainShopPageState();
}

class _MainShopPageState extends State<MainShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: AppConstants.NAV_BAR_SCREEN[AppConstants.PAGENUMBER],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: AppConstants.navigationKey,
          height: Dimensions.height50,
          onTap: (index) {
            setState(() {
              AppConstants.PAGENUMBER = index;
            });

            // Get.parameters['pageNumber'] = index.toString();
          },
          index: AppConstants.PAGENUMBER,
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
            Stack(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: AppColors.primary,
                ),
                Get.find<CartController>().totalItem > 0
                    ? Positioned(
                        right: 8,
                        top: 4,
                        child: Center(
                            child: Text(
                          Get.find<CartController>().totalItem.toString(),
                          style: TextStyle(
                              color: AppColors.secondry,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )))
                    : Positioned(right: 0, top: 0, child: Text("")),
              ],
            ),
            Stack(children: [
              Icon(
                Icons.favorite,
                size: 30,
                color: AppColors.primary,
              ),
              Get.find<WishlistController>().wishlistItems.length > 0
                  ? Positioned(
                      right: 10,
                      top: 6,
                      child: Center(
                          child: Text(
                        Get.find<WishlistController>()
                            .wishlistItems
                            .length
                            .toString(),
                        style: TextStyle(
                            color: AppColors.secondry,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )))
                  : Positioned(right: 0, top: 0, child: Text("")),
            ]),
            Icon(
              Icons.person,
              size: 30,
              color: AppColors.primary,
            ),
          ],
          backgroundColor: AppColors.primary,
          color: AppColors.secondry,
          animationDuration: const Duration(milliseconds: 600),
        ));
  }
}
