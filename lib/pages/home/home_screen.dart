import 'package:flutter/material.dart';
import 'package:lotus/widgets/product/product_cart_card.dart';
import 'package:lotus/widgets/slider.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';
import '../../widgets/product/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(),
            SliderWidget(),
            // GetBuilder<RecommendedProductController>(builder: ((controller) => PopularProduct(recommendedProduct: controller,))),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
              
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
