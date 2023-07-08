import 'package:flutter/material.dart';
import 'package:lotus/controller/recommended_product_controller.dart';

import '../pages/product/product_list_card.dart';

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
