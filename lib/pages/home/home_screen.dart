import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/product_controller.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/widgets/carousel_images.dart';

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
            CarouselImages(
              size: 180,
            ),
            // SliderWidget(),
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
      floatingActionButton: FloatingActionButton(onPressed: (() {
        // Get.find<UserController>().displayBottomeSheet();
        // Get.replace(SubHomeScreen());
        // Get.offAndToNamed(RouteHelper.getCategories());
        Get.toNamed(RouteHelper.getPersonalDetail());
        // final navigationState = AppConstants.navigationKey.currentState!;
        // navigationState.setPage(0);
      })),
    );
  }
}
