// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';

import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';

import '../../models/cart_model.dart';

// ignore: must_be_immutable
class ProductCartCard extends StatelessWidget {
  CartItem item;
  ProductCartCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey,
              blurRadius: 5,
              spreadRadius: 0.0,
              offset: Offset(
                0,
                2,
              ),
            )
          ],
          color: Colors.black),
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(motion: BehindMotion(), children: [
          GestureDetector(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width20,
                    vertical: Dimensions.height30),
                color: AppColors.secondry,
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 30,
                )),
          ),
          GestureDetector(
            onTap: () {
              Get.find<CartController>().removeFromCart(item.id!);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width30,
                  vertical: Dimensions.height30),
              color: AppColors.secondry,
              child: Icon(
                Icons.delete,
                color: AppColors.primary,
                size: 30,
              ),
            ),
          ),
        ]),
        child:
            // Card(
            //   elevation: 1,
            //   color: Colors.red,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(20.0),
            //   ),
            //   child:
            Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width10, vertical: Dimensions.height10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.primary),
          height: Dimensions.height100,
          width: double.maxFinite,
          child: Row(
            children: [
              Container(
                  width: 100,
                  height: 120,
                  // margin: EdgeInsets.only(left: 7, top: 7, bottom: 7),
                  // padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(Dimensions.radius20)),
                  child: Image.network(
                    item.imageUrl.toString(),
                    fit: BoxFit.scaleDown,
                  )),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                      child: BigText(
                        text: item.productName.toString(),
                        color: AppColors.secondryAccent,
                      ),
                    ),
                    Container(
                      width: Dimensions.width200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: BigText(text: "\$${item.price}"))),
                          Container(
                            // margin: EdgeInsets.only(bottom: 5),
                            // padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.primaryAccent,
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                    hoverColor: AppColors.primary,
                                    onPressed: () {
                                      Get.find<CartController>()
                                          .updateItemQuantity(item.id!, false);
                                    },
                                    icon: Icon(Icons.remove)),
                                Center(
                                    child: Get.find<CartController>().isLoaded
                                        ? BigText(
                                            text: item.quantity.toString())
                                        : CircularProgressIndicator(
                                            color: AppColors.secondry,
                                          )),
                                IconButton(
                                    onPressed: (() => Get.find<CartController>()
                                        .updateItemQuantity(item.id!, true)),
                                    icon: Icon(Icons.add)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
