import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/add_to_cart_button.dart';
import '../../widgets/floting_icon.dart';
import '../../widgets/small_text.dart';

class SearchProductCard extends StatelessWidget {
  const SearchProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          // color: Colors.red,
          // height: Dimensions.height100,
          child: Stack(children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(Dimensions.radius5),
                        bottomRight: Radius.circular(Dimensions.radius5),
                        topLeft: Radius.circular(Dimensions.radius5),
                        topRight: Radius.circular(Dimensions.radius5))),
                // color: AppColors.primary,
                height: Dimensions.height200,
                // margin: EdgeInsets.only(
                //   left: Dimensions.width5,
                //   right: Dimensions.width5,
                // ),
                child: Image.asset(
                  'assets/images/3.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                // margin: EdgeInsets.only(top: 5, left: 5),
                height: Dimensions.height20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        // bottomLeft: Radius.circular(Dimensions.radius5),
                        bottomRight: Radius.circular(Dimensions.radius5),
                        topLeft: Radius.circular(Dimensions.radius5),
                        // topRight: Radius.circular(Dimensions.radius5)
                      )),
                  child: Container(
                      padding: EdgeInsets.all(2),
                      child: Text("must sell",
                          style: TextStyle(color: AppColors.primary))),
                ),
              ),
            ),
            Positioned(
              top: -10,
              right: 0,
              child: Container(
                // height: Dimensions.height20,
                child: IconButton(
                  onPressed: (() {}),
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: AppColors.secondry,
                    size: 25,
                  ),
                ),
              ),
            )
          ]),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.primary,

                // color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimensions.radius5),
                  bottomRight: Radius.circular(Dimensions.radius5),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "Generic Set OF 5 Tote Bag Beige",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "\$66.55",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.font20),
                  ),
                ),
                // SizedBox(
                //   height: Dimensions.height10,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "\$66.55",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.font15,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "80% OFF",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: Dimensions.font15),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: 10, right: 5),
                    //   child: AddToCartButton(
                    //       width: Dimensions.width100,
                    //       height: Dimensions.height50),
                    // ),
                  ],
                ),

                SizedBox(
                  height: Dimensions.height10,
                ),
               
              ],
            ),
          ),
        )
      ],
    );
  }

  
}
