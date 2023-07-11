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
                    const CategoryListView(),
                    // Section(title: 'New'),
                    GetBuilder<ProductController>(
                        builder: (productController) => Section(
                              title: 'New',
                              items: productController.products,
                            )),
                    GetBuilder<ProductController>(
                        builder: (productController) => Section(
                              title: 'Old',
                              items: productController.products,
                            )),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: 200,
          height: 40,
          decoration: BoxDecoration(
              color: AppColors.secondry,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Sort",
                        style:
                            TextStyle(color: AppColors.primary, fontSize: 20),
                      ),
// SizedBox(width: 10,),
                      Icon(
                        Icons.filter,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                ),
                VerticalDivider(color: AppColors.primary),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Filter",
                        style:
                            TextStyle(color: AppColors.primary, fontSize: 20),
                      ),
                      // SizedBox(width: 10,),

                      Icon(
                        Icons.filter_alt_outlined,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
