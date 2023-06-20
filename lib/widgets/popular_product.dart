import 'package:flutter/material.dart';
import 'package:lotus/controller/recommended_product_controller.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:lotus/widgets/product/product_list_card.dart';
import 'package:lotus/widgets/small_text.dart';

import '../utils/app_constants.dart';
import 'card_footer.dart';

class PopularProduct extends StatelessWidget {
  RecommendedProductController? recommendedProduct;
  PopularProduct({super.key, required this.recommendedProduct});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: recommendedProduct!.recommendedProductList.length,
      itemBuilder: (context, index) {
        return ProductListCard(product: recommendedProduct!.recommendedProductList[index],);
      },
    );
  }
}
