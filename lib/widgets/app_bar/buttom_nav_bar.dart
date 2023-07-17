// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/app_constants.dart';

import '../../controller/cart_controller.dart';
import '../../controller/wishlist_controller.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: AppConstants.navigationKey,
      height: Dimensions.height50,
      onTap: (index) {
        setState(() {
          AppConstants.PAGENUMBER = index;
          // switch (index) {
          //   case 0:
          //     AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getMainPage());
          //     break;
          //   case 1:
          //     AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getCategories());
          //     break;
          //   case 2:
          //     AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getCart());
          //     break;
          //   case 3:
          //     //  AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getWishlist());
          //     break;
          //   case 4:
          //     AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getProfile());
          //     break;
          //   default:
          //     AppConstants.IS_FROM_OUT_ROUT = false;
          //     Get.offNamed(RouteHelper.getMainPage());
          //     break;
          // }
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
    );
  }
}
