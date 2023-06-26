import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';

class ProductCartCard extends StatelessWidget {
  const ProductCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Image.asset("assets/images/1.png"),
              width: 100,
              height: 120,
              margin: EdgeInsets.only(left: 7, top: 7, bottom: 7),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.primaryAccent,
                  borderRadius: BorderRadius.circular(Dimensions.radius20))),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, left: 5, bottom: 5),
                  child: BigText(
                    text: 'sdfsdfdsfsef ',
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
                              child: BigText(text: "\$99.9"))),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.primaryAccent,
                        ),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Icon(Icons.remove)),
                            BigText(text: '0'),
                            Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Icon(Icons.add)),
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
    );
  }
}
