import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/cart_controller.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/controller/popular_product_controller.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/widgets/slider.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';
import '../../widgets/category_list_view.dart';
import '../../widgets/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(),
              SliderWidget(),
              // GetBuilder<RecommendedProductController>(builder: ((controller) => PopularProduct(recommendedProduct: controller,))),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CategoryListView(),
                    // Section(title: 'New'),
                    GetBuilder<ProductController>(
                        builder: (productController) => Section(
                              title: 'Recommended',
                              items: productController.products,
                            )),
                    GetBuilder<ProductController>(
                        builder: (productController) => Section(
                              title: 'Previously browesed',
                              items: productController.products,
                            )),
                    GetBuilder<ProductController>(
                        builder: (productController) => Section(
                              title: 'Trending deals',
                              items: productController.products,
                            )),
                  ],
                ),
              )
            ],
          ),
        ),
       
        );
  }
}
