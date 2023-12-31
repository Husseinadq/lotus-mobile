import 'package:flutter/material.dart';
import 'package:lotus/models/product_model.dart';

import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/card_footer.dart';
import '../../widgets/small_text.dart';


class ProductListCard extends StatelessWidget {
  late Product product;
   ProductListCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          bottom: Dimensions.height10),
      child: Row(
        children: [
          Container(
            width: Dimensions.width120,
            height: Dimensions.height120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.primary,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        AppConstants.BASE_URL + "/uploads/" + product.productImage!))),
          ),
          Expanded(
            child: Container(
              height: Dimensions.height100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  bottomRight: Radius.circular(Dimensions.radius20),
                ),
                color: AppColors.primary,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width5, right: Dimensions.width5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Side"),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    SmallText(text: 'Chinese Side'),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardFooter(icon: Icons.circle_sharp, text: 'Normal'),
                        CardFooter(icon: Icons.add_location, text: '1.7km'),
                        CardFooter(icon: Icons.timer_outlined, text: '32min'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
