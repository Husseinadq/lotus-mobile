import 'package:flutter/material.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:lotus/widgets/product/product_cart_card.dart';

import '../widgets/app_bar/app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 20, top: 20),
                child: Text(
                  "My Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ProductCartCard(),
              ProductCartCard()
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
    );
  }
}
