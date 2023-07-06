import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';

import '../controller/popular_product_controller.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<CategoryController>().getAllCategories();
    return Container(
        height: Dimensions.categorySliderHeigt,
        width: double.maxFinite,
        color: AppColors.primaryAccent,
        child: GetBuilder<CategoryController>(
          builder: (categoriesController) => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoriesController.allCategoriesList.length,
              itemBuilder: ((context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  height: Dimensions.height90,
                  width: Dimensions.height90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          radius: Dimensions.radius35,
                          backgroundColor: AppColors.grey,
                        ),
                      ),
                      Text(
                        categoriesController.allCategoriesList[index].name!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: AppColors.secondry,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )
                    ],
                  ),
                );
              })),
        ));
  }
}
