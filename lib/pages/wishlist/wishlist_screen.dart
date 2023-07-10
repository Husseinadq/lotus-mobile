import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/wishlist_controller.dart';
import 'package:lotus/pages/wishlist/wishlist_card.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../product/product_cart_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<WishlistController>().getAllWishlistItems();
    return Scaffold(
      body: Container(
        height: Dimensions.screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarWidget(),
            Container(height: Dimensions.height50,
              margin: EdgeInsets.only(
                left: Dimensions.width10,
                bottom: Dimensions.height20,
                top: Dimensions.height20,
              ),
              child: Text(
                "My Wishlist",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.font20,
                ),
              ),
            ),
            Expanded(
              child: GetBuilder<WishlistController>(
                  builder: ((wishlistController) => wishlistController
                          .isLoaded
                      ? ListView.builder(
                          itemCount:
                              wishlistController.wishlistItems.length,
                          itemBuilder: (context, index) => WishListCard(
                                item:
                                    wishlistController.wishlistItems[index],
                              ))
                      : Center(
                          child: CircularProgressIndicator(
                              color: AppColors.secondry),
                        ))),
            )

            // ProductCartCard(),
            // ProductCartCard()
          ],
        ),
      ),
    );
  }
}
