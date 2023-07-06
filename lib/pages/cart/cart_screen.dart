import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:lotus/widgets/product/product_cart_card.dart';

import '../../widgets/app_bar/app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getAllCartItems();
    print(Get.find<CartController>().cartItems.length);
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(),
                Container(
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
                Container(
                  height: 400,
                  child: GetBuilder<CartController>(
                      builder: ((cartController) => cartController.isLoaded
                          ? ListView.builder(
                              itemCount: cartController.cartItems.length,
                              itemBuilder: (context, index) => ProductCartCard(
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
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Center(
                child: BigText(
                  text: "check out",
                  color: AppColors.primary,
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBarWidget(index: 4 ,),
    );
  }
}
