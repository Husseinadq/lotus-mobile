import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/utils/app_constants.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/app_bar/buttom_nav_bar.dart';
import 'package:lotus/widgets/big_text.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../product/product_cart_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getAllCartItems();
    return Scaffold(
      body: SizedBox(
        height: Dimensions.screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      left: Dimensions.width10,
                      bottom: Dimensions.height20,
                      top: Dimensions.height20,
                    ),
                    child: Text(
                      "My Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.font20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<CartController>(
                        builder: ((cartController) => cartController.isLoaded
                            ? ListView.builder(
                                itemCount: cartController.cartItems.length,
                                itemBuilder: (context, index) =>
                                    ProductCartCard(
                                      item: cartController.cartItems[index],
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
            Container(
              margin: EdgeInsets.only(bottom: 12, left: 20, right: 20),
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Center(
                  child: Get.find<CartController>().totalItem != 0
                      ? BigText(
                          text: "BUY " +
                              "${Get.find<CartController>().totalItem}" +
                              " ITEMS FOR \$" +
                              "${1}",
                          color: AppColors.primary,
                        )
                      : Center(
                          child: CircularProgressIndicator(
                              color: AppColors.primary),
                        )),
            )
          ],
        ),
      ),
      //  bottomNavigationBar:AppConstants.IS_FROM_OUT_ROUT? BottomNavBar():SizedBox(height: 0,),
    );
  }
}
