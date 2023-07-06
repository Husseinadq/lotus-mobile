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
      child: Slidable(
        key: const ValueKey(0),
        endActionPane: ActionPane(motion: ScrollMotion(), children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: Dimensions.width20, vertical: Dimensions.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: Colors.red),
            height: Dimensions.height100,
            width: 100,
            child: IconButton(
              onPressed: (() => Get.find<CartController>()
                  .removeFromCart(item.id!)),
              icon: Icon(Icons.delete),
              color: AppColors.primary,
            ),
          )
        ]),
        child: Card(
          elevation: 1,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Dimensions.width20, vertical: Dimensions.height10),
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
                    margin: EdgeInsets.only(left: 7, top: 7, bottom: 7),
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20)),
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
                                            .updateItemQuantity(
                                                item.id!, false);
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
                                      onPressed: (() =>
                                          Get.find<CartController>()
                                              .updateItemQuantity(
                                                  item.id!, true)),
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
      ),
    );
  }
}
