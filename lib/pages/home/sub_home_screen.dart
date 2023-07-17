import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';

import '../../controller/product_controller.dart';
import '../../widgets/app_bar/back_app_bar.dart';
import '../../widgets/app_bar/buttom_nav_bar.dart';
import '../../widgets/carousel_images.dart';
import '../../widgets/category_list_view.dart';
import '../../widgets/section.dart';
import '../../widgets/text_banner_widget.dart';

class SubHomeScreen extends StatelessWidget {
  const SubHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackAppBar(),
            CarouselImages(size: 180),
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
                  TextBannerWidget(
                    title: "DEALS YOU DON'T WANT TO MISS",
                  ),
                  // TextBannerWidget(title: "title"),
                  GetBuilder<ProductController>(
                      builder: (productController) => Section(
                            title: 'Previously browesed',
                            items: productController.products,
                          )),
                  CarouselImages(size: 100),

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
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
