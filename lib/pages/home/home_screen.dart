import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/widgets/slider.dart';

import '../../widgets/app_bar/app_bar.dart';
import '../../widgets/app_bar/app_drawer.dart';
import '../../widgets/category_list_view.dart';
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
   
    );
  }
}

