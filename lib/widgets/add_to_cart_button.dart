// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AddToCartButton extends StatelessWidget {
  double width;
  double height;
  AddToCartButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height40,
      width: width,
      decoration: BoxDecoration(
          color: AppColors.secondryAccent,
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add To Cart", style: TextStyle(color: AppColors.primary)),
            Icon(
              Icons.shopping_cart,
              color: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}
