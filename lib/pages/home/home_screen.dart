import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/models/category_model.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/widgets/product/product_cart_card.dart';
import 'package:lotus/widgets/slider.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';
import '../../widgets/category_list_view.dart';
import '../../widgets/product/product_card.dart';
import '../../widgets/section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
                children: [
                  CategoryListView(),
                  Section(title: 'New'),
                  Section(title: 'Old'),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CategoryController>().getSingleCategory(1);
          Get.find<CategoryController>().getAllCategories();
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          //Handle button tap
        },
        items: [
          Icon(
            Icons.add,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: AppColors.primary,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: AppColors.primary,
          ),
        ],
        backgroundColor: AppColors.primary,
        color: AppColors.secondry,
      ),
    );
  }
}
