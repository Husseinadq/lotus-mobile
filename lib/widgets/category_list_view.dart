import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lotus/controller/category_controller.dart';
import 'package:lotus/pages/home/sub_home_screen.dart';
import 'package:lotus/routes/routes_helper.dart';
import 'package:lotus/utils/colors.dart';
import 'package:lotus/utils/dimensions.dart';
import 'package:lotus/widgets/big_text.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

import '../controller/popular_product_controller.dart';

class CategoryListView extends StatefulWidget {
  CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  ScrollController scrollController = ScrollController();

  double pixels = 0.0;

  @override
  void initState() {
    scrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.find<CategoryController>().getAllCategories();
    return Container(
        height: Dimensions.categorySliderHeigt,
        width: double.maxFinite,
        color: AppColors.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: Dimensions.height180,
              child: GetBuilder<CategoryController>(
                builder: (categoriesController) => GridView.builder(
                    controller: scrollController,
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0),
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    // categoriesController.allCategoriesList.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: 1, top: 0),
                          height: Dimensions.height90,
                          // width: Dimensions.height5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  radius: Dimensions.radius35,
                                  backgroundColor: AppColors.grey,
                                  child: Image.asset('assets/images/2.png'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Test",
                                  // categoriesController
                                  //     .allCategoriesList[index].name!,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: AppColors.secondry,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: ScrollIndicator(
                scrollController: scrollController,
                width: Dimensions.width40,
                height: 5,
                indicatorWidth: Dimensions.width20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.lightgrey),
                indicatorDecoration: BoxDecoration(
                    color: AppColors.secondry,
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ));
  }
}
