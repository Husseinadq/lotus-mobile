import 'package:flutter/material.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/card_main_data.dart';
import 'package:lotus/widgets/exbandable_text.dart';
import 'package:lotus/widgets/floting_icon.dart';

import '../../widgets/big_text.dart';
import '../../widgets/card_footer.dart';
import '../../widgets/small_text.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: Colors.amber,
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
              FlotingIcon(
                icon: Icons.arrow_back,
                iconColor: AppColors.third,
                size: Dimensions.iconSize35,
                backgroundColor: AppColors.primary,
              ),
              FlotingIcon(
                icon: Icons.shopping_cart,
                iconColor: AppColors.third,
                size: Dimensions.iconSize35,
                backgroundColor: AppColors.primary,
              ),
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
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius25),
                      topRight: Radius.circular(Dimensions.radius25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardMainDate(title: "Product Detai"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              'hi sldkjf df dsfsdf sdfsdfsdf  hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf hi sldkjf df dsfsdf sdfsdfsdf '),
                    ),
                  )
                ],
              ),
            ))
      ]),
      bottomNavigationBar: Container(
        height: Dimensions.height100,
        padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.primaryAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                  left: Dimensions.width10,
                  right: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.primary),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.third,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    BigText(
                      text: '0',
                      color: AppColors.third,
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Icon(
                      Icons.add,
                      color: AppColors.third,
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  bottom: Dimensions.height10,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.third),
              child: BigText(
                text: '\$10 | Add to cart',
                color: AppColors.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
