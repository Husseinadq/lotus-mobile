// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/routes/routes_helper.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/add_to_cart_button.dart';
import 'package:lotus/widgets/card_main_data.dart';
import 'package:lotus/widgets/exbandable_text.dart';
import 'package:lotus/widgets/floting_icon.dart';
import 'package:lotus/widgets/section.dart';

import '../../widgets/big_text.dart';

class ProductDetail extends StatelessWidget {
  // final int productId;
  ProductDetail({
    Key? key,
    // required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var product = Get.find<PopularProductController>().findById(productId);
    // Get.find<PopularProductController>()
    //     .initProduct(Get.find<CartController>(), product);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(children: [
        //background image
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.height350,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Nike Shoe.png'))),
            )),
        //icon widgets
        Positioned(
          top: Dimensions.height45,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (() {
                  Get.toNamed(RouteHelper.getInitial());
                }),
                child: FlotingIcon(
                  icon: Icons.arrow_back,
                  iconColor: AppColors.secondry,
                  size: Dimensions.iconSize35,
                  backgroundColor: AppColors.primary,
                ),
              ),
              GetBuilder<PopularProductController>(builder: ((controller) {
                return Stack(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Get.toNamed(RouteHelper.cart);
                      }),
                      child: FlotingIcon(
                        icon: Icons.shopping_cart,
                        iconColor: AppColors.secondry,
                        size: Dimensions.iconSize35,
                        backgroundColor: AppColors.primary,
                      ),
                    ),
                    2 >= 1
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Center(
                              child: Stack(children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                Positioned(
                                    right: 4,
                                    top: 1,
                                    child: BigText(
                                      text: "non",
                                      size: 10,
                                      color: AppColors.primary,
                                    ))
                              ]),
                            ),
                          )
                        : Positioned(right: 0, top: 0, child: Text("")),
                  ],
                );
              }))
            ],
          ),
        ),
        //details fo product
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.height350 - Dimensions.height20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  top: Dimensions.height25),
              decoration: BoxDecoration(
                  color: AppColors.primaryAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius25),
                      topRight: Radius.circular(Dimensions.radius25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "text"),
                  // CardMainDate(title: " product.name!"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$99.9"),
                      GestureDetector(
                          onTap: () {
                            // popularProduct.addItem(product);
                            // print("in cart items = " +
                            //     popularProduct.inCardItems.toString());
                          },
                          child: Container(
                            height: Dimensions.height40,
                            width: Dimensions.width130,
                            padding: EdgeInsets.only(
                                top: Dimensions.height10,
                                bottom: Dimensions.height10,
                                left: Dimensions.width10,
                                right: Dimensions.width10),
                            decoration: BoxDecoration(
                                color: AppColors.secondryAccent,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Add To Cart",
                                      style:
                                          TextStyle(color: AppColors.primary)),
                                  Icon(
                                    Icons.shopping_cart,
                                    color: AppColors.primary,
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ))
     
      ]),
    );
  }
}
