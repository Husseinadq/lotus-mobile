import 'package:flutter/material.dart';
import 'package:lotus/widgets/home_pages_slider.dart';

import '../widgets/popular_product.dart';

class ProductPagePody extends StatefulWidget {
  const ProductPagePody({super.key});

  @override
  State<ProductPagePody> createState() => _ProductPagePodyState();
}

class _ProductPagePodyState extends State<ProductPagePody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //########## Strat home pages slider  ##########//
        HomePagesSlider(),
        //########## End home pages slider  ##########//

        //########## Strat Product Popular Section ##########//
        PopularProduct(),
        //########## End  Product Popular Section ##########//
      ],
    );
  }
}
