import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/floting_icon.dart';
import 'package:lotus/widgets/small_text.dart';

import '../../controller/wishlist_controller.dart';
import '../../widgets/add_to_cart_button.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        margin:
            EdgeInsets.only(left: Dimensions.width3, right: Dimensions.width3),
        padding:
            EdgeInsets.only(left: Dimensions.width2, right: Dimensions.width2),
        height: Dimensions.height300,
        width: Dimensions.width150,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(Dimensions.radius15)),
        child: Column(children: [
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Dimensions.height15,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(Dimensions.radius5),
                          bottomRight: Radius.circular(Dimensions.radius5),
                          topLeft: Radius.circular(Dimensions.radius5),
                          topRight: Radius.circular(Dimensions.radius5))),
                  child:
                      SmallText(text: "must sell", color: AppColors.primary),
                ),
                Positioned(
                  top: 3,
                  child: FlotingIcon(
                    icon: FontAwesomeIcons.heart,
                    backgroundColor: AppColors.primary,
                    iconColor: Colors.grey,
                    size: Dimensions.size30,
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                height: Dimensions.height150,
                margin: EdgeInsets.only(
                    left: Dimensions.width5,
                    right: Dimensions.width5,
                    top: Dimensions.height10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/1.png"))),
              ),
            )
          ]),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text(
                    "Flutter app and the product card and the product card and the product card",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font15),
                    ),
                    Text(
                      "4,949.00",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.font15),
                    ),
                  ],
                ),

                SizedBox(
                  height: Dimensions.height10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                // Text(
                //   "خصم",
                //   style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //       color: Colors.green,
                //       fontSize: Dimensions.font10),
                // ),

                //     Text(
                //       "\$",
                //       style: TextStyle(fontSize: Dimensions.font10),
                //     ),
                //     Text(
                //       "4,799.00",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: Dimensions.font10),
                //     ),
                //     Text(
                //       "%14",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           color: Colors.green,
                //           fontSize: Dimensions.font10),
                //     ),
                //   ],
                // ),
                GestureDetector(onTap: (){
                  Get.find<WishlistController>().addToWishlist(1, 1, 5);
                  print("tap on add to cart");

                },
                  child: AddToCartButton(
                    width: Dimensions.width120,
                    height:Dimensions.height50
                  ),
                )
                // Row(
                //   children: [
                //     Text(
                //       "(641)",
                //       style: TextStyle(fontSize: Dimensions.font10),
                //     ),
                //     Text(
                //       "4.5",
                //       style: TextStyle(
                //           fontSize: Dimensions.font10,
                //           fontWeight: FontWeight.bold,
                //           color: AppColors.third),
                //     ),
                //     Icon(
                //       Icons.star,
                //       color: AppColors.third,
                //       size: Dimensions.size10,
                //     )
                //   ],
                // )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
